part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

// menangani state ketika icon wishlist didalam halaman utama di klik
class HomeProductWishlistButtonClickedEvent extends HomeEvent {
  // menampilkan list data saat user menekan icon wishlist
  final ProductDataModel clickedProduct;

  HomeProductWishlistButtonClickedEvent({required this.clickedProduct});
}

// menangani state ketika icon cart didalam halaman utama di klik
class HomeProductCartButtonClickedEvent extends HomeEvent {
  // menampilkan list data saat user menekan icon cart
  final ProductDataModel clickedProduct;

  HomeProductCartButtonClickedEvent({required this.clickedProduct});
}

// menangani state ketika icon wishlist didalam halaman utama di klik dan akan menavigasi ke halaman wishlist
class HomeWishlistButtonNavigateEvent extends HomeEvent {}

// menangani state ketika icon wishlist didalam halaman utama di klik dan akan menavigasi ke halaman wishlist
class HomeCartButtonNavigateEvent extends HomeEvent {}
