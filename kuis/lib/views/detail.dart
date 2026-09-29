import 'package:flutter/material.dart';
import 'package:kuis/models/data.dart';

class DetailPage extends StatelessWidget {
  final Car car;

  const DetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name)),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(car.imageUrl),
              Text(car.name),
              Text(car.brand),
              Text('Rp ${car.year}'),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Text("Kembali")
              )
            ],
          ),
        ),
      ),
    );
  }
}