import 'package:advancedcourse/core/helpers/extensions.dart';
import 'package:advancedcourse/core/routing/routes.dart';
import 'package:advancedcourse/core/theming/colors.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Already have an account? ',
        style: TextStyles.font13GrayRegular,
      ),
      TextSpan(
        recognizer: TapGestureRecognizer()
          ..onTap = () => context.pushNamed(Routes.signup),
        text: 'Sign up',
        style: TextStyles.font13GrayRegular
            .copyWith(color: ColorsManager.mainBlue, height: 1.5),
      ),
    ]));
  }
}
