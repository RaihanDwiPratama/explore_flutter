import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_online_shop/data/product_data.dart';
import 'package:my_online_shop/features/home/models/product_data_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishlistButtonClickedEvent>(
        homeProductWishlistButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
    on<HomeWishlistButtonNavigateEvent>(homeWishlistButtonNavigateEvent);
    on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  }

  // state awal ketika melakukan aksi dihalaman home
  FutureOr<void> homeInitialEvent(
      // menggunakan async karena agar bisa menunggu fetch produk menggunakan keyword Future
      HomeInitialEvent event,
      Emitter<HomeState> emit) async {
    // memnaggil HomeLoadingState pertama kali untuk fetching data
    emit(HomeLoadingState());
    // menunggu fetching data selama 3 detik
    await Future.delayed(const Duration(seconds: 3));
    // jika sudah melewati waktu, panggil HomeLoadedSuccessState
    emit(
      HomeLoadedSuccessState(
        // memanggil list produk, lalu hasilnya di map dan dilakukan toList agar tidak error (karena melakukan map, wajib melakukan toList)
        products: ProductData.stockProducts
            .map(
              (e) => ProductDataModel(
                // panggil variabel looping terlebih dahulu, baru masukkan attribut
                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                imageUrl: e['imageUrl'],
              ),
            )
            .toList(),
      ),
    );
  }

  // state ketika pengguna melakukan klik pada icon wishlist
  FutureOr<void> homeProductWishlistButtonClickedEvent(
      HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
        print('Wishlist Product Clicked');
        // state yang menangani ketika pengguna menekan icon wishlist, dan akan menyimpan kedalam list
        emit(HomeProductItemCartActionState());
      }

  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
        print('Cart Product Clicked');
        // state yang menangani ketika pengguna menekan icon cart, dan akan menyimpan kedalam list
        emit(HomeProductItemCartActionState());
      }

  FutureOr<void> homeWishlistButtonNavigateEvent(
      HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
        print('Wishlist Navigate Clicked');
        // state yang menangani ketika pengguna menekan icon wishlist dan akan diarahkan ke halaman detail wishlist
        emit(HomeNavigateToWishlistPageActionState());
      }

  FutureOr<void> homeCartButtonNavigateEvent(
      HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
        print('Cart Navigate Clicked');
        emit(HomeNavigateToCartPageActionState());
      }
}
