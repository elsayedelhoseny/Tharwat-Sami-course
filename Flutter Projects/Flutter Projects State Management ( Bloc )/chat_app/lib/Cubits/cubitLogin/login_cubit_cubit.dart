import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(LoginCubitInitial());

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginCubitLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginCubitSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(LoginCubitFailerd(errMessege: 'User Not Found'));
      } else if (ex.code == 'wrong-password') {
        emit(LoginCubitFailerd(errMessege: 'Wrong Password'));
      }
    } catch (e) {
      emit(LoginCubitFailerd(errMessege: 'Someyhing Went Wrong'));
    }
  }
}
