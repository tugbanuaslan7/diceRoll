import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// GradientContainer'ın tanımlı olduğu dosya içe aktarılıyor.

void main() {
  runApp(
    const MaterialApp(  // MaterialApp's build() method is executed
      home: Scaffold(  // Scaffold's build() method is executed
        // list olarak tanımlasaydık: body: GradientContainer([]);
        body: GradientContainer(  // GradientContainer's build() method is executed
            Color.fromARGB(255, 60, 10, 148),
            Color.fromARGB(
                255, 109, 23, 116)), // Burada GradientContainer'ı kullanıyoruz
      ),
    ),
  );
}
