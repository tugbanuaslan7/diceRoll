import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); // createState fonksiyonunda DiceRollerState bir fonksiyon olarak çağırılıyor
  }
}

// _ --> DART'ta bu sıfın private olacağı anlamına gelir. Sadece bu dosyada kullanılabilecektir.
class _DiceRollerState extends State<DiceRoller> {
  // Constructor eklemedik ama kendniz eklemediğinizde DART varsayılan olarak ekler.

  final randomizer = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    // build() fonksiyonunun yeniden çağrılmasını söyler
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min, // dikey olarak da ortaladık
          // children argümanı bir widget listesi alıyor ve resmimizi listeye taşıdık
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(
                  //   top: 20,
                  // ),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}