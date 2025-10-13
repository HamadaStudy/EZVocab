import 'package:ezvocab/core/theme/app_styles.dart';
import 'package:ezvocab/core/theme/size_config.dart';
import 'package:ezvocab/core/widgets/common_text_field.dart';
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
      backgroundColor: AppStyles.backgroundColor,
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
          ],
        ),
      ),
    );
  }
}
