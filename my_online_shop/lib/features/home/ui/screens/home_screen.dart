import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_online_shop/features/cart/ui/screens/cart_screen.dart';
import 'package:my_online_shop/features/home/bloc/home_bloc.dart';
import 'package:my_online_shop/features/home/ui/widgets/product_tile.dart';
import 'package:my_online_shop/features/wishlist/ui/screens/wishlist_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CartScreen()));
        } else if (state is HomeProductItemCartActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WishlistScreen()));
        } else if (state is HomeProductItemCartActionState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Successfully add item cart')));
        } else if (state is HomeProductItemWishlistActionState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Successfully add item wishlist')));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return const Scaffold(
              body: CircularProgressIndicator(),
            );
          case HomeLoadedSuccessState:
            final successState = state as HomeLoadedSuccessState;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text('My Online Shop'),
                actions: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeWishlistButtonNavigateEvent());
                    },
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeCartButtonNavigateEvent());
                    },
                    icon: const Icon(Icons.shopping_bag_outlined),
                  ),
                ],
              ),
              body: ListView.builder(
                  itemCount: successState.products.length,
                  itemBuilder: (context, index) {
                    return ProductTile(
                      productDataModel: successState.products[index],
                      homeBloc: homeBloc,
                    );
                  }),
            );
          case HomeErrorState:
            return const Scaffold(
              body: Center(child: Text('Error')),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
