import 'package:flutter/material.dart';
import 'package:quadb_assignment/features/splash/presentation/views/splash_view/Screens/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        splashColor: Colors.transparent,
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
