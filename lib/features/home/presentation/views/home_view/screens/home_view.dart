import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quadb_assignment/core/utils/images/app_images.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/cubits/home_cubit/home_cubit.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/widgets/moviesGridView.dart';
import 'package:quadb_assignment/features/home/presentation/views/navigation_view/cubits/navigation_cubit/navigation_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            BlocProvider.of<NavigationCubit>(context).navigate(1);
          },
        ),
        actions: [
          SvgPicture.asset(AppImages.logo, height: height * 0.05),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is FetchDataLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FetchDataSuccess) {
            return MoviesGridView(movies: state.movies,);
          } else if (state is FetchDataFaild) {
            return  Center(child: Text(state.message));
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
