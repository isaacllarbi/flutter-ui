import 'package:flutter/material.dart';
import 'package:flutter_ui/asos/home_screen.dart';
import 'package:flutter_ui/asos/splash_screen.dart';
import 'package:flutter_ui/kadi/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffff631a),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            //Heading
            ListTile(
              title: Text('My Portfolio',
                  style: TextStyle(decoration: TextDecoration.underline)),
            ),
            ListTile(
              title: Text('Kadi'),
              subtitle: Text('Delivery service.'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => KadiHomeScreen(),
                ),
              ),
            ),
            ListTile(
              title: Text('ASOS'),
              subtitle: Text('Buy clothing, cosmetics and footware.'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => AsosSplashScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
