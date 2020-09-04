import 'package:flutter/material.dart';

class CardViewer extends StatefulWidget {

  final Widget child;

  CardViewer({this.child});

  @override
  _CardViewerState createState() => _CardViewerState();
}

class _CardViewerState extends State<CardViewer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: widget.child,
    );
  }
}
