part of 'google_auth_bloc.dart';

@immutable
sealed class GoogleAuthEvent {}

final class SigninEvent extends GoogleAuthEvent {}
