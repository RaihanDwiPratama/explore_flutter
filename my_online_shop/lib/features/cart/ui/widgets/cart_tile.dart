import 'package:flutter/material.dart';

import 'package:my_online_shop/features/cart/bloc/cart_bloc.dart';
import 'package:my_online_shop/features/home/models/product_data_model.dart';

class CartTile extends StatelessWidget {
  // buat instance kelas model
  final ProductDataModel productDataModel;
  // buat instance bloc
  final CartBloc cartBloc;
  // meminta argument, saat dipanggil di file yang berbeda
  const CartTile({
    Key? key,
    required this.productDataModel,
    required this.cartBloc,
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
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {
                      // melakukan aksi ketika menekan icon
                      // maka akan mengtrigger bloc CartRemoveFromCartEvent
                      // untuk menghapus item
                      cartBloc.add(CartRemoveFromCartEvent(
                          productDataModel: productDataModel));
                    },
                    icon: const Icon(Icons.remove),
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
