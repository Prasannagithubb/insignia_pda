import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insignia_pda/Constant/Screen.dart';
import 'package:insignia_pda/Constant/constantroutes.dart';
import 'package:insignia_pda/Controller/Dashboardcontroller/dashcontroller.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
              Get.offAllNamed(ConstantRoutes.login);
            },
            icon: const Icon(Icons.arrow_back)),
        automaticallyImplyLeading: false,
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Screens.width(context) * 0.04,
          vertical: Screens.bodyheight(context) * 0.03,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.read<DashController>().navigateToStock(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: Screens.bodyheight(context) * 0.4,
                width: Screens.width(context),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'lib/Assets/Audits.png',
                      scale: 3,
                    ),
                    Text(
                      'STOCK AUDITING',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: Screens.bodyheight(context) * 0.001,
            // ),
            GestureDetector(
              onTap: () {
                Get.toNamed(ConstantRoutes.documentbatch);
                // context.read<DashController>().navigateToDocument(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: Screens.bodyheight(context) * 0.4,
                width: Screens.width(context),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'lib/Assets/folder_149338.png',
                      scale: 3,
                      // width: 200,
                      // height: Screens.bodyheight(context) * 0.3,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'DOCUMENT \nBATCH SELECTION',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.blue),
                    ),
                    // Image.asset('lib/Assets/document1.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
