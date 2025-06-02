import 'package:advancedcourse/core/helpers/spacing.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:advancedcourse/core/widgets/custom_text_button.dart';
import 'package:advancedcourse/features/sign_up/logic/sign_up_cubit.dart';
import 'package:advancedcourse/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:advancedcourse/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                highspace(height: 8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular
                      .copyWith(color: Colors.black),
                ),
                highspace(height: 36),
                Column(
                  children: [
                    const SignupForm(),
                    highspace(height: 40),
                    CustomTextButton(
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                      text: "Create Account",
                    ),
                    highspace(height: 36),
                    // const TermsAndConditionsText(),
                    // verticalSpace(30),
                    // const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
