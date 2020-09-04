import 'dart:async';
import 'package:flutter/material.dart';

class LeftToRight extends StatefulWidget {
  final Widget child;
  final int delay;
  final bool onScreen;

  LeftToRight({@required this.child, this.delay, this.onScreen});

  @override
  _DelayedAnimationState createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<LeftToRight>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animOffset;
  // Animation

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    final curve =
    CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset =
        Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _controller.forward();
    } else {
      makeAnimation();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _controller,
    );
  }

  void makeAnimation() async{
    if (!widget.onScreen) {
      while(!widget.onScreen){
            await Future.delayed(Duration(milliseconds: 50));
          }
      Timer(Duration(milliseconds: widget.delay), () {
            _controller.forward();
          });
    } else {
      while(widget.onScreen){
        await Future.delayed(Duration(milliseconds: 50));
      }
      Timer(Duration(milliseconds: widget.delay), () {
        _controller.reverse(from: 1);
      });
    }
    makeAnimation();
  }
}