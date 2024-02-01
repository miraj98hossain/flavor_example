import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final String flavor;
  const App({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flavor Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(flavor),
          ),
          body: GestureDetector(
            onTap: () async {
              var db = FirebaseFirestore.instance;
              await db.collection(flavor).add({"test": "test"});
            },
            child: const Center(
              child: Text('Testing Firebase'),
            ),
          )),
    );
  }
}
