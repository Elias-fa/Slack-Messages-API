var Message = React.createClass({

  render: function() {
    return (
      <div className="message">
        { this.props.data.body }
      </div>
    )
  }
});
