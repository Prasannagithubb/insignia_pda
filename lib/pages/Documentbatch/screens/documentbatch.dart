import 'package:flutter/material.dart';

class DocumnetBatch extends StatefulWidget {
  const DocumnetBatch({super.key});

  @override
  State<DocumnetBatch> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DocumnetBatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document Batch Selection '),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [Text('welcome to batch page')],
        ),
      ),
    );
  }
}
