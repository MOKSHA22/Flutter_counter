import 'package:bloc/bloc.dart';

enum CounterEvents {
  increment,
  decrement
}
// initialize all the events THAT THE BLOC CAN ACCESS AS inputs
// only the increment and decrement change the state of the application,
// therefore, define them as enum
// enum - for the simplicity
// most of the time we use classes to add details that changes states

class CounterBloc extends Bloc<CounterEvents, int>{
  // inputs - events that the counter bloc can access as inputs - counterEvents
  //        - data type

  @override
  // TODO: implement initialState
  int get initialState => 0;
  // initial state is 0 because we need our counter value to be zero when app starts

  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    // this function defines how the states change due to events occur

    // this function to be asynchronous because it continuously accepts new inputs
    // and continuously provide new outputs
    // that need to be run in a different thread then the app runs smoothly

    // TODO: implement mapEventToState
    // we need to continuously accepts button click events to increase the count
    // and change the state of the application which is the count accordingly


    // explicitly figure out what even we have received
    switch(event){
      case CounterEvents.increment:
        // when we encounter an increment event
        // we have to increase the number by one than the current state and return
        // for that we should access the current event by 'state'

        // returning values from this function
           // 1- return - returns the value and terminate the function
           // 2 - yield - return the value but does not terminate the function
        yield state + 1;
        break;

      case CounterEvents.decrement:
        yield state - 1;
        break;

    }

  }

}