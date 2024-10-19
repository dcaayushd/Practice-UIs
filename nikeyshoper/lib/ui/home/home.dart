import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/empty_state.dart';

import '../../common/utils.dart';
import '../../data/entity/product_model.dart';
import '../../data/repo/banner_repository.dart';
import '../../data/repo/product_repository.dart';
import '../product/product.dart';
import '../widgets/slider.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) {
        final homebloc = HomeBloc(bannerRepository, productRepository);
        homebloc.add(HomeStarted());
        return homebloc;
      }),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeSuccess) {
                return ListView.builder(
                    physics: defaultScrollPhysics,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Container(
                            height: 56,
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/img/nike_logo.png",
                              fit: BoxFit.fitHeight,
                              height: 32,
                            ),
                          );
                        case 2:
                          return BannerSlider(banners: state.banners);
                        case 3:
                          return _HorizontalProductList(
                            title: "Latest Products",
                            products: state.latestproducts,
                            onTap: () {},
                          );
                        case 4:
                          return _HorizontalProductList(
                            title: "Popular Products",
                            products: state.popularProducts,
                            onTap: () {},
                          );
                        default:
                          return Container();
                      }
                    });
              } else if (state is HomeLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is HomeError) {
                return Center(
                  child: EmptyView(
                      message: state.exception.message,
                      callToAction: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<HomeBloc>(context)
                                .add(HomeRefresh());
                          },
                          child: const Text("Upload")),
                      image: SvgPicture.asset("assets/img/no_data.svg",
                          width: 200)),
                );
              } else {
                throw Exception("state is not supported");
              }
            },
          ),
        ),
      ),
    );
  }
}

class _HorizontalProductList extends StatelessWidget {
  final String title;
  final List<ProductEntity> products;
  final VoidCallback onTap;

  const _HorizontalProductList(
      {required this.title, required this.onTap, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              TextButton(onPressed: onTap, child: const Text("View All"))
            ],
          ),
        ),
        SizedBox(
          height: 290,
          child: ListView.builder(
              itemCount: products.length,
              physics: defaultScrollPhysics,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8),
              itemBuilder: ((context, index) {
                final product = products[index];
                return ProductItem(
                  product: product,
                  borderRadius: BorderRadius.circular(12),
                );
              })),
        )
      ],
    );
  }
}
