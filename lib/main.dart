import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadb_assignment/features/home/presentation/views/navigation_view/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:quadb_assignment/features/splash/presentation/views/splash_view/Screens/splash_view.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/cubits/home_cubit/home_cubit.dart';
import 'package:quadb_assignment/features/home/domain/usecase/movies_usecase.dart';
import 'package:quadb_assignment/features/home/data/repositories/home_repo_impl.dart';
import 'package:quadb_assignment/features/home/data/datasources/home_data_source.dart';
import 'package:quadb_assignment/core/utils/api_handler/api_services.dart';

void main() {
 
  runApp( DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(
            MoviesUseCase(
              HomeRepoImpl(
                HomeRemoteDataSource(ApiService()),
              ),
            ),
          ),
        ),
        BlocProvider(create:(context) =>  NavigationCubit(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          splashColor: Colors.transparent,
        ),
        home: const SplashView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
