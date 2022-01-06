import 'package:audioplayers/audio_cache.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HayvanlarSesPage extends StatelessWidget {
  void SesCal(int SesNo){
    final player =AudioCache();
    player.play('ses$SesNo.mp3');
  }
  List <String> hayvan = [
    'Köpek', 'Kedi', 'Keçi', 'At', 'Inek', 'Tavuk', 'Kurbaga', 'Serçe', 'Maymun'
  ];// dokuz tane hayvanı tek tek yazmak yerine bir liste oluşturdum ve bu listeden değerleri aldım
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar( //ikinci sayfanın başlık alanını oluşturdum
          title: Center(
            child: Text(
              'Hayvanlar Ve Sesleri',
              style: (
                  TextStyle(
                      fontSize: 30.0,
                      color: Colors.purple[100],
                      fontFamily: 'Merienda'
                  )),
            ),
          ),
          backgroundColor: Colors.purple[500],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim1.jpg'),
                    ),
                  ),
                  SizedBox(width: 10.0, height: 10.0,),
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim2.jpg'),
                    ),
                  ),
                  SizedBox(width: 10.0, height: 10.0,),
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim3.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(1);
                            },
                            child: Text(
                              //'Köpek',
                              hayvan[0], // liste kullanılırsa
                              //hayvan[0]isim, // sınıf kullanılırsa
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),

                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(2);
                            },
                            child: Text(
                              hayvan[1], //kedi
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(3);
                            },
                            child: Text(
                              hayvan[2], //keçi
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim4.jpg'),
                    ),
                  ),
                  SizedBox(width: 10.0, height: 10.0,),
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim5.jpg'),
                    ),
                  ),
                  SizedBox(width: 10.0, height: 10.0,),
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim6.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(4);

                            },
                            child: Text(
                              hayvan[3], //at
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(5);

                            },
                            child: Text(
                              hayvan[4], //inek
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(6);

                            },
                            child: Text(
                              hayvan[5], //tavuk
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim7.jpg'),
                    ),
                  ),
                  SizedBox(width: 10.0, height: 10.0,),
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim8.jpg'),
                    ),
                  ),
                  SizedBox(width: 10.0, height: 10.0,),
                  Expanded(
                    child: FlipCard(
                      front: Image.asset('images/soru.jpg'),
                      back: Image.asset('images/resim9.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(7);

                            },
                            child: Text(
                              hayvan[6],//kurbağa
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(8); //serçe
                            },
                            child: Text(
                              hayvan[7],
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple[50],
                  height: 30.0,
                  width: 110.0,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: FlatButton(
                            onPressed: () {
                              SesCal(9);

                            },
                            child: Text(
                              hayvan[8],//maymun
                              style: (
                                  TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.purple[900],
                                    fontFamily: 'Merienda',
                                  )),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
    //);
  }
}
