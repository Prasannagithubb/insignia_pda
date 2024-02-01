import 'package:get/get_navigation/get_navigation.dart';
import 'package:insignia_pda/Constant/constantroutes.dart';
import 'package:insignia_pda/pages/Dashboard/screens/dashboard.dart';
import 'package:insignia_pda/pages/Documentbatch/screens/documentbatch.dart';
import 'package:insignia_pda/pages/loginscreen/screens/Login.dart';
import 'package:insignia_pda/pages/stocklisting/screens/stocklisting.dart';

class Routes {
  static List<GetPage<dynamic>> allRoutes = [
    GetPage<dynamic>(
        name: ConstantRoutes.dashboard,
        page: () => const Dashboard(),
        transition: Transition.zoom,
        transitionDuration: const Duration(seconds: 1)),
    GetPage<dynamic>(
      name: ConstantRoutes.login,
      page: () => const LoginScreen(),
      // transition: Transition.fade,
      // transitionDuration: const Duration(seconds: 1)
    ),
     GetPage<dynamic>(
      name: ConstantRoutes.stocklist,
      page: () => const StockList(),
      // transition: Transition.fade,
      // transitionDuration: const Duration(seconds: 1)
    ),
     GetPage<dynamic>(
      name: ConstantRoutes.documentbatch,
      page: () => const DocumnetBatch(),
      // transition: Transition.fade,
      // transitionDuration: const Duration(seconds: 1)
    ),
  ];
}

