import 'package:flutter/material.dart';

class PopUpPage extends StatelessWidget {
  const PopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pop up page'),
      ),
      body: Center(
        child: Text('foo bar'),
      ),
    );
  }
}
