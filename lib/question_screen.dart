import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/quesdata.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({
    super.key,
    required this.onselect,
  });

  final void Function(String answer) onselect;

  @override
  State<QuesScreen> createState() => _QuesScreenState();
}

class _QuesScreenState extends State<QuesScreen> {
  var currentqindex = 0;

  void ansques(String selected) {
    widget.onselect(selected);
    setState(() {
      currentqindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final current = quesdata[currentqindex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              current.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...current.getShuffled().map((answer) {
              return ElButton(
                anstext: answer,
                ontap: () {
                  ansques(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
