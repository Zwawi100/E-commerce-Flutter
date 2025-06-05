import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Core/Cutom_Widget/Primary_Text.dart';
import 'package:finalproject/Features/Home/View/Widgets/search_widget.dart';
import 'package:finalproject/Features/Home/View/Widgets/show_welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../View_Model/product_view_model.dart';
import 'footer.dart';
import 'product_card.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({super.key});

  get carouselImages => null;

  @override
  Widget build(BuildContext context) {
    final productViewModel =
        Provider.of<ProductViewModel>(context, listen: false);

    // Fetch products when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      productViewModel.fetchProducts();
    });

    return Scaffold(
      appBar: AppBar(
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: KPrimartText(fontSize: 20),
          ),
          title: SearchWidget()),
      body: Consumer<ProductViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (viewModel.error != null) {
            return Center(child: Text(viewModel.error!));
          }

          if (viewModel.products.isEmpty) {
            return const Center(child: Text('No products available'));
          }

          return SingleChildScrollView(
              child: Column(
            children: [
              ShowWelcome(),
              // Carousel Slider
              // SlidingImages(carouselImages: carouselImages),
              SizedBox(height: 20),
               GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: viewModel.products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: viewModel.products[index],
                      price: null,
                      name: null,
                      imageUrl: null,
                    );
                  },
                ),
              SizedBox(
                height: 100,
              ),
              FooterWidget(),
            ],
          ));
        },
      ),
    );
  }
}

class SlidingImages extends StatelessWidget {
  const SlidingImages({
    super.key,
    required this.carouselImages,
  });

  final dynamic carouselImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: carouselImages.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
