import 'package:flutter/widgets.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 161, 131, 42),
          fontSize: 28,
          fontFamily: AutofillHints.jobTitle),
    );
  }
}
