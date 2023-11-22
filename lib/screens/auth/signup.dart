import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islamic_scholars/screens/auth/login.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController controller = TextEditingController();
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: Constants.whiteGradient(),
            ),
            decoration: BoxDecoration(
              image: Constants.bgImage(),
            ),
          ),
          SafeArea(
            child: Center(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleImageWidget(size: screenHeight * 0.17, isUpload: true),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    TextFieldWidget(
                      controller: controller,
                      hint: " Name",
                    ),
                    TextFieldWidget(
                      controller: controller,
                      hint: " Email",
                    ),
                    TextFieldWidget(
                      controller: controller,
                      hint: " Phone",
                    ),
                    TextFieldWidget(
                      controller: controller,
                      hint: " Password",
                    ),
                    TextFieldWidget(
                      controller: controller,
                      hint: " Confirm Password",
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    BasicButtonWidget(
                      height: screenHeight,
                      width: screenWidth,
                      text: "SIGN UP",
                      onPressed: () {},
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    existingAccount(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget existingAccount() {
    return RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account?",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              color: CColors.dark,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        TextSpan(
                          text: " Sign In",
                          recognizer: TapGestureRecognizer()
                            ..onTap = ()=> Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (_) => const LoginScreen(),),(route) => false),
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              color: CColors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}
