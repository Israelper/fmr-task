// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import '../cubit/next_cubit.dart';

class NextScreenView extends StatefulWidget {
  const NextScreenView({Key? key}) : super(key: key);

  @override
  State<NextScreenView> createState() => _NextScreenViewState();
}

class _NextScreenViewState extends State<NextScreenView> {
  @override
  void initState() {
    super.initState();
    context.read<NextCubit>().init(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: UiProgress(),
      ),
    );
  }
}
