class ExpenseSources extends React.Component {
  render () {

    var expenseSourceRows = this.props.expenseSources.map((row) => {
      return (
        <div className="expenseSourceItem" key={row.id}>Name: {row.name}, Id: {row.id}</div>
      );
    })

    return (
      <div className="expenseSources">
        {expenseSourceRows}
      </div>
    );
  }
}

ExpenseSources.propTypes = {
  name: React.PropTypes.string,
  id: React.PropTypes.node
};
