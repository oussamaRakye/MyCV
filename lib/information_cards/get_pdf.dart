import 'package:flutter/material.dart';
import 'file:///C:/Users/oussa/AndroidStudioProjects/my_cv/lib/widgets/input_text.dart';
import '../constants.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import '../widgets/button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class GetPdf extends StatefulWidget {
  @override
  _GetPdfState createState() => _GetPdfState();
}

class _GetPdfState extends State<GetPdf> {

  String url = 'https://drive.google.com/file/d/1xAw2PMpP5V8CgOhHbtLXagGHlUhtun3p/view?usp=sharing';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get my CV in a PDF',
              style: kTitleStyle,
            ),
            SizedBox(
              height: 20,
            ),
            BlueButton(
              onPressed: () async {
                if (await canLaunch(url))
                  launch(url);
                else
                  print('no');
              },
              text: "DOWNLOAD",
            ),          ],
        ),
      ),
    );
  }
}


