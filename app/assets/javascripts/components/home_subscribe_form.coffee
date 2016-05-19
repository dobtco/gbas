embedToken = '3xSwgvNRrK8A7cEv'

$(document).on 'submit', '.home_subscribe_form', (e) ->
  e.preventDefault()
  $form = $(@)
  email = $form.find('input').val()
  return unless email

  $btn = $form.find('button')
  $btn.button('loading')

  $.ajax
    url: 'https://screendoor.dobt.co/api/form_renderer/save'
    type: 'post'
    dataType: 'json'
    data:
      v: 0
      submit: true
      project_id: embedToken
      raw_responses:
        '33279': email
    success: (data) ->
      Dvl.Flash('success', "Great! We'll be in touch!")
    error: ->
      Dvl.Flash('error', 'Sorry, an error occured. Please try again later!')
      console.log 'error'
    complete: ->
      $form[0].reset()
      $btn.button('reset')
