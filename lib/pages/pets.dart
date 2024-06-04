import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetList extends StatefulWidget {
  const PetList({super.key});

  @override
  State<PetList> createState() => _PetListState();
}

class _PetListState extends State<PetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow,
          title: const Text(
            'My Pets',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('pets').snapshots(),
                builder: (context, petSnapshot) {
                  if (petSnapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    final petDocs = petSnapshot.data!.docs;
                    return ListView.builder(itemCount: petDocs.length ,itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: ListTile(
                          title: Text(petDocs[index]['name']),
                          subtitle: Text(petDocs[index]['animal']),
                        ),
                      );
                    });
                  }
                })));
  }
}
