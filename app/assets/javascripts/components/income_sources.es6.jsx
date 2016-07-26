class IncomeSources extends React.Component {
  render () {

    const incsrc = this.props.incomeSources;
    const incomeSourceRows = Object.keys(incsrc).map((id) => {
      const name = incsrc[id];
      return (
        <div className="incomeSourceItem" key={id}>Name: {name}, Id: {id}</div>
      );
    })

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
