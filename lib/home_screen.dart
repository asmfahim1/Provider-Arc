import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int x = 0;
  @override
  Widget build(BuildContext context) {
    print('State less');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Provider 1'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '${x.toString()}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print('======${x}');
        },
        child: Icon(Icons.add_rounded),
      ),
    );
  }
}
