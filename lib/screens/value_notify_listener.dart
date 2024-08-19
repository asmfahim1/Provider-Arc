import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({super.key});

  final ValueNotifier<int> _counter = ValueNotifier(0);
  final ValueNotifier<bool> _toggle = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    print('full widget build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic stless widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(valueListenable: _toggle, builder: (context, value, child){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter password',
                    suffix: InkWell(
                        onTap: () {
                          _toggle.value = !_toggle.value;
                          print('${_toggle.value}');
                        },
                        child: Icon(_toggle.value == true
                            ? Icons.visibility_off
                            : Icons.visibility))),
                obscureText: _toggle.value,
              ),
            );
          }),
          const Center(
            child: Text('Counter'),
          ),
          ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text('${_counter.value}');
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print('the value is : ${_counter.value}');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
