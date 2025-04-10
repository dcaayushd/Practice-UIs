// import 'package:flutter/material.dart';

// import '../../common/http_client.dart';
// import '../entity/add_to_cart_response.dart';
// import '../entity/cart_response.dart';
// import '../source/cart_data_source.dart';

// abstract class ICartRepository extends ICartDataSource {}

// final cartRepository = CartRepository(CartRemoteDataSource(httpClint));

// class CartRepository implements ICartRepository {
//   final ICartDataSource iCartDataSource;
//   static ValueNotifier<int> cartItemCountNotifier = ValueNotifier(0);
//   CartRepository(this.iCartDataSource);
//   @override
//   Future<AddToCartResponse> addToCart(int productId) {
//     return iCartDataSource.addToCart(productId);
//   }

//   @override
//   Future<AddToCartResponse> changeCount(int cartItemId, int count) {
//     return iCartDataSource.changeCount(cartItemId, count);
//   }

//   @override
//   Future<int> count() async {
//     final count = await iCartDataSource.count();
//     cartItemCountNotifier.value = count;
//     return count;
//   }

//   @override
//   Future<void> delete(int cartItemId) {
//     return iCartDataSource.delete(cartItemId);
//   }

//   @override
//   Future<CartResponse> getAll() => iCartDataSource.getAll();
// }

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../entity/add_to_cart_response.dart';
import '../entity/cart_response.dart';
import '../source/cart_data_source.dart';

abstract class ICartRepository extends ICartDataSource {}

final cartRepository = CartRepository(CartRemoteDataSource(Dio()));

class CartRepository implements ICartRepository {
  final ICartDataSource iCartDataSource;
  static ValueNotifier<int> cartItemCountNotifier = ValueNotifier(0);

  CartRepository(this.iCartDataSource);

  @override
  Future<AddToCartResponse> addToCart(int productId) {
    return iCartDataSource.addToCart(productId);
  }

  @override
  Future<AddToCartResponse> changeCount(int cartItemId, int count) {
    return iCartDataSource.changeCount(cartItemId, count);
  }

  @override
  Future<int> count() async {
    final count = await iCartDataSource.count();
    cartItemCountNotifier.value = count;
    return count;
  }

  @override
  Future<void> delete(int cartItemId) {
    return iCartDataSource.delete(cartItemId);
  }

  @override
  Future<CartResponse> getAll() => iCartDataSource.getAll();
}
