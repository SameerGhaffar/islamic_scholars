import 'package:flutter/material.dart';
import 'package:islamic_scholars/generated/assets.dart';
import 'package:islamic_scholars/utils/colors.dart';

class Constants {
  static String networkImage = "https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH=w240-h480-rw";
  static LinearGradient whiteGradient() {
    return LinearGradient(colors: [
      Colors.white,
      Colors.white.withOpacity(0.6),
      Colors.white.withOpacity(0.2)
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  }

  static DecorationImage bgImage() {
    return const DecorationImage(
      image: AssetImage(Assets.imagesAuthbg),
      fit: BoxFit.fill,
      colorFilter: ColorFilter.mode(
          Colors.white38,
          BlendMode
              .lighten), //ColorFilter.mode(Colors.white54,BlendMode.lighten),
    );
  }

  static LinearGradient skinGradient() {
    return const LinearGradient(
        colors: [Colors.white, CColors.skinColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter);
  }

// static DecorationImage bgImage() {
//   return  const DecorationImage(image: AssetImage(Assets.imagesAuthbg),
//       fit: BoxFit.fill,
//       colorFilter: ColorFilter.mode(Colors.white,BlendMode.softLight)
//   );
// }
}
