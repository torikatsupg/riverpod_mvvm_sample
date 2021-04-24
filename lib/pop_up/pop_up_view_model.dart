import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up_view_model.freezed.dart';

final popUpViewModelProvider =
StateNotifierProvider<PopUpViewModel, PopUpState>(
        (ref) => PopUpViewModel());

class PopUpViewModel extends StateNotifier<PopUpState> {
  PopUpViewModel(): super(PopUpState());
}

@freezed
abstract class PopUpState with _$PopUpState {
  const factory PopUpState({
    @Default('')  String text,
  }) = _PopUpState;

  PopUpState._();
}
