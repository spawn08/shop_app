import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: "images/cats/accessories.png",
            imageCaption: "Accesories",
          ),
          Category(
            imageLocation: "images/cats/dress.png",
            imageCaption: "Dress",
          ),
          Category(
            imageLocation: "images/cats/formal.png",
            imageCaption: "Formal",
          ),
          Category(
            imageLocation: "images/cats/informal.png",
            imageCaption: "Informal",
          ),
          Category(
            imageLocation: "images/cats/jeans.png",
            imageCaption: "Jeans",
          ),
          Category(
            imageLocation: "images/cats/shoe.png",
            imageCaption: "Shoe",
          ),
          Category(
            imageLocation: "images/cats/tshirt.png",
            imageCaption: "T-Shirt",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
      child: Card(
        color: Colors.purple[400],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 8.0,
        shadowColor: Colors.grey[300],
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 110.0,
            child: ListTile(
                title: Image.asset(
                  imageLocation,
                  width: 100.0,
                  height: 80.0,
                  color: Colors.white,
                ),
                subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    imageCaption,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
