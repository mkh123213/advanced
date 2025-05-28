import 'package:advancedcourse/core/theming/colors.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'By signing up, you agree to our ',
        style: TextStyles.font13GrayRegular,
      ),
      TextSpan(
        text: 'Terms of Service',
        style: TextStyles.font13GrayRegular
            .copyWith(color: ColorsManager.mainBlue),
      ),
      TextSpan(
        text: ' and ',
        style: TextStyles.font13GrayRegular,
      ),
      TextSpan(
        text: 'Privacy Policy',
        style: TextStyles.font13GrayRegular
            .copyWith(color: ColorsManager.mainBlue, height: 1.5),
      ),
    ]));
  }
}
