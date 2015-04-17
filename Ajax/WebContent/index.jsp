<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
var isIE = false;
var req;
var messageHash = -1;
var targetId = -1;
var centerCell;
var size=40;
var increment = 100/size;

function pollTaskmaster() {
    var url = "task?messageHash=" + escape(messageHash) + "&targetId=" + targetId;
    initRequest(url);
    req.onreadystatechange = processPollRequest;
    req.send(null);
}

function initRequest(url) {
    if (window.XMLHttpRequest) {
        req = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        isIE = true;
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    req.open("GET", url, true);
}

function submitTask() {
    var url = "task?action=startTask";
    var bttn = window.document.getElementById("taskbutton");
    bttn.disabled = true;
    initRequest(url);
    // set callback function
    req.onreadystatechange = processInitialRequest;
    req.send(null);
}

function processPollRequest() {
    if (req.readyState == 4) {
        if (req.status == 200) {
            var item = req.responseXML.getElementsByTagName("message")[0];
            var message = item.firstChild.nodeValue;
            showProgress(message);
            messageHash = message;           
        } else {
            window.status = "No Update for " + targetId;
        }
        window.status = "Processing requestId=" + targetId + " value=" + messageHash;    
        if (messageHash < 100) {
            setTimeout("pollTaskmaster()", 5000);
        } else {
            setTimeout("complete()", 2500);

        }
    }
}

function complete() {
    var idiv = window.document.getElementById("progress");
    idiv.innerHTML = "Complete";
    window.status = "Task Complete";
    var bttn = window.document.getElementById("taskbutton");
    bttn.disabled = false;
}

// callback function for intial request to schedule a task
function processInitialRequest() {
    if (req.readyState == 4) {
        if (req.status == 200) {
            var item = req.responseXML.getElementsByTagName("message")[0];
            var message = item.firstChild.nodeValue;
            // the initial requests gets the targetId
            targetId = message;
            messageHash = 0;
            window.status = "";
            createProgressBar();
            showProgress(0);
        }
        var idiv = window.document.getElementById("task_id");
        idiv.innerHTML = "Task ID=" + targetId;
        // do the initial poll in 2 seconds
        setTimeout("pollTaskmaster()", 2000);
    }
}

// create the progress bar
function createProgressBar() {
    var centerCellName;
    var tableText = "";
    for (x = 0; x < size; x++) {
      tableText += "<td id=\"progress_" + x + "\" width=\"10\" height=\"10\" bgcolor=\"blue\"/>";
      if (x == (size/2)) {
          centerCellName = "progress_" + x;
      }
    }
    var idiv = window.document.getElementById("progress");
    idiv.innerHTML = "<table with=\"100\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr>" + tableText + "</tr></table>";
    centerCell = window.document.getElementById(centerCellName);
}

// show the current percentage
function showProgress(percentage) {
    var percentageText = "";
    if (percentage < 10) {
        percentageText = "&nbsp;" + percentage;
    } else {
        percentageText = percentage;
    }
    centerCell.innerHTML = "<font color=\"white\">" + percentageText + "%</font>";
    var tableText = "";
    for (x = 0; x < size; x++) {
      var cell = window.document.getElementById("progress_" + x);
      if ((cell) && percentage/x < increment) {
        cell.style.backgroundColor = "blue";
      } else {
        cell.style.backgroundColor = "red";
      }      
    }
}
</script>
 <title>Progress Bar using Asynchronous JavaScript and XML (AJAX)</title>
</head>
<body>
 <h1>Progress Bar using Asynchronous JavaScript and XML (AJAX)</h1>
 <hr/>
 <p>
 This example shows how you can use AJAX to track the progress of a server-side operation. Clicking  the
 &quot;Submit Task&quot; button creates an event that initiates a task. First the client negotiates a task ID with the
TaskServlet after which the progress of that task will be displayed  on this page. This page polls the TaskServlet
every 2.5 seconds for the status of the task until the task is complete. The TaskServlet provides a simple timer based operation to simulate a server-side workload.
 </p>


<form>
   <input id="taskbutton" type="button" name="submittask" value="Submit Task"  onclick="submitTask();" />
</form>
<div id="task_id"></div><br/>
<div id="progress"></div>
</body>
</html>