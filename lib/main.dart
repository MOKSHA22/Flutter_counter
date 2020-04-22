import 'package:blocpattern/counterBloc.dart';
import 'package:blocpattern/counterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blocpattern/counterBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // normal way - body: CounterScreen(),
        // how to access CounterBloc from CounterScreen
        // wrap the CounterScreen() widget by BlockProvider Widget and import Flutter.Bloc.dart
      body: BlocProvider(
            create: (BuildContext context) => CounterBloc(),
            child : CounterScreen()
          // BlocProvider passes CounterBloc instance to the CounterScreen widget
          // this makes CounterScreen can access CounterBloc
        ),
      ),
    );

  }
  }
