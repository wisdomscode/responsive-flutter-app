import 'package:flutter/material.dart';

class AnotherOrientationWay extends StatelessWidget {
  const AnotherOrientationWay({super.key});

  @override
  // using orientation builder
  Widget build(BuildContext context) => OrientationBuilder(builder: (context, orientattion) {
        final isPortrait = orientattion == Orientation.portrait;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Orientattion'),
          ),
          body: isPortrait
              ? Container(
                  color: Colors.orange,
                  child: const Center(
                    child: Text('Portrait'),
                  ),
                )
              : Container(
                  color: Colors.lightGreen,
                  child: const Center(
                    child: Text('Landscape'),
                  ),
                ),
        );
      });
}
