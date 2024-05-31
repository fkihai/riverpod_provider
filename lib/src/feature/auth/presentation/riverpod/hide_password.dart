import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hide_password.g.dart';

@riverpod
class HidePassword extends _$HidePassword {
  @override
  bool build() => true;
  bool isHidePassword() {
    state = !state;
    return state;
  }
}
