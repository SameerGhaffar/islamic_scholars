import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/button.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/circle_image_widget.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                height: 743,
                width: 348,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleImageWidget(height: 158,width: 158,isupload: true),
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
                    AppButtons.basicButton(
                      text: "SIGNUP",
                      onPressed: () {},
                    ),
                    RichText(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
