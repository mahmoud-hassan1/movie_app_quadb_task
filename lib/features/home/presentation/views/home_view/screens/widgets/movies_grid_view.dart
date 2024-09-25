import 'package:flutter/material.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/widgets/grid_view_item.dart';

class MoviesGridView extends StatelessWidget {
  final List<MovieEntity> movies;

  const MoviesGridView({
    super.key, 
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        childAspectRatio: 0.45, 
        crossAxisSpacing: 4,
        mainAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        
        (BuildContext context, int index) {
          final movie = movies[index];
          return Padding(
            padding: const EdgeInsets.only(top: 16.0), // Apply padding to each item
            child: GridViewItem(movie: movie),
          );
        },
        childCount: movies.length,
      ),
    );
  }
}
