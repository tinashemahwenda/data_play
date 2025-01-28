import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp(
      home: HomePage(),
    );
  }
}
