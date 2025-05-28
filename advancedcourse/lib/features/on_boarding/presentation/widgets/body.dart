import 'package:advancedcourse/core/theming/styles.dart';
import 'package:advancedcourse/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(Assets.svgsDocdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [
                0.1,
                0.3
              ],
                  colors: [
                Colors.white,
                Colors.white.withOpacity(0),
              ])),
          child: const Image(
            image: AssetImage(Assets.imagesOnboardingDoctor),
          ),
        ),
        Positioned(
          bottom: 80.h,
          // right: 20,
          // left: 20,
          child: Text(
            'Best Doctor \n Appointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
            bottom: 0.h,
            child: Text(
              'Manage and schedule all of your medical appointments easily \nwith Docdoc to get a new experience.',
              style: TextStyles.font13GrayRegular,
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
