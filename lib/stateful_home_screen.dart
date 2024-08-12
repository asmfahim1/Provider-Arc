import 'package:flutter/material.dart';

class StatefulHomeScreen extends StatefulWidget {
  const StatefulHomeScreen({super.key});

  @override
  State<StatefulHomeScreen> createState() => _StatefulHomeScreenState();
}

class _StatefulHomeScreenState extends State<StatefulHomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('full screen build : $count');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stateful widget'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateTime.now().toString(),
            ),
            Center(
              child: Text(
                count.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            print('======${count}');
          });
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
