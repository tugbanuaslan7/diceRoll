import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// GradientContainer'ın tanımlı olduğu dosya içe aktarılıyor.

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // list olarak tanımlasaydık: body: GradientContainer([]);
        body: GradientContainer(
            Color.fromARGB(255, 60, 10, 148),
            Color.fromARGB(
                255, 109, 23, 116)), // Burada GradientContainer'ı kullanıyoruz
      ),
    ),
  );
}
