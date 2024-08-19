import 'package:face_app_flutter/provider/auth_provider.dart';
import 'package:face_app_flutter/provider/count_provider.dart';
import 'package:face_app_flutter/provider/example_one_provider.dart';
import 'package:face_app_flutter/provider/favourite_provider.dart';
import 'package:face_app_flutter/provider/theme_provider.dart';
import 'package:face_app_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xfffffdfa),
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Colors.yellow,
              centerTitle: true,
              elevation: 0,
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          darkTheme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Colors.green,
              centerTitle: true,
              elevation: 0,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          home: LoginScreen(),
        );
      }),
    );
  }
}
