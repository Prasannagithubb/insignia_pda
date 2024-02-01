import 'package:flutter/material.dart';
import 'package:insignia_pda/Constant/Screen.dart';

import '../../loginscreen/screens/Login.dart';

// import 'package:insignia_pda/pages/Dashboard/screens/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: override_on_non_overriding_member

  @override
  void initState() {
    super.initState();
    // context.read<LoginController>().splashToLogin(context);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              //               Container(
              //   height: Screens.bodyheight(context) * 0.1,
              //   width: Screens.width(context) * 0.1,
              //   child: ClipOval(
              //     child: ClipRect(
              //       child: Image.asset(
              //         'lib/Assets/ic_insign.png',
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                height: Screens.bodyheight(context) * 0.11,
                width: Screens.width(context) * 0.24,
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
                // decoration: BoxDecoration(
                //   shape:
                // ),
                child: Image.asset(
                  'lib/Assets/ic_insign_square-removebg-preview.png',
                  fit: BoxFit.fill,
                  // height: Screens.bodyheight(context) *0.1
                ),
              ),
              SizedBox(
                height: Screens.bodyheight(context) * 0.01,
              ),
              Text('Insignia',
                  style: theme.textTheme.headlineMedium?.copyWith()),
              SizedBox(
                height: Screens.bodyheight(context) * 0.06,
                // height: Screens.bodyheight(context) * 0.06,
              ),
              Container(
                decoration: const BoxDecoration(
                    // color: Colors.yellow,
                    // borderRadius: BorderRadius.circular(1),
                    ),
                width: Screens.width(context) * 0.5,
                child: LinearProgressIndicator(
                  // value: 0.5, // Set the progress value between 0.0 and 1.0
                  minHeight: Screens.bodyheight(context) *
                      0.003, // Set the minimum height of the progress indicator
                  backgroundColor: Colors.grey[300], // Set the background color
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.red), // Set the progress color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
