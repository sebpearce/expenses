class ExpenseItems extends React.Component {
  render () {

    const expitms = this.props.expenseItems;

    const expenseItemRows = Object.keys(expitms).map((id) => {
      const row = expitms[id];
      return (
        <tr className="expenseItemRow" key={id}>
          <td className="expenseItem__date">{row.date}</td>
          <td className="expenseItem__amt">{row.amt}</td>
          <td className="expenseItem__desc">{row.desc}</td>
          <td className="expenseItem__src">{row.src}</td>
        </tr>
      );
    })

    return (
      <table className="expenseItems">
        <tbody>
          {expenseItemRows}
        </tbody>
      </table>
    );
  }
}

ExpenseItems.propTypes = {
  id: React.PropTypes.node,
  date: React.PropTypes.string,
  amt: React.PropTypes.number,
  desc: React.PropTypes.string,
  src: React.PropTypes.node,
};
