import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:insignia_pda/Constant/all_routes.dart';
import 'package:insignia_pda/Controller/Dashboardcontroller/dashcontroller.dart';
import 'package:insignia_pda/Controller/Logincontroller/logincontroller.dart';
import 'package:insignia_pda/Themes/mycolorschemered.dart';
import 'package:insignia_pda/Themes/theme_manager.dart';
import 'package:insignia_pda/pages/splashscreen/screens/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeManager()),
          ChangeNotifierProvider(create: (_) => LoginController()),
          ChangeNotifierProvider(create: (_) => DashController()),
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Nunito',
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red,),
              colorScheme: mycolorschemered,
              useMaterial3: true,
            ),
            getPages: Routes.allRoutes,
            home: const SplashScreen()));
  }
}
