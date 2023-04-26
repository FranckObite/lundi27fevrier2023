import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section25/view/realisation.dart';

class mesAmis extends StatelessWidget {
  const mesAmis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: maListePiscine.length,
          itemBuilder: (context, index) {
            final listePiscine = maListePiscine[index];

            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image:
                              AssetImage("images/${listePiscine.imageJardin}"),
                          fit: BoxFit.cover)),
                ),
                Text("Isabelle")
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 30,
            );
          },
        ),
      ),
    );
  }
}
