import 'package:cinepedia_app/config/constanst/environment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name ='home-screen';
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text(Environment.movieDbKey),
      ),
    );
  }
}