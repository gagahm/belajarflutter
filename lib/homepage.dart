import 'package:flutter/material.dart';

import 'homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int hitung = 0;
//function
  void samsul() {
    setState(() {
      hitung++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          samsul();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          'Data yang ke ${hitung.toString()}',
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
