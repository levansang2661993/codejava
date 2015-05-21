/**
 * 
 */
$(document).ready(
  function () {
    $( "#datepicker" ).datepicker({
      changeMonth: true,//this option for allowing user to select month
      changeYear: true //this option for allowing user to select from year range
    });
    $( "#dateflag" ).datepicker({
        changeMonth: true,//this option for allowing user to select month
        changeYear: true //this option for allowing user to select from year range
      });
    
    $("#lastnegotiated").datepicker({
    	changeMonth: true,
    	changeYear: true
    });
    $("#renegotiated").datepicker({
    	changeMonth: true,
    	changeYear: true
    });
  }
);