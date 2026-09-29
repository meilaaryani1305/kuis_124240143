import 'package:flutter/material.dart';
import 'package:kuis/models/data.dart';
import 'package:kuis/views/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String username});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Home")),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(car: cars[index])
                )
              );
            },
            title: Text(cars[index].name),
            subtitle: Text(cars[index].brand),
            leading: Image.network(
              cars[index].imageUrl,
              width: 50,
              height: 50,
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
          );
        },
      ),
    );
  }
}