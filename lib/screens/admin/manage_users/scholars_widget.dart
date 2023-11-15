import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/widgets/text_field_widget.dart';
import 'package:islamic_scholars/widgets/basic_card_widget.dart';

class ScholarsWidget extends StatelessWidget {
  ScholarsWidget(
      {super.key, required this.screenHeight, required this.screenWidth});

  final double screenHeight;
  final double screenWidth;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: TextFieldWidget(
              controller: _controller,
              hint: "Search",
              prefixWidget: Container(
                margin: const EdgeInsets.only(left: 25),

                child: const Image(
                  image: AssetImage(Assets.imagesSearch),
                  height: 25,
                  width: 25,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => BasicCardWidget(
                  text: "User Name",
                  asset: Assets.imagesArrowRight,
                  width: screenWidth,
                  height: screenHeight,
                  networkImage:
                      "https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH=w240-h480-rw",
                  onTap: () {
                    print("Clicked index is = $index");
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
