import 'package:basketball_counter_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit() : super(initialState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement ({required String TeamName,required int buttonNamber})
  {
    if (TeamName== 'A'){
      teamAPoints +=buttonNamber;
      emit(CounterTeamA());
    }else {
      teamBPoints +=buttonNamber;
      emit(CounterTeamB());
    }
  }


 
}