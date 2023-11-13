part of 'basic_auth_bloc.dart';

enum FormStatus {
  initial,
  pending,
  success,
  error,
}

@immutable
final class BasicAuthState {
  const BasicAuthState({
    this.email = "",
    this.password = "",
    this.status = FormStatus.initial,
    this.errorMsg,
  });
  final String email;
  final String password;
  final FormStatus status;
  final String? errorMsg;

  BasicAuthState copyWith({
    String? email,
    String? password,
    FormStatus? status,
    String? errorMsg,
  }) =>
      BasicAuthState(
        email: email ?? this.email,
        password: password ?? this.password,
        status: status ?? this.status,
        errorMsg: errorMsg ?? this.errorMsg,
      );
}
