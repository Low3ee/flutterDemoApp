import 'package:app1/state_management/bloc/increment_value_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementNumberWithBlocPage extends StatefulWidget {
  const IncrementNumberWithBlocPage({super.key});

  @override
  State<IncrementNumberWithBlocPage> createState() =>
      _IncrementNumberWithBlocPageState();
}

class _IncrementNumberWithBlocPageState
    extends State<IncrementNumberWithBlocPage> {
  late IncrementValueBloc _incValueBloc;

  @override
  void initState() {
    super.initState();
    _incValueBloc = IncrementValueBloc();
  }

  @override
  void dispose() {
    print("char lang");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Increment with bloc Page"),
        centerTitle: true,
      ),
      body:
           Center(child: BlocBuilder<IncrementValueBloc, IncrementValueState>(
            bloc: _incValueBloc,
            builder: (context, state) {
              return Text("${state.value}",
          style: const TextStyle(fontSize: 30),);
            },
          ) ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incValueBloc.add(AddEvent());
        },
        child:
          const Text("+", style: TextStyle(fontSize: 30),)
        ),
      );
  }
}
