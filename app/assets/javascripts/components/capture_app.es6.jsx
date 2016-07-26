class CaptureApp extends React.Component {

  constructor (props) {
    super(props);
    this.state = {
      expenseSources: [],
      incomeSources: [],
      expenseItems: [],
      incomeItems: [],
      settings: [],
      shortcuts: [],
    };
  }

  loadDataFromServer () {
    const source = 'http://localhost:3000/capture.json';

    $.ajax({
      url: source,
      dataType: 'json',
      success: (data) => {
        this.setState({
          expenseSources: data.expense_sources,
          incomeSources: data.income_sources,
          expenseItems: data.expense_items,
          incomeItems: data.income_items,
          settings: data.settings,
          shortcuts: data.shortcuts,
        });
      },
      error: (xhr, status, err) => {
        console.error(source, status, err.toString());
      }
    });
  }

  componentDidMount () {
    this.loadDataFromServer();
    // setInterval(this.loadDataFromServer.bind(this), this.props.pollInterval);
  }

  render () {
    return (
      <div>
        <p>CaptureApp</p>
        <ExpenseSources expenseSources={this.state.expenseSources} />
        <br />
        <IncomeSources incomeSources={this.state.incomeSources} />
        <br />
        <ExpenseItems expenseItems={this.state.expenseItems} />
        <br />
        <IncomeItems incomeItems={this.state.incomeItems} />
      </div>
    );
  }
}

