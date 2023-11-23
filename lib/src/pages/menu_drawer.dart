import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Pagina principal'),
          backgroundColor: const Color.fromARGB(255, 122, 218, 101)),
      body: const Center(
        child: Center(
          child: Text('Contenido del proyecto'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jesucito"),
              accountEmail: Text("jesucito@plegarias.com"),
              currentAccountPicture:
                  CircleAvatar(foregroundImage: AssetImage("images/baby.png")),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/baby.png")),
                CircleAvatar(foregroundImage: AssetImage("images/baby.png"))
              ],
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Etiqueta 1"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Primera opcion"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Segunda opcion"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Tercera opcion"),
            ),
          ],
        ),
      ),
    );
  }
}
