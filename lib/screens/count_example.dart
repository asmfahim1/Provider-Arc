import 'package:face_app_flutter/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountProviderScreen extends StatefulWidget {
  const CountProviderScreen({super.key});

  @override
  State<CountProviderScreen> createState() => _CountProviderScreenState();
}

class _CountProviderScreenState extends State<CountProviderScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer.periodic(const Duration(seconds: 1), (timer){
    //   count ++;
    //   print('count is $count');
    //   setState(() {});
    // });

  }


  @override
  Widget build(BuildContext context) {
    //print('full screen build : $count');
    final countProvider = Provider.of<CountProvider>(context, listen: false);
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
              child: Consumer<CountProvider>(builder: (context, value, child){
                return Text(
                  value.count.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.increment();
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
