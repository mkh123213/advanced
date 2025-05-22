import 'package:advancedcourse/core/helpers/spacing.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:advancedcourse/core/widgets/custom_text_button.dart';
import 'package:advancedcourse/core/widgets/custom_text_form_filled.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/already_have_an_account.dart';
import 'package:advancedcourse/features/log_in/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  bool ispassword = false;
  @override
  Widget build(BuildContext context) {
    return Column(
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
        CustomTextFormField(
          hintText: 'Email',
        ),
        highspace(height: 30),
        CustomTextFormField(
          hintText: 'Password',
          ispassword: ispassword,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                ispassword = !ispassword;
              });
            },
            child: Icon(!ispassword ? Icons.visibility : Icons.visibility_off),
          ),
        ),
        highspace(height: 30),
        CustomTextButton(onPressed: () {}, text: 'text'),
        highspace(height: 30),
        Align(
            alignment: AlignmentDirectional.centerStart,
            child: TermsAndConditions()),
        highspace(height: 20),
        AlreadyHaveAnAccount()
      ],
    );
  }
}
