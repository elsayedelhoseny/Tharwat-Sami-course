import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scholar_chat/Cubits/cubitRegister/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterCubitState> {
  RegisterCubit() : super(RegisterCubitState());

  Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterCubitLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterCubitSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        RegisterCubitFailerd(errMessege: 'Weak Password ');
      } else if (ex.code == 'Email-already-in-use') {
        RegisterCubitFailerd(errMessege: 'Email already in use');
      }
    } catch (e) {
      emit(RegisterCubitFailerd(errMessege: 'Something Went Wrong'));
    }
  }
}
