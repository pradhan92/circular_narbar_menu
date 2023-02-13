import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FAB Circular Menu"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.yellowAccent[100],
      ),
      floatingActionButton: FabCircularMenu(
          alignment: Alignment.bottomRight,
          ringColor: Colors.blue.withAlpha(25),
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 90.0,
          fabElevation: 8.0,
          fabIconBorder: CircleBorder(),
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                displayMessage(context, 'Home Clicked');
              },
              elevation: 10.0,
              fillColor: Colors.green,
              child: Icon(
                Icons.home,
                size: 30.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
            RawMaterialButton(
              onPressed: () {
                displayMessage(context, 'Search Clicked');
              },
              elevation: 10.0,
              fillColor: Colors.orange,
              child: Icon(
                Icons.search,
                size: 30.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.purple,
              child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  onPressed: () {
                    displayMessage(context, 'Setting Clicked');
                  }),
            ),
            IconButton(
                icon: Icon(
                  Icons.star,
                  color: Colors.brown,
                  size: 40,
                ),
                onPressed: () {
                  displayMessage(context, 'Favorite Clicked');
                }),
          ]),
    );
  }

  void displayMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }
}
