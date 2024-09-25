import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quadb_assignment/core/utils/images/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(AppImages.splash, repeat: false),
    );
  }
}
