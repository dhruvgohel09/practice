import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({super.key});

  @override
  State<GridExample> createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  final topics = [
    'Topic 1',
    'Topic 2',
    'Topic 3',
    'Topic 4',
    'Topic 5',
    'Topic 6',
    'Topic 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Example'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: [
          for (final topic in topics)
            Card(
              color: Colors.blue,
              child: Center(
                child: Text(
                  topic,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}