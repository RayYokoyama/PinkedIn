import consumer from "./consumer"

$(function() {
  const chatChannel = 
    consumer.subscriptions.create(
      {
        channel: 'RoomChannel', room: $('#messages').data('room_id')
      },
      {
        connected() {
          // Called when the subscription is ready for use on the server
        },

        disconnected() {
          // Called when the subscription has been terminated by the server
        },

        received: function(data) {
          return $('#messages').append(data['message']);
        },

        speak: function(message) {
          return this.perform('speak', {
            message: message
          });
        }
      }
    );

  $('#send_btn').on('click', () =>  {
    const text = $('input[data-behavior="room_speaker"]').val();
    chatChannel.speak(text);
    event.target.value = '';
    return event.preventDefault();
  });
});
