import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

 Future<void> loginUser({required String email,required String password }) async {
    emit(LoginLoading());
    try {
  UserCredential user = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
          emit(LoginSuccess()); 
}on FirebaseAuthException catch(ex){
  if (ex.code == 'user-not-found')
  {
emit(LoginFailure(errmessage: 'User Not Found'));
  } else if(ex.code == 'wrong-password')
  {
    emit(LoginFailure(errmessage: 'Wrong Password'));
  }
}
 on Exception catch (e) {
      emit(LoginFailure(errmessage:'Something Went Wrong' ));
}
  }
 

 Future<void> registerUser(
      {required String email, required String password}) async {
    emit(RegisterLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFailure(errmessage: 'weak password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFailure(errmessage: 'email already exists'));
      }
    } on Exception catch (e) {
      emit(RegisterFailure(errmessage: 'There Was an error please try again'));
    }
  }
}