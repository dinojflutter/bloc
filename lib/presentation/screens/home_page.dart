import 'package:bloc_app_2/Core/Constants/my_colors.dart';
import 'package:bloc_app_2/Core/Constants/my_strings.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.primaryColor,
        title: const Text(
          MyStrings.appName,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
