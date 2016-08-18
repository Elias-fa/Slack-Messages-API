var MessageList = React.createClass({
  renderMessages: function() {
    return this.props.messages.map(function(message) {
      return(<Message key={ message.id } data={ message } />)
    })
  },

  render: function() {
    var messageComponents = this.renderMessages()
    return(
      <div className="message-list">
        { messageComponents }
      </div>
    );
  }
});
