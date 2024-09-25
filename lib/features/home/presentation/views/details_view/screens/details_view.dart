import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:quadb_assignment/core/utils/fonts/font.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';

class DetailsView extends StatelessWidget {
  final MovieEntity movie;
  const DetailsView({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[ 
          SliverAppBar(
          backgroundColor: Colors.black,
        title: Text(movie.title),
          ),
          SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: AspectRatio(
                aspectRatio: 0.7, 
                child: CachedNetworkImage(
                  imageUrl: Uri.parse(movie.originalImage).toString(),
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
                  style: FontStyles.kFontSize30(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movie.summary,
                  style: FontStyles.kSmallTextStyle(context)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Rating: ${movie.rating}',
                  style: FontStyles.kSmallTextStyle(context),
                ),
              ),
            ],
          ),
        ),
        ]
      )
      ,
    );
  }
}