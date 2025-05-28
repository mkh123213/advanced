import 'package:advancedcourse/core/helpers/extensions.dart';
import 'package:advancedcourse/core/routing/routes.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_cubit.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInBlocLIstner extends StatelessWidget {
  const LogInBlocLIstner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(),
                  ));
        }, error: (message) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'))
                ],
              );
            },
          );
        }, success: (data) {
          Navigator.pop(context);
          context.pushNamed(Routes.homeScreen);
        });
        // TODO: implement listener
      },
      child: const SizedBox.shrink(),
    );
  }
}
