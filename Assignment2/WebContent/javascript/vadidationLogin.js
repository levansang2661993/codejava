$().ready(function() {
    $('#form').submit(function () {
        console.log('Test');
        var valid = true;
        var email_check = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$/i;
        var checkEmail = function isValidEmail(emailAddress) {
            var pattern = new RegExp(email_check);
            return pattern.test(emailAddress);
        };
        if (checkEmail($('#email')) || $('#email') != 'hnaptech@aptech.com') {
            valid = false;
        }
        if ($('#password') == '' || $('#password') != '123') {
            valid = false;
        }
        if (valid) {
            console.log('true');
            alert('Welcome');
        } else {
            console.log('true');
            alert('Please register');
        }

    });
});