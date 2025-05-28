import 'package:advancedcourse/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        SvgPicture.asset(Assets.svgsDocdocLogo),
        SizedBox(
          width: 20.w,
        ),
        Text('OnBordingViewBody'),
      ],
    );
  }
}
