import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({super.key});

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer.periodic(const Duration(seconds: 1), (timer){
      count ++;
      print('count is $count');
      setState(() {});
    });
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    //print('full screen build : $count');
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
              "${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}",
              style: const TextStyle(fontSize: 25),
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
          // setState(() {
          //   count++;
          //   print('======${count}');
          // });
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
