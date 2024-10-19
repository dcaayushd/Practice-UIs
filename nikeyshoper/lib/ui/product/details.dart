import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/cart_repository.dart';
import 'bloc/product_bloc.dart';
import '../../common/utils.dart';
import '../../data/entity/product_model.dart';
import '../../theme.dart';
import 'comment/comment_list.dart';
import '../widgets/image.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductEntity productEntity;
  const ProductDetailScreen({super.key, required this.productEntity});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  StreamSubscription<ProductState>? stateSubscription;
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();

  @override
  void dispose() {
    stateSubscription?.cancel();
    _scaffoldKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: BlocProvider<ProductBloc>(
        create: (context) {
          final bloc = ProductBloc(cartRepository);
          stateSubscription = bloc.stream.listen((state) {
            if (state is ProductAddToCartSuccess) {
              debugPrint("Item successfully added to your cart");
              _scaffoldKey.currentState!.showSnackBar(const SnackBar(
                  content: Text('Successfully added to your cart')));
            } else if (state is ProductAddToCartError) {
              _scaffoldKey.currentState!.showSnackBar(
                  SnackBar(content: Text(state.exception.message)));
            }
          });
          return bloc;
        },
        child: ScaffoldMessenger(
          key: _scaffoldKey,
          child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) => FloatingActionButton.extended(
                    onPressed: () {
                      BlocProvider.of<ProductBloc>(context)
                          .add(CartAddButtonClick(widget.productEntity.id));
                    },
                    label: state is ProductAddToCartButtonLoading
                        ? CupertinoActivityIndicator(
                            color: Theme.of(context).colorScheme.onSecondary,
                          )
                        : const Text('Add to Cart')),
              ),
            ),
            body: SafeArea(
              child: CustomScrollView(
                physics: defaultScrollPhysics,
                slivers: [
                  SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.width * 0.8,
                    flexibleSpace:
                        ImageLoadingService(imgUrl: widget.productEntity.image),
                    foregroundColor: LightThemeColors.primaryTextColor,
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.heart))
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                widget.productEntity.title,
                                style: Theme.of(context).textTheme.titleLarge,
                              )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.productEntity.previousPrice
                                        .withPriceLabel,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .apply(
                                            decoration:
                                                TextDecoration.lineThrough),
                                  ),
                                  Text(
                                      widget.productEntity.price.withPriceLabel)
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          const Text(
                              'This sneaker is extremely suitable for running and walking, and it almost does not put any harmful pressure on your feet and knees.',
                              style: TextStyle(height: 1.4)),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "User Comments",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("Submit a Comment"))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CommentList(
                    productId: widget.productEntity.id,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
