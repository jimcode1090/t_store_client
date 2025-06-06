import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_client/common/widgets/login_signup/form_divider.dart';
import 'package:t_store_client/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store_client/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store_client/utils/constants/sizes.dart';
import 'package:t_store_client/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              TSignupForm(),

              // Form Divider
              const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              // Social Buttons
              const SizedBox(height: TSizes.spaceBtwSections),
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
