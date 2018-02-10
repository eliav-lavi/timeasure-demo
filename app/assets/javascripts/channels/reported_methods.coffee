App.reported_methods = App.cable.subscriptions.create "ReportedMethodsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.reported-method').fadeTo(1000, 0.2)
    $.each data.events, (i, event) ->
      $('#reported-methods-table').prepend '<tr class="reported-method"><td>' + event.klass_name + '</td><td>' + event.method_name + '</td><td>' + event.call_count + '</td><td>' + event.runtime_sum + '</td></tr>'
      return
    if $('.reported-method').length > 10
      $('.reported-method').slice(11, -1).remove()
