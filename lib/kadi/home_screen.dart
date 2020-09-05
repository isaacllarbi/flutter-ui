import 'package:flutter/material.dart';

class KadiHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildAppbar(context),
            buildText(),
            buildCard(context)
          ],
        ),
      ),
    );
  }

    Padding buildAppbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Kadi',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                ' Delivery',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              //TODO implement menu press
            },
          )
        ],
      ),
    );
  }

  Padding buildText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Text(
        'Your Delivery Partner in Ghana',
        style: TextStyle(color: Colors.black, fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }

  Padding buildCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Dial ",
              style: TextStyle(color: Colors.black54, fontSize: 32),
              children: <TextSpan>[
                TextSpan(
                  text: '*899*899#',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' for Delivery & Warehousing service',
                        style: TextStyle(color: Colors.black54)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}