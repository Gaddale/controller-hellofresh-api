@api
Feature: Booking Controller Functionality

  Background:
    * url serverUrl
    * header Content-Type = 'application/json'

  Scenario: Test that at least 2 existing bookings are returned in the response
    * method GET
    * status 200
    * assert response["bookings"].length >= 2

  Scenario: Test that the data returned for an existing booking matches
    * def bookingId = '3'
    * path bookingId
    * method GET
    * status 200
    * assert response["bookingid"] == bookingId


