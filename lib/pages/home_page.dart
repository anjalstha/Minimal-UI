import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

//sign user out method
  void signUerOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: signUerOut, icon: Icon(Icons.logout))],
      ),
      body: Center(
        child: Text(
          'Logged In as ' + user.email!,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
