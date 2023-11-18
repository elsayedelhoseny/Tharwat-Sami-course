import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/services/weather_service.dart';

import '../../models/weather_model.dart';

class weatherCubit extends Cubit<weatherState>
{
  weatherCubit(this.weatherservice) : super(weatherinitial());
  WeatherService weatherservice;
  String? cityName;
  WeatherModel? Weathermodel;
  void getWeather({required String cityName}) async {
    emit(weatherLoding());
   try {
 Weathermodel =await  weatherservice.getWeather(cityName: cityName);
  emit(weatherSuccess());
} on Exception catch (e) {
   emit(weatherFailue());
}
  }
}