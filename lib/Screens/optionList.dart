import 'package:flutter/material.dart';
import '../Widgets/sideNavigation.dart';
import './GridDisplay.dart';
import '../models/data.dart';
import '../Screens/treatment.dart';
import '../Screens/About.dart';

class OptionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                TopSection(),
                SizedBox(
                  height: 20,
                ),
                BottomSection()
              ],
            )),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  Data ob = new Data();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/man_sick.png',
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context, SlideRightRoute(page: AboutUs()));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/virus2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text('About The Virus'),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          //                         Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => SecondRoute()),
                          // );
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: GridDisplay(
                                ob: ob.preventVirus,
                                title: 'How To Prevent',
                              )));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/handshake.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text('How To Prevent'),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: GridDisplay(
                                ob: ob.symptoms,
                                title: 'COVID-19 SYMPTOMS',
                              )));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/sneez.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text('COVID-19 SYMPTOMS'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  Data ob = new Data();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: GridDisplay(
                                ob: ob.precautions,
                                title: 'Precautions To Take',
                              )));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/precaution.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text('PRECAUTIONS'),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  page: GridDisplay(
                                ob: ob.handwash,
                                title: 'Hand Wash',
                              )));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/handwashicon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text('HOW TO WASH HAND'),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context, SlideRightRoute(page: Treatment()));
                        },
                        child: Container(
                          child: Image.asset(
                            'assets/images/virus1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text('Treatment'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/girl_sick.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
