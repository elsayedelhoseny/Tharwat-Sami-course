part of 'login_cubit_cubit.dart';

@immutable
 class LoginCubitState {}

 class LoginCubitInitial extends LoginCubitState {}

class LoginCubitLoading extends LoginCubitState {}
class LoginCubitSuccess extends LoginCubitState {}
class LoginCubitFailerd extends LoginCubitState {
  String errMessege;
  LoginCubitFailerd({required this.errMessege });
}