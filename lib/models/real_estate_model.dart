import 'package:flutter/material.dart';
import 'activity_model.dart';

class Location {
  String imgUrl, address, state, agency;
  List<Activity> activities;

  Location({
    this.imgUrl,
    this.address,
    this.activities,
    this.agency,
    this.state,
  });
}

List<Activity> activities = [
  Activity(
    imgUrl: 'images/house 1.jpg',
    name: 'House 1',
    type: 'Duplex',
    startTimes: ['9:00am', '11:00am'],
    rating: 5,
    price: 300000,
  ),
  Activity(
    imgUrl: 'images/house 2.jpg',
    name: 'House 2',
    type: 'Bungalow',
    startTimes: ['9:00am', '11:00am'],
    rating: 4,
    price: 550000,
  ),
  Activity(
    imgUrl: 'images/house 3.jpg',
    name: 'House 3',
    type: 'Hostel',
    startTimes: ['9:00am', '11:00am'],
    rating: 2,
    price: 1300000,
  )
];
List<Location> locations = [
  Location(
      imgUrl: 'images/house 4.jpg',
      state: 'Oyo State',
      address: '4, Bodija Estate',
      activities: activities,
      agency: 'Adron Properties'),
  Location(
      imgUrl: 'images/house 5.jpeg',
      state: 'Ogun State',
      address: 'Panseke close',
      activities: activities,
      agency: 'Metro Viable Properties'),
  Location(
      imgUrl: 'images/house 6.jpeg',
      state: 'Lagos State',
      address: 'Victoria island',
      activities: activities,
      agency: 'Metro Viable Properties'),
  Location(
      imgUrl: 'images/house 7.jpeg',
      state: 'Osun State',
      address: 'Obafemi Awolowo University',
      activities: activities,
      agency: 'Martin Real Estate')
];
