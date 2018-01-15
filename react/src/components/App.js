import React, { Component } from 'react';
import axios from 'axios';


export default class App extends Component {
  constructor(props) {
    super(props) 
    this.state = {};
    this.getAllDataFromSample = this.getAllDataFromSample.bind(this) 
  }

  componentDidMount() {
    this.getAllDataFromSample()
  }

  getAllDataFromSample() {
    axios.post('/api/sample', {
      'table': 'sample'
    }).then((res) => {
      console.log('this is the response: ', res)
    })
  }

  render() {
    return (
      <div> 
        This is the app!
      </div> 
    )
  } 
}