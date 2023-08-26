import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/quesidentify.dart';

class summaryitem extends StatelessWidget {
  const summaryitem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    final iscorrectans = item['user_answer'] == item['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        quesidentify(
          iscorrect: iscorrectans,
          quesindex: item['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item['user_answer'] as String,
                style: const TextStyle(color: Colors.yellow),
              ),
              Text(
                item['correct_answer'] as String,
                style: const TextStyle(color: Colors.orangeAccent),
              )
            ],
          ),
        )
      ],
    );
  }
}
