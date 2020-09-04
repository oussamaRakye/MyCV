import 'package:flutter/material.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/widgets/link_button.dart';
import '../constants.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Portofolio',
              style: kTitleStyle,
            ),
            SizedBox(
              height: 20,
            ),
            LinkButton(
              image: 'assets/github.png',
              url: 'https://github.com/oussamaRakye?tab=repositories',
              name: 'GitHub',
            ),
            SizedBox(
              height: 20,
            ),
            LinkButton(
              image: 'assets/linkedin.png',
              url: 'https://www.linkedin.com/in/oussama-rakye-52368b156/?originalSubdomain=uk',
              name: 'LinkedIn',
            ),
          ],
        ),
      ),
    );
  }
}
