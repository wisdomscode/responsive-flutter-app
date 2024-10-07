import 'package:flutter/material.dart';

class OrientationScreen extends StatefulWidget {
  const OrientationScreen({super.key});

  @override
  State<OrientationScreen> createState() => _OrientationScreenState();
}

class _OrientationScreenState extends State<OrientationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientattion'),
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? // Portrait Mode,
          Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Portrait'),
              ),
            )
          : // landscape Mode
          Container(
              color: Colors.green,
              child: const Center(
                child: Text('Landscape'),
              ),
            ),
    );
  }
}
