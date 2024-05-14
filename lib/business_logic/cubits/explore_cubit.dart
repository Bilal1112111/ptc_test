import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/business_logic/cubits/explore_states.dart';

import '../../widgets/reusable_product_card.dart';

class ExploreCubit extends Cubit<ExploreStates> {
  ExploreCubit() : super(ExploreInitialState());
  static ExploreCubit get(context) => BlocProvider.of(context);

  List<ProductsCard> productsList = [
    const ProductsCard(
      label: 'Fresh Fruits & Vegetable',
      path: 'assets/product1.png',
      color: Color(0xFF53B175),
    ),
    const ProductsCard(
      label: 'Cooking Oil & Ghee',
      path: 'assets/product2.png',
      color: Color(0xFFF8A44C),
    ),
    const ProductsCard(
      label: 'Meat & Fish',
      path: 'assets/product3.png',
      color: Color(0xFFF7A593),
    ),
    const ProductsCard(
      label: 'Bakery & Snacks',
      path: 'assets/product4.png',
      color: Color(0xFFD3B0E0),
    ),
    const ProductsCard(
      label: 'Dairy & Eggs',
      path: 'assets/product5.png',
      color: Color(0xFFFDE598),
    ),
    const ProductsCard(
      label: 'Beverages',
      path: 'assets/product6.png',
      color: Color(0xFFB7DFF5),
    ),
    const ProductsCard(
      label: 'Cooking Oil & Ghee',
      path: 'assets/product2.png',
      color: Color(0xFFF8A44C),
    ),
    const ProductsCard(
      label: 'Bakery & Snacks',
      path: 'assets/product4.png',
      color: Color(0xFFD3B0E0),
    ),
    const ProductsCard(
      label: 'Bakery & Snacks',
      path: 'assets/product4.png',
      color: Color(0xFFD3B0E0),
    ),
  ];
}
