import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blocpattern/counterBloc.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // how to refer CounterBloc from here
    // make a new variable
    // ignore: close_sinks
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          // consume state changes
          BlocBuilder<CounterBloc, int>(
            // arguments - Bloc and return type/ type of the output
           builder: (BuildContext context, int state){
             return Text('Counter value : $state',
               style: TextStyle(
                   fontSize: 30.0
               ),
             );
           },
          ),

          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Increment'),
                onPressed: () {
                  // add event to the bloc when pressing the increment button
                  // when increment pressed pass increment event to the bloc
                  _counterBloc.add(CounterEvents.increment);
                      // on new even access the bloc variable and add it passing the event
                },
              ),

              RaisedButton(
                child: Text('Decrease'),
                onPressed: () {
                  // add event to the bloc when pressing the decrement button
                  // when decrement pressed pass decrement event to the bloc
                  _counterBloc.add(CounterEvents.decrement);
                },
              ),
            ],
          )
        ],
      ),
    );
  }



}
