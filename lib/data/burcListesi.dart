import 'package:flutter/material.dart';
import 'package:flutter_burclar_uygulamsi_v1/burc_item.dart';
import '../model/burc.dart';
import 'strings.dart';

class BurcListesi extends StatelessWidget {
  late List<burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('burc listesi'),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,
      )),
    );
  }

  List<burc> veriKaynaginiHazirla() {
    List<burc> gecici = [];
    for (var i = 0; i < 12; i++) {
      var burcadi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcGenelOzellikleri = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukkResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      burc eklenecekBurc = burc(burcadi, burcTarihi, burcGenelOzellikleri,
          burcKucukResim, burcBuyukkResim);
      gecici.add(eklenecekBurc);
    }

    return gecici;
  }
}
