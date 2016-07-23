//= require ./expense_source.es6.jsx

class CaptureApp extends React.Component {

  constructor (props) {
    super(props);
    this.state = {
      data: [],
    };
  }

  loadDataFromServer () {
    const source = 'http://localhost:3000/expense_sources';

    $.ajax({
      url: source,
      dataType: 'json',
      success: (data) => {
        this.setState({data: data});
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
        <ExpenseSource data={this.state.data} />
      </div>
    );
  }
}

