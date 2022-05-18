import React, { Component } from 'react';
import { Card, CardTitle, Col, CardImg } from 'reactstrap'

export default class ApartmentIndex extends Component {
  render() {
    return (
      <>
        <h3>Check Out All These Beautiful Apartments!</h3>
        <br />
        <Col sm="6">
          {this.props.apartments && this.props.apartments.map(apartment => {
            return(
              <Card body key={apartment.street}>
                <CardImg alt='apartment image' src= {apartment.image}/>
                <br />
                <CardTitle>
                  <h3>{apartment.street}</h3>
                  <h4>{apartment.price}</h4>
                </CardTitle>
              </Card>
            )
          })}
        </Col>
      </>
    )
  }
}
