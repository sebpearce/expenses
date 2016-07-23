// TODO: rename this to ExpenseSources because it's the whole list

class ExpenseSource extends React.Component {
  render () {

    var expenseSourceRows = this.props.data.map((row) => {
      return (
        <div className="expenseSourceItem" key={row.id}>
          <span>Name: {row.name}, </span>
          <span>Id: {row.id}</span>
        </div>
      );
    })

    return (
      <div className="expenseSources">
        {expenseSourceRows}
      </div>
    );
  }
}

ExpenseSource.propTypes = {
  name: React.PropTypes.string,
  id: React.PropTypes.node
};
