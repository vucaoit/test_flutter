import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/test_cubit.dart';

class Contai extends StatefulWidget {
  const Contai({super.key});

  @override
  State<Contai> createState() => _ContaiState();
}

class _ContaiState extends State<Contai> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        heightFactor: 0.5, child: Text(context.read<TestCubit>().state.data));
  }
}
