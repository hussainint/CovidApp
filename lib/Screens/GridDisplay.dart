import 'package:flutter/material.dart';
import '../models/data.dart';
import '../Screens/SplashScreen.dart';
import '../Widgets/sideNavigation.dart';

class GridDisplay extends StatelessWidget {
  var ob, title;

  GridDisplay({this.ob, this.title});
  List<SplashStructure> splashScreens = [];

  void splashList() {
    for (var i = 0; i < ob.length; i++) {
      splashScreens.add(
        SplashStructure(
          image: '${ob[i][0]}',
          title: '${ob[i][1]}',
          description: '${ob[i][2]}',
          page: i,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    splashList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
        title: Text(
          '$title',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.grid_view),
            onPressed: () {
              Navigator.push(
                  context,
                  SlideRightRoute(
                      page: SplashScreen(
                    screens: splashScreens,
                    initialpage: 0,
                  )));
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: ob.length,
        itemBuilder: (ctx, i) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    SlideRightRoute(
                        page: SplashScreen(
                      screens: splashScreens,
                      initialpage: i,
                    )));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/${ob[i][0]}.png',
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  FittedBox(child: Text('${ob[i][1]}')),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
