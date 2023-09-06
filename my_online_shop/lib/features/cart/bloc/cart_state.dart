part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

sealed class CartActionState extends CartState{}

final class CartInitial extends CartState {}

// state yang menangani kalau sukses mengambil data
class CartSuccessState extends CartState {
  // kalau sukses, menampilkan list item
  final List<ProductDataModel> cartItems;
  CartSuccessState({
    required this.cartItems,
  });
}
