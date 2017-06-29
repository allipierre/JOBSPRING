"use strict";
$(document).ready(function() {
	$.ajax({
		url : "https://apex.oracle.com/pls/apex/pierrealli/hr/employees/"
	}).then(function(data) {
		for (var i = 0; i < data.items.length; i++) {
			$('.ename').append(data.items[i].ename);
			$('.empno').append(data.items[i].empno);
		}
	});
});

function AjaxSucceeded(result) {
	swal("Deleted!", "Your imaginary file has been deleted.", "success");
}

function AjaxSucceedede(result) {
	swal("Updated!", "Your changes are succefully saved", "success");
}
function AjaxFailed(result) {
	swal("Deleted!", "Your imaginary file has been deleted.", "success");
}

function AjaxError(result) {
	swal('Oops...', 'Something went wrong!', 'error')
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
            if ($('#covere').val().trim().length>20) {


                var messageText = $('#covere').val();
                var messageTitle = $('#title').text();
                var userTrom = $('#userfrom').text();
                var userTo = $('#userto').text();
                var emailData = {
                    "covere": messageText,
                    "title": messageTitle,
                    "username": userTrom,
                    "usernameto": userTo
                }
                showProgressBar();
                
                $.ajax({
                    type: "POST",
                    url: "/emailsend?" + $.param(emailData),
                    contentType: 'application/json'

                }).done(function(msg) {

                    alertSuccess();
                }).fail(function() {
                    alertError();

                });
           
    }
    else if($('#covere').val().trim().length<20 && $('#covere').val().trim().length>1){
    	alertErrorMessageLange();
    }else{
    	alertErrorMessage();
    }
    });
}

var alertSuccess = function() {
    swal("Great job!", "Your message is send successfully!", "success");
}

var alertError = function() {
    swal('Oops...', 'Something went wrong!', 'error');
}

var alertErrorMessage = function() {
    swal('Oops...', 'Please enter a Message !', 'error');
}

var alertErrorMessageLange = function() {
    swal('Oops...', 'you must enter a minimal of 20 charaters !', 'error');
}

var showProgressBar= function(){
		var bar = new ProgressBar.Circle(coveren, {
			  color: '#FFEA82',
			  trailColor: '#eee',
			  trailWidth: 1,
			  duration: 1400,
			  easing: 'bounce',
			  strokeWidth: 6,
			  from: {color: '#FFEA82', a:0},
			  to: {color: '#ED6A5A', a:1},
			  // Set default step function for all animate calls
			  step: function(state, circle) {
			    circle.path.setAttribute('stroke', state.color);
			  }
			});

			bar.animate(1.0);  // Number from 0.0 to 1.0

}