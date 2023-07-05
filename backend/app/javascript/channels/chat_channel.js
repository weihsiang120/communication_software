import consumer from "channels/consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    var container = document.getElementById('chat-records')
    var textElement =  document.createElement('p')
    textElement.appendChild(document.createTextNode(data))
    container.appendChild(textElement)
  }
});
