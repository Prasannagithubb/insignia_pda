import 'package:flutter/material.dart';
import 'package:insignia_pda/pages/Documentbatch/screens/documentbatch.dart';
import 'package:insignia_pda/pages/stockauditing/screens/stockaudit.dart';

class DashController extends ChangeNotifier {
  navigateToStock(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const StockAudit()));
  }

  navigateToDocument(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const DocumnetBatch()));
  }
}