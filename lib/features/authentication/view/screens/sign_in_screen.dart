import 'package:ezvocab/core/theme/app_pallete.dart';
import 'package:ezvocab/core/theme/size_config.dart';
import 'package:ezvocab/core/widgets/common_text_field.dart';
import 'package:ezvocab/features/authentication/view/screens/sign_up_screen.dart';
import 'package:ezvocab/features/authentication/view/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(
          SizeConfig.getProportionateHeight(30),
          SizeConfig.getProportionateWidth(50),
          SizeConfig.getProportionateHeight(30),
          0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonTextField(
              hintText: 'Email',
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: SizeConfig.getProportionateHeight(20)),
            CommonTextField(
              hintText: 'Password',
              controller: TextEditingController(),
              obscureText: true,
            ),
            SizedBox(height: SizeConfig.getProportionateHeight(40)),
            AuthButton(
              buttonText: 'Sign In',
              onTap: () {
                // Handle sign-in logic here
              },
            ),
            SizedBox(height: SizeConfig.getProportionateHeight(20)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Pallete.textColor),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Pallete.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      // Add gesture recognizer for sign-up action if needed
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
