import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_online_shop/data/cart_items.dart';
import 'package:my_online_shop/features/home/models/product_data_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    // menghapus item dari list ketika user melakukan aksi atau menekan icon remove
    cartItems.remove(event.productDataModel);
    // fetching data, untuk mendapat update data terbaru
    emit(CartSuccessState(cartItems: cartItems));
  }
}
