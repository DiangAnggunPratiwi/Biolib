import 'package:biolib/home_screen.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF133091),
        body: GestureDetector(
          onTap: () {
            // Navigate to DestinationScreen when tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(54),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/img_biolib_2_1.png",
                    height: 310,
                    width: double.maxFinite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}