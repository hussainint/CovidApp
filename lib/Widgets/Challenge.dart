import 'package:flutter/material.dart';

import '../Screens/OptionList.dart';
import '../Widgets/sideNavigation.dart';

class Challenge extends StatelessWidget {
  var height;
  Challenge(this.height);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, SlideRightRoute(page: OptionList()));
          },
          child: Image.asset(
            'assets/images/no-virus.png',
            height: height * 0.25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Tap to see how to prevent from covid',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
