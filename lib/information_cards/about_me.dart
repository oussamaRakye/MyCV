import 'package:flutter/material.dart';
import 'package:mycv/constants.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'About me',
              style: kTitleStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Passion for Computer science and mathematics. Showing specially great capacity in mathematics and doing mathematics module on first year. Focusing my studies towards Artificial Intelligence due to my big interest in this area. Having experience in Java (specially using Android Studio),'+
                ' C++ and Python, and having basic knowledge of other languages. Really interested in a internship related to computer science, mathematics or economy.' +
                '\n\n ' + "First class in 6 out of 7 modules, including Java, Mathematics and Software Engineering in King's College London.",
              style: kTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
