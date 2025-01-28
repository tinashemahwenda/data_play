import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = '';
  late String type;
  String punchline = '';

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)['setup'];
        type = json.decode(response.body)['type'];
        punchline = json.decode(response.body)['punchline'];
        print(data);
      });
    } else {
      print(response);
    }
  }

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
              child: Text('Load data'),
              onPressed: () => fetchData(),
            ),
            Spacer(),
            ShadBadge(child: Text(type)),
            Text(
              data,
              style: ShadTheme.of(context).textTheme.p,
            ),
            Text(
              'Punchline: $punchline',
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
