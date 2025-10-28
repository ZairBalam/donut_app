import 'package:donut_app/screens/tab/burger_tab.dart';
import 'package:donut_app/screens/tab/donut_tab.dart';
import 'package:donut_app/screens/tab/pancake_tab.dart';
import 'package:donut_app/screens/tab/pizza_tab.dart';
import 'package:donut_app/screens/tab/smoothie_tab.dart';
import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut
    const MyTab(iconPath: "lib/icons/donut.png", text: "Donut"),
    // Burger
    const MyTab(iconPath: "lib/icons/burger.png", text: "Burger"),
    // Smoothie
    const MyTab(iconPath: "lib/icons/smoothie.png", text: "Smoothie"),
    // Pancake
    const MyTab(iconPath: "lib/icons/pancakes.png", text: "Pancakes"),
    // Pizza
    const MyTab(iconPath: "lib/icons/pizza.png", text: "Pizza"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Ícono de la izquierda
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        // Ícono de la derecha
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: DefaultTabController(
        length: myTabs.length,
        child: Column(
          children: [
            // Texto principal
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 24)),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // Pestañas (TabBar)
            TabBar(tabs: myTabs),

            // Contenido de las pestañas (TabBarView)
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  PizzaTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakeTab(),
                  // Carrito de compras (Cart)
                ],
              ),
            ),
            //carrito de compras
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      //se pega a la izquierda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2 Items | \$45.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Delivery charrges included',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  //botón de checkout
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PanCakeTab {}
