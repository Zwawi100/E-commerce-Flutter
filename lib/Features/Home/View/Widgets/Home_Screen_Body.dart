import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/Features/Home/View/Widgets/show_welcome.dart';
import 'package:finalproject/Features/Profile/View/profile_screen.dart';
import 'package:finalproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../View_Model/product_view_model.dart';
import 'custom-stack.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16, top: 12),
          child: KPrimartText(fontSize: 22),
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: kSecondaryTextColor,
              )),
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context,);
                // vm.loadingProducts(context);
              },
              icon: Icon(
                Icons.person,
                color: kSecondaryTextColor,
              ))
        ],
      ),
      body: Column(
        children: [
          ShowWelcome(),
          Expanded(
            child: Consumer<ProductViewModel>(
              builder: (context, vm, _) {
                if (vm.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (vm.error != null) {
                  return Center(child: Text("Error: ${vm.error}"));
                }

                return GridView.builder(
                  itemCount: vm.products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return CustomStack(product: vm.products[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
