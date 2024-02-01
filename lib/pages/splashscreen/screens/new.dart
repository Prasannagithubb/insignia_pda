import 'dart:developer';

import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  void initState() {
    super.initState();
    //  super.initState();
    log("hiii");
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => const Dashboard()));

    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
