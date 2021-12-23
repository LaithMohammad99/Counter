import 'package:counter_laith/cuibt/cubit.dart';
import 'package:counter_laith/cuibt/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  int counter = 1;

  @override

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state){},
        builder: (context,state)=>Scaffold(
          backgroundColor: Colors.blueGrey[200],
          appBar: AppBar(
              title: Text('Counter'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    CounterCubit.get(context).muines();
                    print(counter);
                  },
                  child: Text(
                    'Muines ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    CounterCubit.get(context).plus();
                    print(counter);
                  },
                  child: Text(
                    'Plus ',
                  ),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 1.state less contain one class

// 1.state full contain tow class one provid widget
// 2.seconde class provid state from this widget
