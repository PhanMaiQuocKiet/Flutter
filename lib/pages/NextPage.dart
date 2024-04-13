
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirstapp/pages/FirstPage.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NextPage'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Content(),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
             Navigator.pop(context);
            },
            child: const Text(
              'Back',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}


class Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Text(
      // Nội dung của lớp Content
      "Cảm ơn cô lần nựa <3",
      style: TextStyle(fontSize: 30,color: Colors.red),
    );
  }
}