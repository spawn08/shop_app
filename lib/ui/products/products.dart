import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 400,
      "price": 350
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 450,
      "price": 380
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 180,
      "price": 120
    },
    {
      "name": "Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 200,
      "price": 150
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 80
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 90
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 80,
      "price": 60
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 95
    },
    {
      "name": "Skirts - Girls",
      "picture": "images/products/skt1.jpeg",
      "old_price": 110,
      "price": 90
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt2.jpeg",
      "old_price": 115,
      "price": 105
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext contex, int index) {
          return SingleProduct(
            name: productList[index]['name'],
            picture: productList[index]['picture'],
            oldPrice: productList[index]['old_price'],
            price: productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final name;
  final picture;
  final oldPrice;
  final price;

  SingleProduct({this.name, this.picture, this.oldPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          children: [
                            Text("\$$price",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.red)),
                            Text("\$$oldPrice",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black54,
                                    decoration: TextDecoration.lineThrough))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
