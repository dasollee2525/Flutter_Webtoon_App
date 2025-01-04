import 'package:flutter/material.dart';
import 'package:flutter_webtoon_app/screens/home_screen.dart';

void main() {
<<<<<<< HEAD
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
=======
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
>>>>>>> 0f0db6a (Update webtoon app code)

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SingleChildScrollView(child: HomeScreen()),
=======
      home: HomeScreen(),
>>>>>>> 0f0db6a (Update webtoon app code)
    );
  }
}
