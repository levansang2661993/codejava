$(document).ready(function () {

    var redirect = function(){
        window.location = 'success.html';
    };

    $('#form').submit(function(e){
        var valid = true;
        var email_check = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$/i;
        var message = '';
        console.log(message);
        var checkEmail = function isValidEmail(emailAddress) {
            var pattern = new RegExp(email_check);
            return pattern.test(emailAddress);
        };
        var errorElement = $('#email');

        if (!checkEmail($('#email').val())) {
            valid = false;
            errorElement = $('#email');
            message += '\nInvalid email';
        }
        if ($('#password').val() == '') {
            valid = false;
            console.log($('#password').val());
            if (errorElement.length)
                errorElement = $('password');
            message += '\nWrong password';
        }

        if (!($('#password').val() === $('#confirmpassword').val())) {
            valid = false;
            if (errorElement.length)
                errorElement = $('#confirmpassword');
            message += '\nPlease re-enter password';
        }

        if ($('#fullname').val() == '') {
            valid = false;
            if (errorElement.length)
                errorElement = $('#fullname');
            message += '\nFullname must not be empty';
        }

        console.log($('#country').val());
        console.log($('#age').val());
        console.log($('#password').val());
        console.log($('#confirmpassword').val());
        if ($('#country').val() == '') {
            valid = false;
            if (errorElement.length)
                errorElement = $('#country');
            message += '\nPlease select a country';
        }

        if ($('#age').val() == '') {
            valid = false;
            if (errorElement.length)
                errorElement = $('#age');
            message += '\nPlease select age';
        }


        if (valid) {
            redirect();
        } else {
            console.log('false');
            errorElement.focus();
            alert(message);
        }
        e.preventDefault();
        return false;
    });

    $('#submit').click(function(){
        $('#form').submit();
    });

    $('input:text').focus(
        function () {
            $(this).css({'background-color': 'pink'});
        });

    $('input:password').focus(
        function () {
            $(this).css({'background-color': 'pink'});
        });
    $('#address').focus(
        function () {
            $(this).css({'background-color': 'pink'});
        });

    $('input:text').blur(
        function () {
            $(this).css({'background-color': 'white'});
        });

    $('input:password').blur(
        function () {
            $(this).css({'background-color': 'white'});
        });
    $('#address').blur(
        function () {
            $(this).css({'background-color': 'white'});
        });


});