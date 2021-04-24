import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm_sample/home/home_view_model.dart';
import 'package:riverpod_mvvm_sample/pop_up/pop_up_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final viewModel = context.read(homeViewModelProvider.notifier);
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
            TextFormField(onChanged: viewModel.changeText),
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

  void _onFinish(BuildContext context) {
    final text = context.read(homeViewModelProvider).text;
    Navigator.push(context, PopUpPage.createPageRoute(text));
  }
}
