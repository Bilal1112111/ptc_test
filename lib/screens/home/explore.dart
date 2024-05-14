import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/cubits/explore_cubit.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});
  static String route = '/explore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Products',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: BlocProvider.of<ExploreCubit>(context).productsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15.0, mainAxisSpacing: 15.0),
          itemBuilder: (context, index) =>
              BlocProvider.of<ExploreCubit>(context).productsList[index],
        ),
      ),
    );
  }
}
