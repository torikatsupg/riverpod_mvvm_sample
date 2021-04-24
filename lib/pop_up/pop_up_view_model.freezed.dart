// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pop_up_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PopUpStateTearOff {
  const _$PopUpStateTearOff();

  _PopUpState call({required String text}) {
    return _PopUpState(
      text: text,
    );
  }
}

/// @nodoc
const $PopUpState = _$PopUpStateTearOff();

/// @nodoc
mixin _$PopUpState {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopUpStateCopyWith<PopUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopUpStateCopyWith<$Res> {
  factory $PopUpStateCopyWith(
          PopUpState value, $Res Function(PopUpState) then) =
      _$PopUpStateCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$PopUpStateCopyWithImpl<$Res> implements $PopUpStateCopyWith<$Res> {
  _$PopUpStateCopyWithImpl(this._value, this._then);

  final PopUpState _value;
  // ignore: unused_field
  final $Res Function(PopUpState) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PopUpStateCopyWith<$Res> implements $PopUpStateCopyWith<$Res> {
  factory _$PopUpStateCopyWith(
          _PopUpState value, $Res Function(_PopUpState) then) =
      __$PopUpStateCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$PopUpStateCopyWithImpl<$Res> extends _$PopUpStateCopyWithImpl<$Res>
    implements _$PopUpStateCopyWith<$Res> {
  __$PopUpStateCopyWithImpl(
      _PopUpState _value, $Res Function(_PopUpState) _then)
      : super(_value, (v) => _then(v as _PopUpState));

  @override
  _PopUpState get _value => super._value as _PopUpState;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_PopUpState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PopUpState extends _PopUpState {
  _$_PopUpState({required this.text}) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'PopUpState(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopUpState &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$PopUpStateCopyWith<_PopUpState> get copyWith =>
      __$PopUpStateCopyWithImpl<_PopUpState>(this, _$identity);
}

abstract class _PopUpState extends PopUpState {
  factory _PopUpState({required String text}) = _$_PopUpState;
  _PopUpState._() : super._();

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PopUpStateCopyWith<_PopUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
