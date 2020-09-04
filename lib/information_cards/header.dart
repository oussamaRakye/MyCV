import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants.dart';


class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  ClipOval(
                    child: Image(
                      image: AssetImage('assets/myself.jpg'),
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width/2,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'OUSSAMA RAKYE',
                    textAlign: TextAlign.center,
                    style: kTitleStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TypewriterAnimatedTextKit(
                    totalRepeatCount: -1,
                    speed: Duration(milliseconds: 500),
                    text: ['Developer', 'Data scientist'],
                    textStyle: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
