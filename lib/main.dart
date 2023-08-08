import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bugün Ne Yesem?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int karboNo = 1;
  int proteinNo = 1;
  int meyveNo = 1;
  List<String> karboAdlari = [
    'Pirinç Pilavı | 21,57g Karbonhidrat',
    'Makarna | 25,12g Karbonhidrat',
    'Şehriye Pilavı | 24,45g Karbonhidrat',
    'Yulaf Ezmesi | 53g Karbonhidrat',
    'Mısır Gevreği | 84g Karbonhidrat'
  ];
  List<String> proteinAdlari = [
    'Haşlanmış Tavuk | 24,7g Protein',
    'Antrikot | 19,62g Protein',
    'Somon Balığı | 21,62g Protein',
    'Haşlanmış Yumurta | 12,58g Protein',
    'Sahanda Yumurta | 10,68g Protein'
  ];
  List<String> meyveAdlari = [
    'Elma | 19,06g Karbonhidrat',
    'Muz | 26,95g Karbonhidrat',
    'Armut | 25,66g Karbonhidrat',
    'Ananas | 12,63g Karbonhidrat',
    'Kivi | 14,66g Karbonhidrat'
  ];
  void yemekleriYenile() {
    setState(() {
      karboNo = Random().nextInt(5) + 1;
      proteinNo = Random().nextInt(5) + 1;
      meyveNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Bütün besin değerleri 100gr üzerindendir.',
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      karboNo = Random().nextInt(5) + 1;
                      proteinNo = Random().nextInt(5) + 1;
                      meyveNo = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('assets/karbonhidrat_$karboNo.jpg')),
            ),
          ),
          Text(
            karboAdlari[karboNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/protein_$proteinNo.jpg')),
            ),
          ),
          Text(
            proteinAdlari[proteinNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/meyve_$meyveNo.jpg')),
            ),
          ),
          Text(
            meyveAdlari[meyveNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
