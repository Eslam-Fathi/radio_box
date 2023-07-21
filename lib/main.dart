import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_box/radio_screen.dart';

import 'cubit/radio_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Radio Buttons',
        home: Scaffold(
          appBar: AppBar(title: const Text('Radio Buttons')),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: RadioButtonsWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
