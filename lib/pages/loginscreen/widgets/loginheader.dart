// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:insignia_pda/Constant/Screen.dart';
import 'package:insignia_pda/Controller/Logincontroller/logincontroller.dart';
// import 'package:insignia_pda/pages/Dashboard/screens/dashboard.dart';
import 'package:provider/provider.dart';

class LoginHeader extends StatefulWidget {
  const LoginHeader({super.key});

  @override
  State<LoginHeader> createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  // bool isvisible = true;
  // GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // TextEditingController passwordController = TextEditingController();
  // TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        margin: EdgeInsets.only(top: Screens.bodyheight(context) * 0.2),
        // alignment: Alignment.center,
        padding: EdgeInsets.all(Screens.bodyheight(context) * 0.02),
        height: Screens.fullHeight(context) * 0.52,
        width: Screens.width(context),
        child: Form(
          key: context.read<LoginController>().formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Screens.bodyheight(context) * 0.14,
                child: Image.asset(
                  "lib/Assets/ic_insign_square-removebg-preview.png",
                  // 'lib/Assets/ic_insign_square.png',
                  // color: Colors.white,
                  fit: BoxFit.fill,
                  // height: Screens.bodyheight(context) *0.1
                ),
              ),
              Text('Login', style: theme.textTheme.headlineMedium?.copyWith()),
              TextFormField(
                controller: context.read<LoginController>().usernameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your username';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'username'),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your password';
                  }
                  return null;
                },
                controller: context.read<LoginController>().passwordController,
                obscureText: context.read<LoginController>().isvisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            context.read<LoginController>().isvisible =
                                !context.read<LoginController>().isvisible;
                          });
                        },
                        icon: Icon(context.read<LoginController>().isvisible
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    labelText: 'password'),
              ),
              Container(
                // height: double.infinity,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Adjust the radius as needed
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        context
                            .read<LoginController>()
                            .logintoDashboard(context);
                      });
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Dashboard()));
                    },
                    child: const Text(
                      'submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              // SizedBox(height: Screens.bodyheight(context) * 0.4),
            ],
          ),
        ));
  }
}
