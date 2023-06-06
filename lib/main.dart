import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:menu_project/ui/home/home_screen.dart';
import 'package:menu_project/ui/home/order_screen/order_screen.dart';
import 'package:menu_project/utils/colors.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen(),
    );
  }
}
