
import 'package:flutter/material.dart';

@immutable
 class RegisterCubitState {}

 class RegisterCubitInitial extends RegisterCubitState {}

class RegisterCubitLoading extends RegisterCubitState {}
class RegisterCubitSuccess extends RegisterCubitState {}
class RegisterCubitFailerd extends RegisterCubitState {
  String errMessege;
  RegisterCubitFailerd({required this.errMessege });
}