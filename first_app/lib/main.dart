import 'package:flutter/material.dart';

void main() {
  // main, smzde işlev adıdır

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 60, 10, 148),
                Color.fromARGB(255, 109, 23, 116),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text('Hello World', style: TextStyle(
              color: Colors.white,
              fontSize: 28),
              ),
          ),
        ),
      ),
    ),
  ); // sözde bir fonksiyondur
  // MaterialApp --> Flutter'ın sağladığı widget'lardan biri
}
