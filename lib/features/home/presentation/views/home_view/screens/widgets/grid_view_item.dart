import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quadb_assignment/core/utils/fonts/font.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/presentation/views/details_view/screens/details_view.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsView(movie: movie))),
      child: Card(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 0.7, 
              child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                child: CachedNetworkImage(
                  imageUrl: movie.originalImage,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: FontStyles.kMediumTextStyle(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                movie.summary,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: FontStyles.kSmallTextStyle(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
