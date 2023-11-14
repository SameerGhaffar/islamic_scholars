import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/button.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                height: 532,
                width: 348,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 128,
                      width: 128,
                      child: ImageIcon(
                        AssetImage(Assets.imagesEmail),
                        color: CColors.blue,
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxHeight: 102),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Reset",
                            style: AppTextStyles.inter(
                              style: const TextStyle(
                                color: CColors.dark,
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                height: 0.0,
                              ),
                            ),
                          ),
                          Text(
                            "PASSWORD",
                            style: AppTextStyles.inter(
                              style: const TextStyle(
                                color: CColors.dark,
                                fontSize: 45,
                                fontWeight: FontWeight.w900,
                                height: 0.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        "we have sent you a link on your email, please follow that link in order to reset your password",
                        maxLines: 3,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.inter(
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    AppButtons.basicButton(
                      context: context,
                      text: "CONTINUE",
                      onPressed: () {},
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Entered wrong email address?",
                            style: AppTextStyles.inter(
                              style: const TextStyle(
                                color: CColors.dark,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: " Change",
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
