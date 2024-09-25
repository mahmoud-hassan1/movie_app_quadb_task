import 'package:flutter/material.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/presentation/views/home_view/screens/widgets/GridViewItem.dart';

class MoviesGridView extends StatelessWidget {
  final List<MovieEntity> movies;
  const MoviesGridView({
    super.key, required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.47, 
          crossAxisSpacing: 4,
          mainAxisSpacing: 16,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return GridViewItem(movie: movie);
        },
      ),
    );
  }
}
