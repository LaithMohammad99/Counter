import 'package:bloc/bloc.dart';
import 'package:counter_laith/cuibt/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{

  CounterCubit() :super(CounterInitalState());
   static CounterCubit get(context)=>BlocProvider.of(context);
   var counter=1;

   void muines(){

     counter--;
     emit(CounterMuniceState());
   }
   void plus(){

     counter++;
     emit(CounterPlusState());
   }
}