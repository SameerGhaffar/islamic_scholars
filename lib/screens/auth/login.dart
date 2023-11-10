import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/screens/auth/forget_password.dart';
import 'package:islamic_scholars/screens/auth/signup.dart';
import 'package:islamic_scholars/utils/button.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/utils/constants.dart';
import 'package:islamic_scholars/utils/text_style.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    Container(
                      constraints:
                          const BoxConstraints(maxWidth: 203, maxHeight: 297),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 167,
                            width: 162,
                            child: ImageIcon(
                              AssetImage(Assets.imagesMainlogo),
                              color: CColors.blue,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                          ),
                          Text(
                            "ISLAMIC",
                            style: AppTextStyles.inter(
                              style: const TextStyle(
                                color: CColors.dark,
                                fontSize: 45,
                                fontWeight: FontWeight.w900,
                                height: 0.8,
                              ),
                            ),
                          ),
                          Text(
                            "SCHOLARS",
                            style: AppTextStyles.inter(
                              style: const TextStyle(
                                color: CColors.dark,
                                fontSize: 35,
                                fontWeight: FontWeight.w400,
                                height: 0.8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFieldWidget(
                        controller: controller,
                        hint: " Email",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFieldWidget(
                        controller: controller,
                        hint: " Password",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              color: CColors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppButtons.basicButton(
                      text: "LOGIN",
                      onPressed: () {},
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(
                          color: CColors.dark,
                          thickness: 1,
                        )),
                        Text(
                          " Don’t have an account? ",
                          style: AppTextStyles.inter(
                            style: const TextStyle(
                              color: CColors.dark,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: CColors.dark,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.1),
                            // Color of the shadow
                            blurRadius: 4,
                            // Spread of the shadow
                            offset: const Offset(0, 12),
                          ),
                        ],
                      ),
                      width: 346,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SignupScreen(),
                              ),
                              (route) => false);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),

                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              side: BorderSide(color: CColors.blue, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                          ),
                          //foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Text(
                          "SIGNUP",
                          style: AppTextStyles.inter(
                              style: const TextStyle(
                                  fontSize: 18, color: CColors.blue)),
                        ),
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
