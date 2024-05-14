import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/reusable_juice_card.dart';
import '../../widgets/reusable_text_form.dart';
import 'beverages_states.dart';

class BeveragesCubit extends Cubit<BeveragesStates> {
  BeveragesCubit() : super(BeveragesInitialState());
  static BeveragesCubit get(context) => BlocProvider.of(context);

  List<JuiceCard> juicesList = [
    const JuiceCard(
        path: 'assets/juice1.png',
        label: 'Diet Coke',
        description: '355ml, Price',
        price: '\$1.99'),
    const JuiceCard(
        path: 'assets/juice2.png',
        label: 'Sprite Can',
        description: '325ml, Price',
        price: '\$1.50'),
    const JuiceCard(
        path: 'assets/juice3.png',
        label: 'Apple & Grape Juice',
        description: '2L, Price',
        price: '\$5.99'),
    const JuiceCard(
        path: 'assets/juice4.png',
        label: 'Orange Juice',
        description: '2L, Price',
        price: '\$8.99'),
    const JuiceCard(
        path: 'assets/juice5.png',
        label: 'Coca Cola Can',
        description: '325ml, Price',
        price: '\$4.99'),
    const JuiceCard(
        path: 'assets/juice6.png',
        label: 'Pepsi Can',
        description: '330ml, Price',
        price: '\$4.99'),
  ];
  List<ReusableTextForm> listOfTextForm = [
    ReusableTextForm(hintText: 'Name'),
    ReusableTextForm(hintText: 'Description'),
    ReusableTextForm(hintText: 'Price'),
    ReusableTextForm(
      hintText: 'Image',
      suffixIcon: Icons.arrow_forward_ios,
    ),
  ];
}
