import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/screens/home/order_accept_screen.dart';

import '../../business_logic/cubits/cart_cubit.dart';
import '../../widgets/constants.dart';
import '../../widgets/reusable_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String route = '/cart_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Divider(),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.17,
              width: double.infinity,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    BlocProvider.of<CartCubit>(context).listOfProducts[index],
                separatorBuilder: (context, index) => const Divider(
                  indent: 20.0,
                  endIndent: 20.0,
                ),
                itemCount:
                    BlocProvider.of<CartCubit>(context).listOfProducts.length,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.5),
              width: MediaQuery.of(context).size.width,
              height: 67,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                    backgroundColor: primaryColor),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        ),
                        color: const Color(0xFFF2F3F2).withOpacity(0.2),
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Checkout',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.close,
                                      size: 25.0,
                                      color: Color(0xFF181725),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 0.0,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 3.2,
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(20.0),
                                itemBuilder: (context, index) =>
                                    BlocProvider.of<CartCubit>(context)
                                        .modalSheetItems[index],
                                separatorBuilder: (context, index) =>
                                    const Divider(
                                  height: 5.0,
                                ),
                                itemCount: BlocProvider.of<CartCubit>(context)
                                    .modalSheetItems
                                    .length,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.6,
                                child: const Text(
                                  'By placing an order you agree to our Terms And Conditions',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            ReusableButton(
                                label: 'Place Order',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SuccessfulViewBody.route);
                                }),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Go To Checkout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      height: 20.0,
                      width: 50.0,
                      padding: const EdgeInsets.only(left: 6, top: 1),
                      decoration: BoxDecoration(
                        color: const Color(0xFF489E67),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        '\$12.96',
                        style: TextStyle(
                          color: Color(0xFFFCFCFC),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
