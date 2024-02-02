import 'package:flutter/material.dart';
import 'package:insignia_pda/Constant/Screen.dart';
import 'package:insignia_pda/Controller/stockcontroller/stockcontroller.dart';
import 'package:provider/provider.dart';

class StockList extends StatefulWidget {
  const StockList({super.key});

  @override
  State<StockList> createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<StockController>().inti();
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Stock Listing',
          style: theme.textTheme.headlineMedium?.copyWith(color: Colors.blue),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: Screens.width(context) * 0.08),
            alignment: Alignment.centerLeft,
            height: Screens.bodyheight(context) * 0.07,
            width: Screens.width(context),
            decoration: const BoxDecoration(color: Colors.blue),
            child: Text(
              'TEST BUSON',
              style: theme.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: ' Scan Batch Barcode',
              // contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: ' Scan item Barcode',
              // contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: ' Scan Bin',
              // contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: ' Quantity',
              // contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                top: Screens.bodyheight(context) * 0.02,
              ),
              height: 80,
              width: Screens.width(context) * 0.15,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Screens.width(context) * 0.1,
              right: Screens.width(context) * 0.1,
            ),
            child: Row(children: <Widget>[
              const Expanded(
                  child: Divider(
                      // thickness: 0.9,
                      )),
              Text("Batch codes",
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Expanded(child: Divider()),
            ]),
          ),
        ],
      ),
    );
  }
}
