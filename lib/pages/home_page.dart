import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

//sign user out method
  void signUerOut() {
    FirebaseAuth.instance.signOut();
  }

  //list of tiles
  final List myTiles = [
    'A',
    'B',
    'C',
    'D',
  ];

// reorder method
  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      //adjustment for moving tiles down
      if (oldIndex < newIndex) {
        newIndex--;
      }

      //get the tile
      final tile = myTiles.removeAt(oldIndex);

      //place the tile
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Drag Drop List')),
        actions: [
          IconButton(onPressed: signUerOut, icon: const Icon(Icons.logout))
        ],
      ),
      body: ReorderableListView(
        children: [
          for (final tile in myTiles)
            ListTile(
              key: ValueKey(tile),
              title: Text(tile),
            ),
        ],
        onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
      ),
    );
  }
}
