import 'package:flutter/material.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/home_view.dart';
import 'package:quadb_assignment/features/splash/presentation/views/splash_view/Screens/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
      Future.delayed(const Duration(seconds: 4), () {
        if (!mounted) return;
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeView()));
      });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}

