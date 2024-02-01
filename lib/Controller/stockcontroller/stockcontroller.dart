import 'package:flutter/material.dart';
import 'package:insignia_pda/pages/stocklisting/screens/stocklisting.dart';

class DashController extends ChangeNotifier {
  navigateToStocklist(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const StockList()));
  }
}
