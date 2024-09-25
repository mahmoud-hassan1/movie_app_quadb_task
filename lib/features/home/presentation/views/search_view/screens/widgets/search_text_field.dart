import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quadb_assignment/core/utils/images/app_images.dart';
import 'package:quadb_assignment/features/home/presentation/views/search_view/cubits/search_cubit/search_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required TextEditingController searchController,
    required this.height,
  }) : _searchController = searchController;

  final TextEditingController _searchController;
  final double height;
  onSubmit(context){
      BlocProvider.of<SearchCubit>(context).fetchSearchData(_searchController.text);
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _searchController,
            onSubmitted: (value) {
              onSubmit(context);
            },
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: IconButton(
                  onPressed: () {
                    onSubmit(context);
                  }, icon: const Icon(Icons.search)),
              border: const OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
              AppImages.logo, // Replace with your logo asset path
              height: height * 0.05),
        ),
      ],
    );
  }
}
