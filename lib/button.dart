import 'package:flutter/material.dart';

class ElButton extends StatelessWidget {
  const ElButton({super.key, required this.anstext, required this.ontap});

  final String anstext;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        anstext,
        textAlign: TextAlign.center,
      ),
    );
  }
}
