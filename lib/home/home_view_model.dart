import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider =
StateNotifierProvider<HomeViewModel, HomeState>(
        (ref) => HomeViewModel());

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel(): super(HomeState());
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default('')  String text,
  }) = _HomeState;

  HomeState._();
}