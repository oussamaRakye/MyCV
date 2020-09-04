import 'package:flutter/material.dart';
import '../widgets/skill_widget.dart';
import '../constants.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Skills',
                style: kTitleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SkillWidget(
                percentage: 0.9,
                skillName: 'Java',
              ),
              SkillWidget(
                percentage: 0.75,
                skillName: 'Flutter',
              ),
              SkillWidget(
                percentage: 0.70,
                skillName: 'SQL',
              ),
              SkillWidget(
                percentage: 0.8,
                skillName: 'Python',
              ),
            ],
        ),
      ),
    );
  }
}
