import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/repos/auth_repo/auth_repo.dart';

part 'basic_auth_event.dart';
part 'basic_auth_state.dart';

class BasicAuthBloc extends Bloc<BasicAuthEvent, BasicAuthState> {
  BasicAuthBloc(this._authRepo) : super(const BasicAuthState()) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_pwdChanged);
    on<FormSubmit>(_formSubmit);
  }

  final AuthRepo _authRepo;

  void _emailChanged(EmailChanged event, Emitter<BasicAuthState> emit) {
    final newValueForEmail = event.email;
    final newState = state.copyWith(email: newValueForEmail);
    emit(newState);
  }

  void _pwdChanged(PasswordChanged event, Emitter<BasicAuthState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _formSubmit(
      FormSubmit event, Emitter<BasicAuthState> emit) async {
    //check for empty values
    final email = state.email;
    final password = state.password;
    if (email.isEmpty || password.isEmpty) return;

    final user =
        await _authRepo.createUserWithUsernamePassword(email, password);
    print("user: $user");
    if (user != null) {
      emit(state.copyWith(status: FormStatus.success));
    }
  }
}
