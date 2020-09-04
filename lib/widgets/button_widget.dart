import 'package:flutter/material.dart';

class BlueButton extends StatefulWidget {
  final String text;
  final Function onPressed;

  BlueButton({this.text,this.onPressed});

  @override
  _BlueButtonState createState() => _BlueButtonState();
}

class _BlueButtonState extends State<BlueButton> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 40.0, minHeight: 50.0),
      child: RaisedButton(
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[300],
                  Colors.blue[900],
                ],
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
