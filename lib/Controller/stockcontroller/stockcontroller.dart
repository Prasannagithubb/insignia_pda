import 'package:flutter/material.dart';
import 'package:insignia_pda/models/stockauditmodel/stockscanlist.dart';
import 'package:insignia_pda/pages/stocklisting/screens/stocklisting.dart';

class StockController extends ChangeNotifier {
  inti() {
    clearalldata();
    notifyListeners();
  }

  void clearalldata() {
    batchModelList = [];
    notifyListeners();
  }

  navigateToStocklist(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const StockList()));
  }

  List<BatchModel> batchModelList = [];
  void stockAuditMethod() {
    batchModelList = [
      BatchModel(
        batchBarcode: "PESTK-14329",
        batchItemCode: "542D004C",
        bin: "FGFG-L1-EG-904-B",
        quantity: 21,
      ),
      BatchModel(
        batchBarcode: "PESTK-14329",
        batchItemCode: "542D004C",
        bin: "FGFG-L1-EG-904-B",
        quantity: 21,
      ),
    ];
    notifyListeners();
  }
}
