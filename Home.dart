import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        //margin: EdgeInsets.only(left: 16.0),
        padding: EdgeInsets.only(left: 16.0, top: 16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Marghaarita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Margharita,Tomato,Onion",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Marinara",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato,Garlic",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
            PizzaImageWidget(),
            OrderPizza(),
          ],
        ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/pizza.png");
    Image image = Image(
      image: assetImage,
      width: 400.0,
      height: 400.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderPizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
          child: Text("Order your Pizza"),
          color: Colors.lightGreen,
          elevation: 5.0,
          onPressed: () {
            order(context);
          }),
    );
    return Button;
  }

  void order(BuildContext context) {
    var alert=AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      }
    );
  }
}
