import 'package:flutter/cupertino.dart';

createStats(numb, type, emphasise) {
  return Column(
    children: [
      Text(
        numb,
        style: TextStyle(
            fontSize: emphasise == 'strong' ? 50 : 25,
            fontWeight: FontWeight.bold),
      ),
      Text(
        type,
        style: const TextStyle(fontSize: 15),
      ),
      Container(
        height: 15,
        width: emphasise == 'strong' ? 110 : 80,
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(
              width: 1.5,
            ),
            bottom: BorderSide(
              width: 1.5,
            ),
            right: BorderSide(
              width: 1.5,
            ),
          ),
        ),
      ),
    ],
  );
}
