import 'package:advancedcourse/core/helpers/extensions.dart';
import 'package:advancedcourse/core/routing/routes.dart';
import 'package:advancedcourse/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: ColorsManager.mainBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide.none),
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            child: const Text('Next')),
      ),
    );
  }
}
