import 'package:flutter/material.dart';
import 'package:my_online_shop/features/home/ui/screens/home_screen.dart';

void main() {
  runApp(const MyOnlineShop());
}

class MyOnlineShop extends StatelessWidget {
  const MyOnlineShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
