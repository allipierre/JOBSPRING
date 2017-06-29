"use strict";
$(document).ready(function() {
    $.ajax({
        url: "https://apex.oracle.com/pls/apex/pierrealli/hr/employees/"
    }).then(function(data) {
       for(i=0; i<data.items.length;i++) {
       $('.ename').append(data.items[i].ename);
       $('.empno').append(data.items[i].empno);
       }
    });
});


function AjaxSucceeded(result) {
  swal("Deleted!",
  "Your imaginary file has been deleted.",
  "success");
}


function AjaxSucceedede(result) {
  swal("Updated!",
  "Your changes are succefully saved",
  "success");
}
function AjaxFailed(result) {
  swal("Deleted!",
  "Your imaginary file has been deleted.",
  "success");
}

function AjaxError(result) {
  swal(
  'Oops...',
  'Something went wrong!',
  'error'
)
}


function myFunction() {
    var x = document.getElementById("pana");
    if (x.className === "navbar-list") {
        x.className += " responsive";
    } else {
        x.className = "navbar-list";
    }
}



var sendMessage = function() {
	$("#vuta").on("click", function(e) {
		var messageText = $('#covere').val();
		var messageTitle = $('#title').text();
		var userTrom = $('#userfrom').text();
		var userTo = $('#userto').text();
		var emailData = {
			"covere" : messageText,
			"title"  : messageTitle,
			"username" : userTrom,
			"usernameto" : userTo
		}

		$.ajax({
			type : "POST",
			url : "/emailsend?" + $.param(emailData),
			contentType : 'application/json'

		}).done(function(msg) {

			alertSuccess();

		});
	});
}

var alertSuccess=function() {
	swal("Good job!", "You clicked the button!", "success");
}
