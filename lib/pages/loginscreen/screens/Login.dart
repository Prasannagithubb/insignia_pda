// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:insignia_pda/Constant/Screen.dart';
import 'package:insignia_pda/Controller/Logincontroller/logincontroller.dart';
// import 'package:insignia_pda/pages/Dashboard/screens/dashboard.dart';
import 'package:insignia_pda/pages/loginscreen/widgets/loginfooter.dart';
import 'package:insignia_pda/pages/loginscreen/widgets/loginheader.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isvisible = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<LoginController>().inti();
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          alignment: Alignment.center,
          height: Screens.fullHeight(context),
          width: Screens.width(context),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LoginHeader(),
                const LoginFooter(),
              ])),
    ));
  }
}
