var MessagesContainer = React.createClass({
  getInitialState () {
    return {
      messages: [],
    }
  },

  addMessage (message) {
    const url = `/api/channels/${this.props.channelId}/messages`
    const data = { message: { body: message }}
    const request = $.ajax({
      url: url,
      data: data,
      dataType: 'json',
      method: 'POST'
    })
  },

  fetchMessages () {
    const url = `/api/channels/${this.props.channelId}/messages`
    const request = $.get(url)

    request.done((data) => {
      this.setState({ messages: data.messages })
    })
  },

  componentDidMount () {
    this.fetchMessages()
    this.handle = setInterval(() => { this.fetchMessages() }, 3000)
  },

  componentWillUnmount () {
    clearInterval(this.handle)
  },

  render () {
    return(
      <div>
        <MessageList messages={ this.state.messages } />
        <MessageForm onMessageSubmit={ this.addMessage } />
      </div>
    );
  }
});
