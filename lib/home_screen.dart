import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 920;
  bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Width: $screenWidth'),
            Text('Height: $screenHeight'),
            Row(
              children: [
                if (isDesktop(context))
                  Container(
                    color: Colors.blue,
                    width: 200,
                    child: Center(
                      child: Text('SIDEBAR'),
                    ),
                  ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text('CONTENT'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
