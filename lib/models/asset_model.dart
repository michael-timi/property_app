class Asset {
  String imgUrl, name, address;
  int price;

  Asset({this.price, this.name, this.imgUrl, this.address});
}

final List<Asset> assets = [
  Asset(
    imgUrl: 'images/house 1.jpg',
    name: 'Asset 0',
    address: '404, Great St',
    price: 100000,
  ),
  Asset(
    imgUrl: 'images/house 2.jpg',
    name: 'Asset 1',
    address: '404, Great St',
    price: 150000,
  ),
  Asset(
    imgUrl: 'images/house 3.jpg',
    name: 'Asset 2',
    address: '404, Great St',
    price: 200000,
  ),
];
