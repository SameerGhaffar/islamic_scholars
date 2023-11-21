import 'package:flutter/material.dart';
import 'package:islamic_scholars/utils/colors.dart';
import 'package:islamic_scholars/widgets/template_box.dart';

class AdminAvailability extends StatelessWidget {
  AdminAvailability({super.key});


  final List weekDay = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
   double screenWidth = MediaQuery.of(context).size.width;
   double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15,),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: weekDay.length,
            itemBuilder: (context, index) => SizedBox(
              width: screenWidth,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        weekDay[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: CColors.dark,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TemplateBox(
                        constraints: BoxConstraints(
                          minHeight: screenHeight * 0.045,
                        ),
                        widget: const Center(
                          child: Text(
                            "Start Time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: CColors.dark,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: TemplateBox(
                        constraints: BoxConstraints(
                          minHeight: screenHeight * 0.045,
                        ),
                        widget: const Center(
                          child: Text(
                            "End Time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: CColors.dark,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
