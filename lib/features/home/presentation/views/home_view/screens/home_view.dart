import 'package:flutter/material.dart';
import 'package:quadb_assignment/core/utils/api_services.dart';
import 'package:quadb_assignment/features/home/data/datasources/home_data_source.dart';
import 'package:quadb_assignment/features/home/data/repositories/home_repo_impl.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/domain/usecase/movies_usecase.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column()
    );
  }
}
