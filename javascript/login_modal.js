/* #####################################################################
   #
   #   Project       : Modal Login with jQuery Effects
   #   Author        : Rodrigo Amarante (rodrigockamarante)
   #   Version       : 1.0
   #   Created       : 07/29/2015
   #   Last Change   : 08/04/2015
   #
   ##################################################################### */

$(function() {

    var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $divForms = $('#div-forms');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 2000;

    $('#login_register_btn').click( function () { modalAnimate($formLogin, $formRegister) });
    $('#register_login_btn').click( function () { modalAnimate($formRegister, $formLogin); });
    $('#login_lost_btn').click( function () { modalAnimate($formLogin, $formLost); });
    $('#lost_login_btn').click( function () { modalAnimate($formLost, $formLogin); });
    $('#lost_register_btn').click( function () { modalAnimate($formLost, $formRegister); });
    $('#register_lost_btn').click( function () { modalAnimate($formRegister, $formLost); });

    function modalAnimate ($oldForm, $newForm) {
        var $oldH = $oldForm.height();
        var $newH = $newForm.height();
        $divForms.css("height",$oldH);
        $oldForm.fadeToggle($modalAnimateTime, function(){
            $divForms.animate({height: $newH}, $modalAnimateTime, function(){
                $newForm.fadeToggle($modalAnimateTime);
            });
        });
    }
    
    $('#register-form :button').on('click', checkFields);
    
});

function checkFields() {
    let token = $('#signup-token').val();
    let firstName = $('#register_name1').val();
    let lastName = $('#register_name2').val();
    let username = $('#register_username').val();
    let password = $('#register_password').val();
    let passwordRepeat = $('#register_password_repeat').val();
    let email = $('#register_email').val();

    console.log($('#register-form .modal-body').find('span'));
    $('#register-form').find('span').remove();

    let errors = [];
    if (username.length < 4)
        errors.push({
            'error': 'register_username',
            'message': 'A username must be least 4 characters long.'
        });

    if (password.length < 4)
        errors.push({
            'error': 'register_password',
            'message': 'A password must be at least 4 characters long.'
        });

    if (password != passwordRepeat)
        errors.push({
            'error': 'register_password_repeat',
            'message': 'Passwords do not match.'
        });

    if (!email.length)
        errors.push({
            'error': 'register_email',
            'message': 'An email field must be provided.'
        });

    if (!firstName.length)
        errors.push({
            'error': 'register_name1',
            'message': 'A first name must be provided'
        });
        
    if (!lastName.length)
        errors.push({
            'error': 'register_name2',
            'message': 'A last name must be provided'
        });

    /* Check for client side errors. Only submit form if there are no such errors */
    if (errors.length) {
        showErrors(errors);
        return false;
    }

    $.ajax('../actions/sign_up.php', {
        data: {
            // 'signup-token': token,
            'username': username,
            'password': password,
            'password-repeat': passwordRepeat,
            'email': email,
            'first-name': firstName,
            'last-name': lastName
        },
        method: 'POST',
        dataType: 'json'
    }).done(function (response) {
        if (response === true)
            window.location.reload(true);
        else {
            showErrors(response);
        }
    });
}

function showErrors(errors) {
    for (let error of errors) {
            $('#' + error['error']).after('<span class="error"><i class="fa fa-times"></i>' + error['message'] + '</span>');
        }

    // let rows = $('.column:first').find('input').length;

    // for (let i = 0; i < rows; i++) {
    //     if ($('.column').find('input:nth-of-type(' + i + ')').next('span').length === 1)
    //         $('.column').find('input:nth-of-type(' + i + ') + :not(span)').before('<span><br></span>');
    // }
}
