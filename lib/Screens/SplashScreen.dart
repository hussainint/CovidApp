import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  List<SplashStructure> screens;
  int initialpage;
  SplashScreen({this.screens, this.initialpage});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int index;
  PageController controller;

  var align = [Alignment.centerLeft, Alignment.center, Alignment.centerRight];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: widget.initialpage);
    index = widget.initialpage;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (val) {
            setState(() {
              index = val;
            });
          },
          children: widget.screens,
        ),
        Positioned(
            bottom: 30,
            left: 30,
            child: Row(children: [
              for (int i = 0; i < widget.screens.length; i++)
                Row(
                  children: [
                    new Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: index == i ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
            ])),
      ],
    );
  }
}

class SplashStructure extends StatelessWidget {
  SplashStructure({this.description, this.title, this.page, this.image});
  String title, description, image;
  int page;
  var clr = [
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
  ];
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: clr[page],
      body: Container(
        // color: Colors.green,
        padding: const EdgeInsets.only(top: kToolbarHeight),
        child: Center(
          child: Stack(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: _height * 0.4,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/$image.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        '$title',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          '$description',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.10,
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 25,
                top: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(color: Colors.grey[300], fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
