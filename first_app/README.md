const: uygulamamızın çalışma zamanı performansını optimize etmesine yardımcı olmak için var olan bir anahtar kelime ve özelliktir

![alt text](images/image-1.png)

![alt text](images/image-2.png)


## Widget Tree

- Material App       **Root app that's rewuired by most other widgets**
  - Scaffold         **Screen layout widget tht adds base styling & more**
    - Row            **Widget that displays multiple adacent child widgets**
      - Text
      - Text
      - Text          **Widgets that display some text on the screen**



## Wrap with center

![alt text](images/image-3.png)

![alt text](images/image-4.png)


## Types

Dart is a type-safe languıage ---> All values are of certain Types

More than one Types is possible & common

##### 'Hello World!'  --- String Object
##### 29    ---  int num Object
##### MaterialApp --- MaterialApp Widget Object


### Widgets are Objects

Widgets = Objects = Data Structures in Memory

Widgets are objects and objects are simply these data strcutures in memory. Not just widgets are objects. All value types in the end are also objects


![alt text](images/image-5.png)
![alt text](images/image-6.png)

### Generic Types

Generic typs are "flexible types" that "work together" with other Types

![alt text](images/image-7.png)
![alt text](images/image-8.png)


![alt text](images/image-9.png)
![alt text](images/image-10.png)



![alt text](images/image-11.png)
![alt text](images/image-12.png)


## Understanding Classes

Dart is an object-orianted languages  
Every value is an object

|Primitive Values | More Complezx Values|
|-----------------|----------------------|
|Text|e.g., Widgets, Gradient Config Object|
|Numbers||

Objects are data structures stored in memory  
**Data** Variables / Priperties
**Functions** Methods  
objects help with organizing data and separating logic

![alt text](images/image-13.png)
![alt text](images/image-14.png)

## Working with Construction Functions

GradienContainer altındaki mavi çizgiler nereden geliyor?  
Public widget'lar için kurucuların adlandırılmış bir anahtar parametresi olması gerekir   

const helps Dart optimize runtime performance

![alt text](images/image-15.png)

## Splitting Code Across Files

lib klasörü içinde gradient_container.dart isimli dosya oluşturduk

main.dart  
![alt text](images/image-16.png)
gradient_container.dart  
![alt text](images/image-17.png)
styled_text.dart  
![alt text](images/image-18.png)

## Introducing Variables

Variables are "Data Containers"

![alt text](images/image-19.png)

## Instance Variables

![alt text](images/image-20.png)
'Hello World' burada sabit olarak kodlanmıştır. Bu nedenle, uygulamamızın herhangi bir yerinde stilize metin  
kullandığımızda her zaman Hello World çıktısı verecektir. Bu metin için bu yapılandırmayı tekrar kullanabilmek istiyoruz  
bu nedenle renk ve yazı tipi boyutu, ancak metnin kendisi dinamik olarak yerleştirilmelidir  
StyledText kullandığımız GradientContainer'da metni StyledText'e geçirebilseydik daha iyi olurdu. Böylece bu,  
özel widget'ımıza kilitlenmek yerine özel widget'ımızı kullanmak istediğimiz yerde hala ayarlanabilir   
  
![alt text](images/image-21.png)
Bu yaygın bir kullanımdır çünkü widget'larınızn çoğu yeniden kullanılabilir.   

Kendi widget'larımızı nasıl yeniden kullanılabilir hale detirebiliriz?  
Yapıcı fonksiyonun yardımıyla çünkü burara bier sınıf kullandığınızda kendi sınıfınız ya da Flutter tarafından sağlanan sınıf fark etmez, parantezler kullanarak onu bir nesneye dönüştürmeniz gerekir. Bu sınıfın kurucu işlevini çağırıyorsunuz  

Buraya virgül ekleyerek ve kabul etmek istediğimiz tüm adlandırılmış argümanları küme parantezleri arasına ekleyerek daha fazla adlandırılmış argüman kabul edebiliriz veya bu adlandırılmış argümanlara ek olarak bu küme parantezlerinden önce konumsal argümanlar da kabul edebiliriz  

![alt text](images/image-22.png)  

Bu text'i burada kullanmıyoruz. Bunun yerine aşağıda hala sabit kodlanmış Hello World var. Peki bu text argümanını nasıl kullanabiliriz?  

![alt text](images/image-23.png)  
ya da   
![alt text](images/image-24.png)  



## Displaying Images & Using Multiple Constructor Functions 
Kodda görüntüleri kullanabilmek için pubspec.yaml dosyasına görüntüleri ekledik.  

![alt text](images/image-25.png)  
![alt text](images/image-26.png)  

## Adding Buttons and Using Functions As Values

Column widget, birden fazla widget'ı birbirinin üzerinde birden fazla alt öge olarak oluşturmanıza olanak sağlamak için vardır.  
Aynı işlemi yatay olarak yan yana yapacak bir Row widhet'ı da vardır.  
Zarın altına bir buton eklemek istiyoruz. Butonlar çok yaygın bir widget türüdür flutter üç farklı ana butonu destekler.  
  


```Flutter
// Arka plan rengine ve hafif bir gölgeye sahip bir düğmeyi görüntülemek için burada elevated button vardır.
ElevatedButton(onPressed: onPressed, child: child)
```

```Flutter
// Arka plan rengi olmayan ancak kenarlığı olan bir düğmeyi görüntülemek için outliner buton vardır.
OutlinedButton(onPressed: onPressed, child: child)
```

```Flutter
// Bir metin olan bir düğmeyi görüntülemek için text düğmesi vardır.
TextButton(onPressed: onPressed, child: child)
```

DART'taki fonksiyonlar da sadece nesnelerdir. Yani bir fonksiyon tanımlarsanız bir fonksiyonu değer olarak aktarabilirsiniz.

Onpressed için 2 seçeneğimiz var.  
Birinci seçenek fonksioyonu sadece yerinde tanımlarsınız.  
İkinci seçenek. bir method tanımlamanızdır. 
Methodun içine yazdığımız koda, bu butona bastığımızda ne yapmak istiyorsak onu yazabiliriz
![alt text](images/image-27.png)  
![alt text](images/image-28.png)  

## Styling Button & Working with Padding 

![alt text](images/image-29.png)  
![alt text](images/image-30.png) 

## How NOT To Build Interactive Widgets 

butona tıkladığımda zarda bir değişiklik olmuyor çünkü durum bilgisi olmayan bir widget'ın içindeyiz.  

![alt text](images/image-31.png) 

## Introducing Stateful Widgets

Stateful widget'lar içlerindeki durumu yönetmemize izin verir. State ise basitçe zaman içinde değişebilen ve işlenen kullanıcı arayüzünü etkilemesi gereken verilerdir.  
Statedul widget kullanırken her zaman 2 class çalışacağız.

![alt text](images/image-32.png) 
![alt text](images/image-33.png) 
![alt text](images/image-34.png) 

## Generating Random Numbers

![alt text](images/image-35.png) 