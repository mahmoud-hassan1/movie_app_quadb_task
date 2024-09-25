import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/cubits/home_cubit/home_cubit.dart';
import 'package:quadb_assignment/features/home/presentation/views/navigation_view/screens/navigation_view.dart';
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
    BlocProvider.of<HomeCubit>(context).fetchData();
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const NavigationView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
