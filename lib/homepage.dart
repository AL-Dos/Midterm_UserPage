import 'package:flutter/material.dart';
import 'package:midterm_userpage/responsive/android.dart';
import 'package:midterm_userpage/responsive/layout.dart';
import 'package:midterm_userpage/responsive/web.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(androidBody: AndroidBody(), webBody: WebBody()),
    );
  }
}
