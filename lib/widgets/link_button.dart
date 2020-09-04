import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class LinkButton extends StatelessWidget {

  final String url;
  final String image;
  final String name;

  LinkButton({this.url,this.image,this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: () async {
          if (await canLaunch(url))
            launch(url);
          else
            print('no');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),

        color: Color.fromARGB(255, 50, 50, 50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipOval(
                child: Image(
                  image: AssetImage(image),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: MediaQuery.of(context).size.width/2,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                name,
                textAlign: TextAlign.center,
                style: kTitleStyle.copyWith(
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
