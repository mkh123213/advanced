import 'package:advancedcourse/features/on_boarding/presentation/widgets/on_bording_view_body.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBordingViewBody(),
      ),
    );
  }
}
