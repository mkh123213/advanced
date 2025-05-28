import 'package:advancedcourse/core/helpers/spacing.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:advancedcourse/core/widgets/custom_text_button.dart';
import 'package:advancedcourse/core/widgets/custom_text_form_filled.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_request_body.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_cubit.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/dont_have_account.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/email_and_pawwword.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/login_bloc_listner.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LogInViewBody',
            style: TextStyles.font24BlueBold,
          ),
          highspace(height: 10),
          Text(
            'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
            style: TextStyles.font13GrayRegular,
          ),
          highspace(height: 40),
          EmailAndPassword(),
          highspace(height: 30),
          CustomTextButton(
              onPressed: () {
                validateThenLogIn(context);
              },
              text: 'text'),
          highspace(height: 30),
          const Align(
              alignment: AlignmentDirectional.centerStart,
              child: TermsAndConditions()),
          highspace(height: 20),
          const AlreadyHaveAnAccount(),
          const LogInBlocLIstner()
        ],
      ),
    );
  }

  void validateThenLogIn(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().logIn();
    }
  }
}
