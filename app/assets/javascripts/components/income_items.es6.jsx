class IncomeItems extends React.Component {
  render () {

    var incomeItemRows = this.props.incomeItems.map((row) => {
      return (
        <tr className="incomeItemRow" key={row.id}>
          <td className="incomeItem__date">{row.date}</td>
          <td className="incomeItem__amt">{row.amt}</td>
          <td className="incomeItem__desc">{row.desc}</td>
          <td className="incomeItem__src">{row.src}</td>
        </tr>
      );
    })

    return (
      <table className="incomeItems">
        <tbody>
          {incomeItemRows}
        </tbody>
      </table>
    );
  }
}

IncomeItems.propTypes = {
  id: React.PropTypes.node,
  date: React.PropTypes.string,
  amt: React.PropTypes.number,
  desc: React.PropTypes.string,
  src: React.PropTypes.node,
};
