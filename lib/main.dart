import 'package:bottomnavigationbar/One.dart';
import 'package:bottomnavigationbar/Three.dart';
import 'package:bottomnavigationbar/Two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var pageIndex = 0;

  final pages = [
    One(),
    Two(),
    Three(),
    Three()
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
                print(pageIndex);
              },
              icon: pageIndex == 0
                  ?  const Icon(
                Icons.home_filled,
                color: Colors.green,
                size: 35,
              )
                  :  const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
                print(pageIndex);
              },
              icon: pageIndex == 1
                  ?  const Icon(
                Icons.work_rounded,
                color: Colors.green,
                size: 35,
              )
                  :  const Icon(
                Icons.work_outline_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
                print(pageIndex);
              },
              icon: pageIndex == 2
                  ?  const Icon(
                Icons.widgets_rounded,
                color: Colors.green,
                size: 35,
              )
                  :  const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
                print(pageIndex);
              },
              icon: pageIndex == 3
                  ?  const Icon(
                Icons.person,
                color: Colors.green,
                size: 35,
              )
                  :  const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: pages[pageIndex],
    ));
  }
}


