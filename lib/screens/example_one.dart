import 'package:face_app_flutter/provider/example_one_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExampleOneProviderScreen extends StatefulWidget {
  const ExampleOneProviderScreen({super.key});

  @override
  State<ExampleOneProviderScreen> createState() =>
      _ExampleOneProviderScreenState();
}

class _ExampleOneProviderScreenState extends State<ExampleOneProviderScreen> {
  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    //final exampleProvider = Provider.of<ExampleOneProvider>(context, listen: false);
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
            Consumer<ExampleOneProvider>(builder: (context, value, child){
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (newValue) {
                  value.setValue(newValue);
                },
              );
            }),

            Consumer<ExampleOneProvider>(builder: (context, value, child){
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.red.withOpacity(value.value),
                      child: const Text(
                        'Container 1',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.green.withOpacity(value.value),
                      child: const Text(
                        'Container 2',
                      ),
                    ),
                  ),
                ],
              );
            }),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
