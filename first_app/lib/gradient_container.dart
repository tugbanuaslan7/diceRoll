import 'package:flutter/material.dart';

// DART bir değişkende hangi türün saklanacağını bilir çünkü değişkene ait atadığınız değere bakar ve bu değer türünü kullanır

// final diğer bir build-in (yerleşik) keyword ve bu veri container'ının yeni bir değer alamayacağı anlamına gelir
// var da kullanılabilir ama bir değeri yanlışlıkla yeniden atamamak için final önerilir
// const neredeyse final ile aynıdır. farklı olarak const DART'a eksta bilgiler verir
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// StatelessWidgets, Flutter çerçevesinden gelen bir sınıftır ve başta tanımladığımız import sayesinde kullanılabilir
class GradientContainer extends StatelessWidget {
  // key argumanının StatelessWidget'a iletilmesi gerekiyor dolayısıyla miras aldığımız ve bir
  // key argümananla extend ettiğimiz bu widget'ı da sınıfımız böyle bir key argüman kabul etmeli ve bunu StatelessWidget'a iletmelidir
  // Bunu iletmek için 2 ana seçeneğimiz var

  /* const GradientContainer({key}): super(key: key); */
  /* Aslında olmaması gereken yerde bunun isteğe bağlı olduğunu söylüyor -> required ile bu sorun giderildi
  const GradientContainer({super.key, required this.colors});*/
  // ya da
  const GradientContainer(this.color1, this.color2,
      {super.key}); /*{
    // initialization work
    // çoğu zaman bu parantezi eklememize gerek kalmayacak
  } */

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override // statelessWidget tarafından beklenen bir metodu geçersiz kıldığınızı açıkça ortaya koyar
  Widget build(context) /*Widget build ögesinin dönüş tipidir */ {
    return Container(
      decoration: BoxDecoration(
        // buradaki const'tan kurtulduk çünkü buradaki renkler aslında bir liste
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-2.png',
          width: 200,
        ),
      ),
    );
  }
}

// mlamak yerine bir liste tanımlayabiliriz
/*

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.colors, {super.key});  
 
  // DART'ta varsayılan olarak listeler düzenlenebilir
  final List<Color> colors;

  @override 
  Widget build(context) {
    return Container(
          decoration: BoxDecoration( 
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: StyledText('Hello World'),
          ),
        );
  }

}


*/
