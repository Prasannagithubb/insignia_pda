import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:insignia_pda/Constant/Screen.dart';
import 'package:insignia_pda/Constant/constantroutes.dart';

class StockAudit extends StatefulWidget {
  const StockAudit({super.key});

  @override
  State<StockAudit> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StockAudit> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Stock Auditing'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: Screens.bodyheight(context) * 0.02,
          ),
          child: Column(
          
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: Screens.bodyheight(context) * 0.03),
                    child: Text('Stock Counting',
                        style: theme.textTheme.headlineLarge
                            ?.copyWith(color: Colors.blue)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Future.delayed(const Duration(seconds: 0), () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Loaded'),
                                content: const Text('List will be loaded soon'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('ok'))
                                ],
                              );
                            });
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(9),
                      width: 75.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          'Load',
                          style: theme.textTheme.titleSmall
                              ?.copyWith(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Screens.bodyheight(context) * 0.01,
              ),
              Row(children: <Widget>[
                const Expanded(
                    child: Divider(
                  thickness: 0.9,
                )),
                Text(" open stock audit jobs ",
                    style: theme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const Expanded(child: Divider()),
              ]),
              SizedBox(
                height: Screens.bodyheight(context) * 0.01,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: GestureDetector(
                          onTap: () {
                            Get.toNamed(ConstantRoutes.stocklist);
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: Screens.width(context) * 0.08),
                            alignment: Alignment.centerLeft,
                            height: Screens.bodyheight(context) * 0.07,
                            width: Screens.width(context),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(05)),
                                color: Colors.blue),
                            child: Text(
                              'TEST BUSON',
                              style: theme.textTheme.titleLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
