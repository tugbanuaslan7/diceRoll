import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // key argumanı iletmek için bir yapıcı ekliyoruz
  // Dart tarafından çeşitli optimizasyonların kilidini açmak için const ekliyoruz
  StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
