class IncomeSources extends React.Component {
  render () {
    var incomeSourceRows = this.props.incomeSources.map((row) => {
      return (
        <div className="incomeSourceItem" key={row.id}>Name: {row.name}, Id: {row.id}</div>
      );
    });

    return (
      <div className="incomeSources">
        {incomeSourceRows}
      </div>
    );
  }
}

IncomeSources.propTypes = {
  name: React.PropTypes.string,
  id: React.PropTypes.node
};
