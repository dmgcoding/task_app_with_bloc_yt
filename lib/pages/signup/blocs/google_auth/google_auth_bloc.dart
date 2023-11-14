import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/repos/auth_repo/auth_repo.dart';

part 'google_auth_event.dart';
part 'google_auth_state.dart';

class GoogleAuthBloc extends Bloc<GoogleAuthEvent, GoogleAuthState> {
  GoogleAuthBloc(this._authRepo) : super(GoogleAuthInitial()) {
    on<SigninEvent>(_signinWithGoogle);
  }

  final AuthRepo _authRepo;

  Future<void> _signinWithGoogle(
      SigninEvent event, Emitter<GoogleAuthState> emit) async {
    emit(GoogleAuthPending());
    final user = await _authRepo.signinWithGoogle();
    if (user == null) {
      return emit(GoogleAuthError());
    }

    // await Future.delayed(const Duration(seconds: 3));

    emit(GoogleAuthSuccess());
  }
}
