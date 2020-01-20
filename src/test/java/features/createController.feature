@api
Feature: Create Booking Controller Functionality

  Background:
    * url serverUrl
    * header Content-Type = 'application/json'

  Scenario: Test that bookings Should be created with valid
    * def jc = Java.type('utils.KarateJava')
    * def emailId = jc.createRandomString() + '@outlook.com'
    * def fName = jc.createRandomFirstLastName()
    * def lName = jc.createRandomFirstLastName()
    * def phoneNo = jc.createRandomNumber(12)
    * def bookingNo = jc.createRandomNumber(1)
    * def roomNo = jc.createRandomNumber(1)
    * def checkInDate = jc.currentDate()
    * def checkOutDate = jc.futureDate()
    * print checkInDate+' '+checkOutDate+' '+bookingNo+' '+emailId+' '+fName+' '+lName+' '+phoneNo+' '+roomNo
    * def Request = read('classpath:create.json')
    * set Request['bookingdates'].checkin = checkInDate
    * set Request['bookingdates'].checkout = checkOutDate
    * set Request.bookingid = bookingNo
    * set Request.email = emailId
    * set Request.firstname = fName
    * set Request.lastname = lName
    * set Request.phone = phoneNo
    * set Request.roomid = roomNo
    * print Request
    * request Request
    * method POST
    * status 201
    * print response

  Scenario: Test that bookings should fail of checkin and checkout dates are same
    * def jc = Java.type('utils.KarateJava')
    * def emailId = jc.createRandomString() + '@outlook.com'
    * def fName = jc.createRandomFirstLastName()
    * def lName = jc.createRandomFirstLastName()
    * def phoneNo = jc.createRandomNumber(12)
    * def bookingNo = jc.createRandomNumber(1)
    * def roomNo = jc.createRandomNumber(1)
    * def checkInDate = jc.currentDate()
    * def checkOutDate = checkInDate
    * print checkInDate+' '+checkOutDate+' '+bookingNo+' '+emailId+' '+fName+' '+lName+' '+phoneNo+' '+roomNo
    * def Request = read('classpath:create.json')
    * set Request['bookingdates'].checkin = checkInDate
    * set Request['bookingdates'].checkout = checkOutDate
    * set Request.bookingid = bookingNo
    * set Request.email = emailId
    * set Request.firstname = fName
    * set Request.lastname = lName
    * set Request.phone = phoneNo
    * set Request.roomid = roomNo
    * print Request
    * request Request
    * method POST
    * status 409
    * print response