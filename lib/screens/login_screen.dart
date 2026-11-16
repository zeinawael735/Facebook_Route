import 'package:flutter/material.dart';
import 'package:flutter_facebook_session2/screens/facebook_feeds_screen.dart';
import 'package:flutter_facebook_session2/utils/validator.dart';
import 'package:flutter_facebook_session2/widgets/reusable_button.dart';

import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String routeName="LoginScreen";

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                spacing: 26,
                children: [
                  Image.asset("assets/icons/facebook_icon.png"),
                  SizedBox(height: 5),
                  CustomTextFormField(
                    text: "Mobile Number or Email Address",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validator.validateEmail,
                  ),
                  CustomTextFormField(
                    text: "Password",
                    isPassword: true,
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    validator: Validator.validatePassword,
                  ),
                  SizedBox(height: 5),
                  ReusableButton(
                    bgColor: Color(0xFF1877F2),
                    text: "Login",
                    textColor: Colors.white,
                    horizontalPadding: 150,
                    onPressed: (){
                      if(formKey.currentState!.validate()){
          Navigator.of(context).pushReplacementNamed(FacebookFeedsScreen.routeName);
                      }
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgotten Password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "inter",
                        color: Color(0XFF898f9c),
                      ),
                    ),
                  ),
          
                  SizedBox(height: 100),
                  ReusableButton(
                    bgColor: Colors.white,
                    text: "Create Account",
                    textColor: Color(0xFF1877F2),
                    horizontalPadding: 112,
                    onPressed: (){},
                  ),
                  Image.asset("assets/icons/Meta Logo.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
