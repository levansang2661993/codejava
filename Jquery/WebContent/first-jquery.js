$(document).ready(function() {
	$('.text').addClass('important');
});

$(document).ready(function() {
	$('#nav > li').addClass('highlight');
});

$(document).ready(function() {
	$('#nav > li').addClass('highlight');
	$('#nav li:not(.highlight)').addClass('background');
});

$(document).ready(function() {
	$('a[href^=mailto:]').addClass('email');
});

$(document).ready(function() {
	$('a[href$=.pdf]').addClass('ebook');
});

$(document).ready(function() {
	$('a[href^=mailto:]').addClass('mailto');
	$('a[href$=.pdf]').addClass('pdflink');
	$('a[href^=http] [href*=jquery]').addClass('hyperlink');
});

$(document).ready(function() {
	$('tr:nth-child(even)').addClass('alt');
	$('td:contains(Bruce Willis)').addClass('red');
});

$(document).ready(function() {
	$('td:contains(Seagal)').nextAll().addClass('red');
});

$(document).ready(function() {
	$('td:contains(Bruce Willis)').nextAll().andSelf().addClass('red');
});

$(document).ready(function() {
	$('td:contains(Armageddon)').parent().children().addClass('yellow');
});

$("P").click(function() {
	alert($(this).html())
});
