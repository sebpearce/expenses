class IncomeItems extends React.Component {
  render () {

    const incitms = this.props.incomeItems;

    const incomeItemRows = Object.keys(incitms).map((id) => {
      const row = incitms[id];
      return (
        <tr className="incomeItemRow" key={id}>
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
