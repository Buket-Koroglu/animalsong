import 'package:flutter/material.dart';
import 'hayvanlar.dart';

void main() =>runApp(Hayvanlar());
class Hayvanlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp widgeti bizim için uygulamamızı yazabileceğimiz boş bir yapı oluşturur
      home: Scaffold(
        backgroundColor: Colors.purple[100], //sayfanın arka plan rengini belirledik
        body: SafeArea( // uygulamamızın düzgün bir şekilde çalısabilmesi kullanıyoruz
          child: HayvanlarPage(),
        ),
      ),
    );
  }
}


class HayvanlarPage extends StatefulWidget { //stful yazarak StatefulWidget oluşturuyoruz
  @override
  _HayvanlarPageState createState()=> _HayvanlarPageState();
}
class _HayvanlarPageState extends State<HayvanlarPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( //AppBar araç çubuğu widget'lar, görüntüler başlık alanı burada bulunur
        backgroundColor: Colors.purple,
        title: Center( //başlık alanı ortalanarak yazılacak
            child: Text( //başlık için yazılacak metin özellikleri belirtilir
              'Hangi Hayvanın Sesi',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.purple[100],
                fontFamily: 'Merienda',
              ),)),
      ),
      body: Column(
        //body alanını column olarak oluşturdum
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(child: Padding( //Alt öğenin kullanılabilir alanı doldurması için expanded widget oluşturdum
            padding: const EdgeInsets.all(10.0), //resim her yerden 10.0 uzaklıgında olacak şekilde hizalandı
            child: Image.asset('images/hayvanlar.jpg'), // IMage.asset ile resim eklenmiş oldu
          )),
          SizedBox(height: 20.0), // ile hayvanlar resmi ile text alanı arasında boşluk oluşturdum
          Text('Hayvanlar Ve Seslerini Ögrenelim',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.purple[900],
              fontFamily: 'Merienda',
            ),
          ),
          ButtonTheme( //buton resmine tıklama özelliği vermek için buton oluşturdum
            height: 20.0,
            child:FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>HayvanlarSesPage()));
                  /*Navigor bir sayfadan diğer sayfaya geçmemizi sağlayan komuttur
                  Bu kod ile Anasayfadan hayvanlar.dart dosyasındaki HayvanlarSespage() özelliğine geçiyoruz*/
                },
                //buton resmine tıklama Navigator.push metodu ile ikinci sayfaya geçiş sağlacak
                child: Image.asset('images/buton.png')),
            //diger sayfata geçmek için FlatButton ekledik bu butonda buton resimi bulunmaktadır
            // buraya tıklanınca uygulamanın diğer sayfasına geçiş yapılır
          )
        ],
      ),
    );
  }
}

