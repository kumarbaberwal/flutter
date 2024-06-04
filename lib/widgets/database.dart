import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first/functions/database_functions.dart';
import 'package:first/pages/pets.dart';
import 'package:flutter/material.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
        title: const Text(
          'DataBase Options',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
                onPressed: () {
                  create(context, 'pets', 'kitty', 'jerry', 'cat', 5);
                },
                child: const Text(
                  'Create',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
                onPressed: () {
                  update(context, 'pets', 'kitty', 'age', 14);
                },
                child: const Text(
                  'Update',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PetList()));
                },
                child: const Text(
                  'Retrive',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
                onPressed: () {
                  delete(context, 'pets', 'kitty');
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
