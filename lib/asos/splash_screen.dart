import 'package:flutter/material.dart';

class AsosSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'asos',
                style: TextStyle(fontSize: 85, fontWeight: FontWeight.w800,letterSpacing: -6.2),
              ),
              SizedBox(height: 30),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
