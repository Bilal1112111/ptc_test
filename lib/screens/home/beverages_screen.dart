import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/business_logic/cubits/beverages_cubit.dart';
import 'package:ptc_test/widgets/reusable_button.dart';

import '../../widgets/reusable_add_button.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});
  static String route = '/beverages_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beverages',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
        ),
        actions: [
          ReusableAddButton(
            size: 25.0,
            borderRadius: 10.0,
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            children: [
                              const Text(
                                'Add',
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
                                  BlocProvider.of<BeveragesCubit>(context)
                                      .listOfTextForm[index],
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                              itemCount:
                                  BlocProvider.of<BeveragesCubit>(context)
                                      .listOfTextForm
                                      .length),
                        ),
                        ReusableButton(label: 'Add Item', onPressed: () {}),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: BlocProvider.of<BeveragesCubit>(context).juicesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) =>
              BlocProvider.of<BeveragesCubit>(context).juicesList[index],
        ),
      ),
    );
  }
}
