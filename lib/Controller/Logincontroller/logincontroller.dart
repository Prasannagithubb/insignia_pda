import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insignia_pda/Constant/constantroutes.dart';

import '../../pages/loginscreen/screens/Login.dart';
// import 'package:insignia_pda/pages/stockauditing/screens/stockaudit.dart';

class LoginController extends ChangeNotifier {
  inti() {
    clearalldata();
    notifyListeners();
  }

  void clearalldata() {
    isvisible = true;
    passwordController.text = '';
    usernameController.text = '';
    // formkey = GlobalKey<FormState>();
    notifyListeners();
  }

  // formkey = GlobalKey<FormState>();
  bool isvisible = true;

  final formkey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  logintoDashboard(BuildContext context) {
    if (formkey.currentState!.validate()) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const Dashboard()),
      // );
      //  Get.to(const Dashboard());
      Get.offAllNamed(ConstantRoutes.dashboard);
      notifyListeners();
    }
  }

  splashToLogin(context) {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(const LoginScreen());
      notifyListeners();
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
}
