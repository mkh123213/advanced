import 'package:advancedcourse/core/helpers/app_regex.dart';
import 'package:advancedcourse/core/helpers/spacing.dart';
import 'package:advancedcourse/core/routing/app_router.dart';
import 'package:advancedcourse/core/widgets/custom_text_form_filled.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_cubit.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/validate_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool ispassword = false;
  late TextEditingController passwordController;
  bool hasNumber = false;
  bool hasSpecialChar = false;

  bool hasUppercase = false;

  bool hasLowercase = false;

  bool isLongEnough = false;
  @override
  void initState() {
    // TODO: implement initState
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();

    setupPasswordListener();
  }

  void setupPasswordListener() {
    passwordController.addListener(() {
      setState(() {
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        isLongEnough = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Form(
        key: cubit.formKey,
        child: Column(children: [
          CustomTextFormField(
            controller: cubit.emailController,
            validator: (p0) {
              if (p0!.isEmpty || !AppRegex.isEmailValid(p0)) {
                return 'Enter a valid email';
              }
            },
            hintText: 'Email',
          ),
          highspace(height: 30),
          CustomTextFormField(
            controller: passwordController,
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Password is required';
              }
            },
            hintText: 'Password',
            ispassword: ispassword,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  ispassword = !ispassword;
                });
              },
              child:
                  Icon(!ispassword ? Icons.visibility : Icons.visibility_off),
            ),
          ),
          highspace(height: 30),
          ValidatePassword(
              hasNumber: hasNumber,
              hasSpecialChar: hasSpecialChar,
              hasUppercase: hasUppercase,
              hasLowercase: hasLowercase,
              isLongEnough: isLongEnough)
        ]));
  }

  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();
  }
}
