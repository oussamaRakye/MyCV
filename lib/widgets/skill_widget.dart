import 'package:flutter/material.dart';
import 'package:mycv/constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillWidget extends StatefulWidget {
  final String skillName;
  final double percentage;

  SkillWidget({this.skillName, this.percentage});

  @override
  _SkillWidgetState createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.skillName,
                style: kTextStyle,
              ),
              Text(
                '${widget.percentage * 100}%',
                style: kTextStyle,
              ),
            ],
          ),
          LinearPercentIndicator(
            lineHeight: 14,
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
            percent: widget.percentage,
            backgroundColor: Colors.grey[300],

            linearGradient: LinearGradient(
              colors: [
                Colors.blue[300],
                Colors.blue[900],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
