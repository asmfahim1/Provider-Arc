import 'package:face_app_flutter/home_screen.dart';
import 'package:face_app_flutter/provider/count_provider.dart';
import 'package:face_app_flutter/provider/example_one_provider.dart';
import 'package:face_app_flutter/provider/favourite_provider.dart';
import 'package:face_app_flutter/screens/count_example.dart';
import 'package:face_app_flutter/screens/example_one.dart';
import 'package:face_app_flutter/screens/favourite/favourite_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider(),),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider(),),
        ChangeNotifierProvider(create: (_) => FavouriteProvider(),),
      ],

      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(color: CupertinoColors.activeGreen),
            scaffoldBackgroundColor: Colors.white),
        home: FavouriteScreen(),
      ),
    );
  }
}
