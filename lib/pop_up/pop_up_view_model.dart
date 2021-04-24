import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up_view_model.freezed.dart';

final popUpViewModelFamily =
    StateNotifierProvider.family<PopUpViewModel, PopUpState, String>(
        (ref, text) => PopUpViewModel(text: text));

final popUpViewModelProvider =
    ScopedProvider<StateNotifierProvider<PopUpViewModel, PopUpState>>(
        (ref) => throw Error());

/// アンチパターン
///
/// [PopUpState.state.text]は画面表示時から確定する値である。
/// しかし、この実装だと以下のような問題が起きる。
///
/// - [setText]が外部へ公開されているので画面表示時以外に値を変更可能になってしまう
/// - View側で[setText]がよばれるタイミングがビルド後なので、余計なビルドが走ってしまう
///
/// ```
/// class PopUpViewModel extends StateNotifier<PopUpState> {
///   PopUpViewModel(): super(PopUpState());
///
///   void setText(String text) {
///     state = state.copyWith(text: text);
///   }
///
///   String get text => state.text;
/// }
///
/// @freezed
/// abstract class PopUpState with _$PopUpState {
///   factory PopUpState({
///     @Default('') String text,
///   }) = _PopUpState;
///
///   PopUpState._();
/// }
/// ```
///
/// これを回避するためには、[PopUpViewModel]のコンストラクタでtextを受け取り、
/// コンストラクタ内で[PopUpState]を初期化するような実装にする必要がある。
///
class PopUpViewModel extends StateNotifier<PopUpState> {
  PopUpViewModel({required String text}) : super(PopUpState(text: text));

  String get text => state.text;
}

@freezed
abstract class PopUpState with _$PopUpState {
  factory PopUpState({
    required String text,
  }) = _PopUpState;

  PopUpState._();
}
