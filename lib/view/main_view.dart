import 'package:flutter/material.dart';

import 'list_news.dart';
import 'list_view.dart';


class MainView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainViewPage(
        key: Key("MyHomePage"),
      ),
    );
  }
}

class MainViewPage extends StatefulWidget {
  MainViewPage({required Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainViewPage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(icon: Container(
        width: 150,
        height: 30,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 150,
                height: 30,
                decoration: ShapeDecoration(
                  color: bottomSelectedIndex == 0 ? Color(0xFFD7FC3A) : Color(0xFF4E62EB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 7,
              child: SizedBox(
                width: 100,
                height: 15.45,
                child: Text(
                  'Fact of the day',
                  style: TextStyle(
                    color: bottomSelectedIndex == 0 ? Colors.black : Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ), label: " "),
      BottomNavigationBarItem(
        icon: Container(
          width: 100,
          height: 30,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: bottomSelectedIndex == 1 ? Color(0xFFD7FC3A) : Color(0xFF4E62EB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 7,
                child: SizedBox(
                  width: 56.53,
                  height: 15.45,
                  child: Text(
                    'News',
                    style: TextStyle(
                      color: bottomSelectedIndex == 1 ? Colors.black : Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //   Container(
        //     height: 25,
        //     width: 80,
        //     decoration: new BoxDecoration(
        //       borderRadius: new BorderRadius.circular(10.0),
        //       color: bottomSelectedIndex == 1 ? Color(0xFFD7FC3A) : Color(0xFF4E62EB),
        //     ),
        //     child: Text(
        //       "News",
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           fontSize: 14.0,
        //           color: bottomSelectedIndex == 1 ? Colors.black : Colors.white),
        //     ),
        //   ),
        //   // T
        label: "",
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        TodosScreen(),
        NewsScreen(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
