// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_online_shop/features/home/bloc/home_bloc.dart';
import 'package:my_online_shop/features/home/models/product_data_model.dart';

class ProductTile extends StatelessWidget {
  // memanggil product data model
  final ProductDataModel productDataModel;
  // memanggil bloc home
  final HomeBloc homeBloc;
  const ProductTile({
    Key? key,
    required this.productDataModel,
    required this.homeBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                // memanggil attribut image url dari data model yang sudah dibuat
                image: NetworkImage(productDataModel.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // memanggil attribut name dari data model yang sudah dibuat
          Text(productDataModel.name),
          // memanggil attribut description dari data model yang sudah dibuat
          Text(productDataModel.description),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // memanggil attribut price dari data model yang sudah dibuat
              Text("\$${productDataModel.price}"),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // melakukan aksi ketika menekan icon
                      // maka akan mengtrigger bloc HomeProductWishlistButtonClickedEvent
                      // untuk menambah item ke halaman wishlist
                      homeBloc.add(HomeProductWishlistButtonClickedEvent(
                          clickedProduct: productDataModel));
                    },
                    icon: const Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {
                      // melakukan aksi ketika menekan icon
                      // maka akan mengtrigger bloc HomeProductCartButtonClickedEvent
                      // untuk menambah item ke halaman cart
                      homeBloc.add(HomeProductCartButtonClickedEvent(
                          clickedProduct: productDataModel));
                    },
                    icon: const Icon(Icons.shopping_bag_outlined),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
