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
          ],
        ),
      ),
    );
  }
}
