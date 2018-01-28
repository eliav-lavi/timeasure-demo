App.reported_methods = App.cable.subscriptions.create "ReportedMethodsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.reported-method').animate({opacity: '0.5'})
    $('#reported-methods-table').prepend('<tr class="reported-method"><td>' + data.event.t0 + '</td><td>' + data.event.method_path + '</td><td>' + data.event.runtime + '</td></tr>');
    if $('.reported-method').length > 10
      $('.reported-method').last().remove()
