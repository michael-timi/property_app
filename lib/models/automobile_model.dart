class Automobile {
  String imgUrl, name, details;
  int price;

  Automobile({this.price, this.name, this.imgUrl, this.details});
}

final List<Automobile> automobiles = [
  Automobile(
    imgUrl: 'images/car1.jpg',
    name: '2017 Mercedes Benz (Gle class Angular Front)',
    details: '404, Great St',
    price: 100000,
  ),
  Automobile(
    imgUrl: 'images/car2.jpg',
    name: 'Mercedes Benz',
    details: '404, Great St',
    price: 150000,
  ),
  Automobile(
    imgUrl: 'images/car3.jpeg',
    name: 'Infiniti G35',
    details: '404, Great St',
    price: 200000,
  ),
  Automobile(
    imgUrl: 'images/car4.jpeg',
    name: 'Pontiac',
    details: '404, Great St',
    price: 200000,
  ),
  Automobile(
    imgUrl: 'images/car5.jpeg',
    name: 'Pontiac Vibe 2005',
    details: '404, Great St',
    price: 200000,
  ),
  Automobile(
    imgUrl: 'images/car6.jpeg',
    name: 'Toyota 2014',
    details: '404, Great St',
    price: 200000,
  ),
];
