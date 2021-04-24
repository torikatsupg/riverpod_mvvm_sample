import 'package:flutter/material.dart';
import 'package:riverpod_mvvm_sample/pop_up/pop_up_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('enter text'),
            const SizedBox(height: 16),
            TextFormField(onChanged: _onChangeText),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _onFinish(context),
              child: const Text('finish'),
            ),
          ],
        ),
      ),
    );
  }

  void _onChangeText(String text) {}

  void _onFinish(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<PopUpPage>(
        builder: (BuildContext context) => PopUpPage(),
      ),
    );
  }
}
