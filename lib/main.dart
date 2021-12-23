
import 'package:bloc/bloc.dart';
import 'package:counter_laith/CounterScreen.dart';
import 'package:counter_laith/sherd/blocobserver.dart';
import 'package:flutter/material.dart';

void main() {

  Bloc.observer = MyBlocObserver();

  runApp(Test());
}

class Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : CounterScreen(),
    );
  }

}
