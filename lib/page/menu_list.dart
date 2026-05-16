import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> foods = [
      {
        "name": "Pepperoni Pizza",
        "image": "images/chicken-pizza.jpg",
        "price": "\$50",
      },
      {"name": "Pasta", "image": "images/pasta-menu-2.jpg", "price": "\$40"},
      {"name": "Pasta", "image": "images/pasta-menu-3.jpg", "price": "\$60"},
      {
        "name": "Special Pizza",
        "image": "images/burger-menu.jpg",
        "price": "\$45",
      },
      {
        "name": "King Burger",
        "image": "images/burger-menu-2.jpg",
        "price": "\$70",
      },
      {
        "name": "Special Pizza",
        "image": "images/pizza-menu.jpg",
        "price": "\$50",
      },
      {
        "name": "Special Pizza",
        "image": "images/pizza-menu-2.jpg",
        "price": "\$30",
      },
    ];

    return ListView(
      children: [
        // 🔥 TOP 2 FEATURED CARDS
        GridView.builder(
          itemCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final food = foods[index];

            return _card(food);
          },
        ),

        const SizedBox(height: 20),

        // 🔥 TITLE
        const Text(
          "Top Food Deal",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 15),

        // 🔥 REMAINING ITEMS
        GridView.builder(
          itemCount: foods.length - 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final food = foods[index + 2];

            return _card(food);
          },
        ),
      ],
    );
  }

  // 🔥 CARD WIDGET (NO STYLE CHANGES)
  Widget _card(Map<String, String> food) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              food["image"]!,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food["name"]!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Tomato, basil", style: TextStyle(fontSize: 14)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      food["price"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Color(0xffff734c),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
