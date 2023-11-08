import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/contai.dart';
import 'package:flutter_example/test_cubit.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: ElevatedButton(
          onPressed: () {
            final bloc = context.read<TestCubit>();
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  print("dell tin : ${bloc.state.data}");
                  return BlocProvider.value(
                    value: bloc,
                    child: Contai(),
                  );
                });
          },
          child: Text("Show bottom sheet"),
        ));
  }
}
