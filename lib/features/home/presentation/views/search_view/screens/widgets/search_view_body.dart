import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/widgets/movies_grid_view.dart';
import 'package:quadb_assignment/features/home/presentation/views/search_view/cubits/search_cubit/search_cubit.dart';
import 'package:quadb_assignment/features/home/presentation/views/search_view/screens/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
   SearchViewBody({
    super.key,
    required this.height,
  });
  final TextEditingController _searchController = TextEditingController();

  final double height;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
          SearchTextField(searchController: _searchController, height: height),
          Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is FetchSearchDataLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is FetchSearchDataSuccess) {
                  return state.movies.isNotEmpty? CustomScrollView(slivers: [MoviesGridView(movies: state.movies)]):const Center(child: Text("No movies found"),);
                } else if (state is FetchSearchDataFailed) {
                  return  Center(child: Text(state.message));
                } else {
                  return const Center(child: Text('Search for movies'));
                }
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}

