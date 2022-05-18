import React, { Component } from 'react'

export default class ApartmentShow extends Component {
  render() {
    let { apartment } = this.props
    return (
      <div>
        <h1>Find Your Dream Apartment</h1>
        <img src={apartment && apartment.image} alt="rep"/>
        <p>This lovely apartment is located at {apartment && apartment.street}, {apartment && apartment.city} {apartment && apartment.state}. If interested in viewing, please contact {apartment && apartment.manager} at {apartment && apartment.email}.</p>
      </div>
    )
  }
}
