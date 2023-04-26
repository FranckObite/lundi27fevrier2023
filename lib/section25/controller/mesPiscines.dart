import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section25/view/realisation.dart';

class mesPiscine extends StatelessWidget {
  const mesPiscine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.separated(
        itemCount: maListePiscine.length,
        itemBuilder: (context, index) {
          final listePiscine = maListePiscine[index];

          return Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/${listePiscine.imagePiscine}"),
                    fit: BoxFit.cover)),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20,
          );
        },
      ),
    );
  }
}
