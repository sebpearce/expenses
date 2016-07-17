class ExpenseSource extends React.Component {
  render () {
    return (
      <div>
        <span>Name: {this.props.name}; </span>
        <span>Id: {this.props.id}</span>
      </div>
    );
  }
}

ExpenseSource.propTypes = {
  name: React.PropTypes.string,
  id: React.PropTypes.node
};
