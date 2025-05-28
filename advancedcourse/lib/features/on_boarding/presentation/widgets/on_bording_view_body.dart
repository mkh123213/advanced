import 'package:advancedcourse/core/utils/app_images.dart';
import 'package:advancedcourse/features/on_boarding/presentation/widgets/body.dart';
import 'package:advancedcourse/features/on_boarding/presentation/widgets/logo.dart';
import 'package:advancedcourse/features/on_boarding/presentation/widgets/on_boarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: const Column(
          children: [
            Logo(),
            Body(),
            OnBoardingButtons(),
          ],
        ),
      ),
    );
  }
}
