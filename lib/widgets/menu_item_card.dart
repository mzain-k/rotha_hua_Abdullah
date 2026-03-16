import 'package:flutter/material.dart';

class MenuItemCard extends StatelessWidget {
  final String title;
  final String image;
  final String rating;
  final String price;
  final VoidCallback onAdd;

  const MenuItemCard({
    super.key,
    required this.title,
    required this.image,
    required this.rating,
    required this.price,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: Colors.blueGrey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 10),
                      const SizedBox(width: 5),

                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.blueGrey[400],
                        ),
                      ),

                      const SizedBox(width: 5),

                      Text(
                        'Price: $price',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.blueGrey[400],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),

                  SizedBox(
                    height: 24,
                    width: 185,
                    child: FloatingActionButton.extended(
                      onPressed: onAdd,
                      backgroundColor: Colors.blueGrey,
                      icon: const Icon(Icons.add,
                          color: Colors.white, size: 20),
                      label: const Text(
                        'Add to Order',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}