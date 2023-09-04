part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

// state untuk mentrigger aksi yang terjadi dihalaman home, seperti melakukan klik icon
sealed class HomeActionState extends HomeState {}

// state awal aplikasi
final class HomeInitial extends HomeState {}

// state ketika aplikasi melakukan fetching atau membutuhkan proses dari API untuk halaman pertama
final class HomeLoadingState extends HomeState {}

// state ketika aplikasi sudah berhasil melakukan fetching atau mendapatkan data dari API untuk halaman pertama
final class HomeLoadedSuccessState extends HomeState {
  // menampilkan data yang tersedia dari list item
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({required this.products});
}

// state ketika aplikasi gagal mengambil data dari API untuk halaman pertama
final class HomeErrorState extends HomeState {}

// state ketika melakukan klik di halaman home dengan melakukan klik pada icon wishlist dan akan di navigasi ke halaman wishlist
final class HomeNavigateToWishlistPageActionState extends HomeActionState {}

// state ketika melakukan klik di halaman home dengan melakukan klik pada icon cart dan akan di navigasi ke halaman cart
final class HomeNavigateToCartPageActionState extends HomeActionState {}

// state ketika menampilkan produk setelah pengguna melakukan klik di halaman home dengan melakukan klik pada icon wishlist
final class HomeProductItemWishlistActionState extends HomeActionState {}

// state ketika menampilkan produk setelah pengguna melakukan klik di halaman home dengan melakukan klik pada icon cart
final class HomeProductItemCartActionState extends HomeActionState {}
