var MessageList = React.createClass({
  renderMessage: function() {
    return this.props.message.map(function(message) {})
  },

  render: function() {
    var messageComponents = this.renderMessages()
    return (
      <div className="message-list">
        { messageComponents }
      </div>
      );
  }
});
