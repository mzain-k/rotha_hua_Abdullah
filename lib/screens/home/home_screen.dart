import 'package:flutter/material.dart';
import 'package:test/screens/chechout/checkout_screen.dart';
import 'package:test/screens/menu/menu_screen.dart';
import 'package:test/widgets/extracted_app_bar.dart';
import 'package:test/widgets/food_item_card.dart';
import 'package:test/widgets/search_bar.dart';
import 'package:test/widgets/buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'BiteBox';
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
      if (counter % 5 == 0) {
      discountPopup();
    }
    });
  }

  void discountPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Congratulations!"),
          content: Text("You get a discount on every 5 orders!\nUse code: MERIJINDMERIJAN at checkout for your next order to get 5% Off."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Closes the dialog
              },
            ),
          ],
        );
      },
    );
  }

  void confirmationPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Successful!'),
          content: Text('Your Order has been added to cart.'),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Closes the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: ExtractedAppBar(title: 'Hungry? Let\'s Find ...'),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
                height: 40,
                child: Expanded(
                child: CustomSearchBar(),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildButton(
                  icon: Icons.menu,
                  text: "Menu",
                  iconColor: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuScreen())
                    );
                  },
                ),
                BuildButton(
                  icon: Icons.local_fire_department,
                  text: "Deals",
                  iconColor: Colors.orange,
                  onPressed: () {},
                ),
                BuildButton(
                  icon: Icons.access_time,
                  text: "Recent",
                  iconColor: Colors.orange,
                  onPressed: () {},
                ),
              ],
            ),


            SizedBox(height: 10),

            Text(
              'Today\'s Specials',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  FoodItemCard(
                    title: 'Spicy Karachi Biryani',
                    image: 'assets/biryani.jpg',
                    rating: '4.8',
                    time: '5 min',
                    onAdd: confirmationPopup,
                  ),

                  SizedBox(width: 15),

                  FoodItemCard(
                    title: 'Zinger Burger',
                    image: 'assets/zinger.jpg',
                    rating: '4.6',
                    time: '8 min',
                    onAdd: confirmationPopup,
                  ),

                  SizedBox(width: 15),

                  FoodItemCard(
                    title: 'Chicken Shawarma',
                    image: 'assets/shawarma.jpg',
                    rating: '4.7',
                    time: '6 min',
                    onAdd: confirmationPopup,
                  ),

                  SizedBox(width: 15),

                  FoodItemCard(
                    title: 'Doodh Patti',
                    image: 'assets/tea.jpg',
                    rating: '4.5',
                    time: '2 min',
                    onAdd: confirmationPopup
                  )
                ],
              ),
            ),

            Text(
              '\nبٹ صاحب، دودھ پتیاں چل رہی ہیں۔',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Badge(
                label: Text(
                  '$counter',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                backgroundColor: Colors.white,
                child: ElevatedButton.icon(
                  onPressed: () {
                    increment();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                    backgroundColor: Colors.red[700],
                    elevation: 10,
                  ),
                  label: Text(
                    'Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}



// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text('BiteBox', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24, fontWeight: FontWeight.bold)),
//           centerTitle: true,
//         ),
//         body: Center(child: Text('Hello World', style: TextStyle(fontSize: 60, foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 2.0..color = Colors.red)))
//       );
//   }
// }