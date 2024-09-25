import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quadb_assignment/core/utils/images/app_images.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/widgets/home_view_body.dart';
import 'package:quadb_assignment/features/home/presentation/views/navigation_view/cubits/navigation_cubit/navigation_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}

