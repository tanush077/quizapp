import 'package:flutter/material.dart';

class quesidentify extends StatelessWidget {
  const quesidentify({
    super.key,
    required this.iscorrect,
    required this.quesindex,
  });

  final int quesindex;
  final bool iscorrect;

  @override
  Widget build(BuildContext context) {
    final quesno = quesindex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: iscorrect ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        quesno.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
