import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/radio_cubit.dart';
import 'cubit/radio_state.dart';

class RadioButtonsWidget extends StatelessWidget {
  const RadioButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioCubit, RadioCubitState>(
      bloc: context.read<RadioCubit>(),
      builder: (context, state) {
        return ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return RadioListTile(
              value: index,
              groupValue: state.selectedValue,
              onChanged: (value) =>
                  context.read<RadioCubit>().selectRadio(value!),
              title: Text('Radio Button $index'),
            );
          },
        );
      },
    );
  }
}
