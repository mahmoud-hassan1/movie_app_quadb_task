import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/home_view.dart';
import 'package:quadb_assignment/features/home/presentation/views/search_view/screens/search_view.dart';
import 'package:quadb_assignment/features/home/presentation/views/navigation_view/cubits/navigation_cubit/navigation_cubit.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          

          return Scaffold(
            body: PageView(
              onPageChanged: (index) {
                context.read<NavigationCubit>().navigate(index);
              },
              controller:  context.read<NavigationCubit>().pageController,
              children: const [
                HomeView(),
                SearchView(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                context.read<NavigationCubit>().navigate(index);
               
              },
              currentIndex: state is Home ? 0 : 1,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
