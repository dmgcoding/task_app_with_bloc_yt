part of 'basic_auth_bloc.dart';

@immutable
sealed class BasicAuthEvent {}

final class EmailChanged extends BasicAuthEvent {
  EmailChanged(this.email);
  final String email;
}

final class PasswordChanged extends BasicAuthEvent {
  PasswordChanged(this.password);
  final String password;
}

final class FormSubmit extends BasicAuthEvent {}
