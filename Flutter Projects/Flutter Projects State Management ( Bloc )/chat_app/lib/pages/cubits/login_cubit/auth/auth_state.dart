
abstract class AuthState {}

class AuthInitial extends AuthState {}


class LoginLoading extends AuthState {}
class LoginSuccess extends AuthState {}
class LoginFailure extends AuthState {
  String errmessage;
  LoginFailure({required this.errmessage});
}

class RegisterLoading extends AuthState {}
class RegisterSuccess extends AuthState {}
class RegisterFailure extends AuthState {
  String errmessage;
  RegisterFailure({required this.errmessage});
}
