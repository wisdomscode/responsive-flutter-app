import 'package:flutter/material.dart';

class GridViewOrientationWay extends StatelessWidget {
  const GridViewOrientationWay({super.key});

  @override
  // using orientation builder
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 920;
    bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 920 && MediaQuery.of(context).size.width >= 600;
    bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

    int getCrossAxisCount(BuildContext context) {
      if (isDesktop(context)) {
        return 4;
      } else if (isTablet(context)) {
        return 3;
      } else {
        return 2;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientattion'),
      ),
      body: GridView.count(
        crossAxisCount: getCrossAxisCount(context),
        children: List.generate(
          40,
          (index) => Card(
            child: Center(
              child: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
