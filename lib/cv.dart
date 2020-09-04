import 'package:flutter/material.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/information_cards/about_me.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/information_cards/get_pdf.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/widgets/get_size.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/information_cards/header.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/information_cards/portfolio.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/information_cards/skills.dart';
import 'widgets/card.dart';
import 'widgets/left_to_right.dart';

class CV extends StatefulWidget {
  @override
  _CVState createState() => _CVState();
}

class _CVState extends State<CV> {
  bool onAboutMe = false;
  bool onSkills = false;
  bool onPortfolio = false;
  bool onContactForm = false;

  double heightScreen;

  double heightHeader;
  double heightAboutMe = 10000;
  double heightSkills = 10000;
  double heightPortfolio = 10000;
  double heightContactForm = 10000;

  ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        onAboutMe = (heightHeader - heightScreen <= _controller.offset) ? true : false;
        onSkills = (heightHeader + heightAboutMe - heightScreen + 20*4  + 200<= _controller.offset) ? true : false;
        onPortfolio = (heightHeader + heightAboutMe + heightSkills - heightScreen + 20*5  + 200<= _controller.offset) ? true : false;
        onContactForm = (heightHeader + heightAboutMe + heightSkills + heightPortfolio - heightScreen + 20*6  + 200<= _controller.offset) ? true : false;

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    heightScreen = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      child: Center(
        child: Container(
          width: (MediaQuery.of(context).size.width>1000) ? 1000.0 : double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 25,
                ),
                MeasureSize(
                  onChange: (size) {
                    heightHeader = size.height;
                  },
                  child: CardViewer(
                    child: Container(
                        child: Header()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MeasureSize(
                  onChange: (size) {
                    heightAboutMe = size.height;
                  },
                  child: LeftToRight(
                    delay: 1, //specify the delay that you want in milliseconds
                    onScreen: onAboutMe,
                    child: CardViewer(
                      child: Container(
                          child: AboutMe()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MeasureSize(
                  onChange: (size) {
                    heightSkills = size.height;
                  },
                  child: LeftToRight(
                    delay: 1, //specify the delay that you want in milliseconds
                    onScreen: onSkills,
                    child: CardViewer(
                      child: Skills(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MeasureSize(
                  onChange: (size) {
                    heightPortfolio = size.height;
                  },
                  child: LeftToRight(
                    delay: 1,
                    onScreen: onPortfolio,
                    child: CardViewer(
                      child: Portfolio(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MeasureSize(
                  onChange: (size) {
                    heightContactForm = size.height;
                  },
                  child: LeftToRight(
                    delay: 1,
                    onScreen: onContactForm,
                    child: CardViewer(
                      child: GetPdf(),
                    ),
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
