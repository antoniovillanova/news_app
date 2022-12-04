import 'package:flutter/material.dart';
import 'package:news_app/features/core/constants/palette.dart';
import 'features/core/services_locator.dart';
import 'features/show_news/presentation/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setUpServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light().copyWith(
          secondary: Palette.deepBlue
        ),
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}