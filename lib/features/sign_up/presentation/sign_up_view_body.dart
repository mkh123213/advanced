import 'package:advancedcourse/core/helpers/spacing.dart';
import 'package:advancedcourse/core/theming/styles.dart';
import 'package:advancedcourse/core/widgets/custom_text_form_filled.dart';
import 'package:flutter/widgets.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SignUpViewBody', style: TextStyles.font24BlueBold),
            highspace(height: 40),
            CustomTextFormField(hintText: 'name', validator: (p0) {}),
            highspace(height: 10),
            CustomTextFormField(hintText: 'email', validator: (p0) {}),
            highspace(height: 10),
            CustomTextFormField(hintText: 'password', validator: (p0) {}),
            highspace(height: 10),
            CustomTextFormField(
                hintText: 'confirm password', validator: (p0) {}),
            highspace(height: 10),
            CustomTextFormField(hintText: 'phone', validator: (p0) {}),
            highspace(height: 10),
          ],
        ),
      ),
    );
  }
}
