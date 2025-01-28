import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            ShadButton(
              child: Text('Load Data'),
              onPressed: () {},
            ),
            Spacer(),
            Text(
              'API Data',
              style: ShadTheme.of(context).textTheme.p,
            ),
            Spacer(),
            Spacer(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
