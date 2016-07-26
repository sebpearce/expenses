class ExpenseSources extends React.Component {
  render () {

    const expsrc = this.props.expenseSources;
    const expenseSourceRows = Object.keys(expsrc).map((id) => {
      const name = expsrc[id];
      return (
        <div className="expenseSourceItem" key={id}>Name: {name}, Id: {id}</div>
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
