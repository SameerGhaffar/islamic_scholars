import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/widgets/button_widget.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';

class AddDialogBox extends StatelessWidget {
  AddDialogBox({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: screenHeight * 0.44,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Add time slot",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: CColors.dark,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              TextFieldWidget(controller: controller, hint: "Start Time"),
              TextFieldWidget(controller: controller, hint: "End Time"),
              BasicButtonWidget(
                  height: screenHeight, width: double.infinity, text: "Save"),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              const Text(
                "DELETE",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: CColors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
