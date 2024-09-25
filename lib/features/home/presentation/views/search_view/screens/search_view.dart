import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadb_assignment/core/utils/api_handler/api_services.dart';
import 'package:quadb_assignment/features/home/data/datasources/home_data_source.dart';
import 'package:quadb_assignment/features/home/data/repositories/home_repo_impl.dart';
import 'package:quadb_assignment/features/home/domain/usecase/movies_usecase.dart';
import 'package:quadb_assignment/features/home/presentation/views/search_view/cubits/search_cubit/search_cubit.dart';
import 'package:quadb_assignment/features/home/presentation/views/search_view/screens/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => SearchCubit(
        MoviesUseCase(
          HomeRepoImpl(
            HomeRemoteDataSource(ApiService()),
          ),
        ),
      ),
      child: SearchViewBody(height: height),
    );
  }
}

