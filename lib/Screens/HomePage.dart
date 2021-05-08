import 'package:flutter/material.dart';
import '../Widgets/Challenge.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: height * 0.6,
                  child: Image.asset(
                    'assets/images/home.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                    top: 30,
                    child: Column(
                      children: [
                        FittedBox(
                          child: Text(
                            'Prevent From Corona Virus',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FittedBox(
                          child: Text(
                            'COVID-19',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Challenge(height),
            Container(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
