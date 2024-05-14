import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/cart_product_card.dart';
import '../../widgets/modal_items.dart';
import 'cart_states.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(CartInitialState());

  static CartCubit get(context) => BlocProvider.of(context);

  List<CartProductCard> listOfProducts = [
    const CartProductCard(
      path: 'assets/veg1.png',
      label: 'Bell Pepper Red',
      description: '1kg, Price',
      price: '\$4.99',
    ),
    const CartProductCard(
      path: 'assets/veg2.png',
      label: 'Egg Chicken Red',
      description: '4pcs, Price',
      price: '\$1.99',
    ),
    const CartProductCard(
      path: 'assets/veg3.png',
      label: 'Organic Bananas',
      description: '12kg, Price',
      price: '\$3.00',
    ),
    const CartProductCard(
      path: 'assets/veg4.png',
      label: 'Ginger',
      description: '250gm, Price',
      price: '\$2.99',
    ),
    const CartProductCard(
      path: 'assets/veg1.png',
      label: 'Bell Pepper Red',
      description: '1kg, Price',
      price: '\$4.99',
    ),
    const CartProductCard(
      path: 'assets/veg2.png',
      label: 'Egg Chicken Red',
      description: '4pcs, Price',
      price: '\$1.99',
    ),
  ];

  List<Widget> modalSheetItems = [
    const ModalRowItem(
      label: 'Delivery',
      endLabel: 'Select Method',
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15.0),
      child: Row(
        children: [
          const Text(
            'Payment',
            style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Image.asset('assets/group1.png'),
        ],
      ),
    ),
    const ModalRowItem(
      label: 'Promo Code',
      endLabel: 'Pick discount',
    ),
    const ModalRowItem(
      label: 'Total Cost',
      endLabel: '\$13.97',
    ),
  ];
}
