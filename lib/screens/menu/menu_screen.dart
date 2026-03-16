import 'package:flutter/material.dart';
import 'package:test/widgets/extracted_app_bar.dart';
import 'package:test/widgets/menu_item_card.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,

        appBar: ExtractedAppBar(title: 'Menu'),

        body: Column(
          children: [
            MenuItemCard(
              title: 'Biryani',
              image: 'assets/biryani.jpg',
              rating: '4.5',
              price: 'Rs. 350',
              onAdd: () {},
            ),
            const SizedBox(height: 10),
            MenuItemCard(
              title: 'Zinger Burger',
              image: 'assets/zinger.jpg',
              rating: '4.7',
              price: 'Rs. 500',
              onAdd: () {},
            ),
          ],
        ),
      ),
    );
  }
}