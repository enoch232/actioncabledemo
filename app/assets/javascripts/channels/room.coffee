App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    alert("connected")
  disconnected: ->
    # Called when the subscription has been terminated by the server
    alert("disconnected")
  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('.messages').append data
  speak: (message) ->
    @perform 'speak', message:message
