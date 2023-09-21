import 'package:flutter/material.dart';
import 'package:flutter_burclar_uygulamsi_v1/burc_detay.dart';
import 'package:flutter_burclar_uygulamsi_v1/model/burc.dart';

class BurcItem extends StatelessWidget {
  final burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
          ));
        },
        leading: Image.asset(
          "assets/images/" + listelenenBurc.burcKucukResim,
        ),
        title: Text(listelenenBurc.burcAdi),
        subtitle: Text(listelenenBurc.burcTarihi),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
