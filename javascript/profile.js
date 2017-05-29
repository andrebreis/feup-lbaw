$(function() {
  
  $('#settings-form :button').on('click', validateSettings);
  
});

function validateSettings() {
  let newPassword = $('#newPassword').val();
  let newPasswordRepeat = $('#newPasswordRepeat').val();

  let newFirstName = $('#newFirstName').val();
  let newLastName = $('#newLastName').val();
  let newJob = $('#newJob').val();
  
  //let newPicture = TODO: Deal with this later
  
  $('#settings-form').find('.error').remove();
    
  let errors = [];

  if (newPassword.length < 4)
      errors.push({
          'error': 'newPassword',
          'message': 'A password must be at least 4 characters long.'
      });

 
  if(newPasswordRepeat.length < 4)
  errors.push({
      'error': 'newPasswordRepeat',
      'message': 'A password must be at least 4 characters long.'
  });
  else if (newPassword != newPasswordRepeat)
      errors.push({
          'error': 'newPasswordRepeat',
          'message': 'Passwords do not match.'
      });

  if (!newFirstName.length || !newLastName.length)
      errors.push({
          'error': 'newLastName',
          'message': 'At least two names must be provided'
      });
      
  if (!newJob.length)
      errors.push({
          'error': 'newJob',
          'message': 'A job name must be provided'
      });
      
      
  if(errors.length == 4) {
      showErrors(errors);
      return false;
  }
  
  // console.log("sending ajax...");
  // $.ajax('../actions/update_profile.php', {
  //     data: {
  //         // 'signup-token': token,
  //         'newPassword': newPassword,
  //         'newPasswordRepeat': newPasswordRepeat,
  //         'newFirstName': newFirstName,
  //         'newLastName': newLastName,
  //         'newJob': newJob
  //     },
  //     method: 'POST',
  //     dataType: 'json'
  // }).done(function (response) {
  //   console.log("received response");
  //       window.location.reload(true);
  // });

}

function showErrors(errors) {
    for (let error of errors) {
            $('#' + error['error']).after('<span class="error"><i class="fa fa-times"></i>' + error['message'] + '</span>');
        }
      }