import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm_sample/pop_up/pop_up_view_model.dart';

class PopUpPage extends ConsumerWidget {
  const PopUpPage({Key? key}) : super(key: key);

  static MaterialPageRoute<PopUpPage> createPageRoute(String text) {
    return MaterialPageRoute(builder: (BuildContext context) {
      return ProviderScope(
        overrides: [
          popUpViewModelProvider
              .overrideAs((watch) => popUpViewModelFamily(text)),
        ],
        child: const PopUpPage(),
      );
    });
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final provider = context.read(popUpViewModelProvider);
    final viewModel = context.read(provider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('pop up page'),
      ),
      body: Center(
        child: Text(viewModel.text),
      ),
    );
  }
}

/// PopUpViewModelをアンチパターンで実装したとき、以下のように[text]をセットしなければならない
///
/// ```
/// class PopUpPage extends ConsumerWidget {
///   const PopUpPage(this.text, {Key? key}) : super(key: key);
///
///   final String text;
///
///   @override
///   Widget build(BuildContext context, ScopedReader watch) {
///     context.read(popUpViewModelProvider.notifier).setText(text);
///
/// ```
