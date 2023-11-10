import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF7286D3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Gabriel Lima de Araujo Costa",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  "RA: 1431432312021",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  "Caio Rezende de Oliveira",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  "RA: 1431432312024",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text("Favoritos"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
