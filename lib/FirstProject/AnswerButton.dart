import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  VoidCallback pressTodo;

  String s;

  AnswerButton(this.s, this.pressTodo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: pressTodo,
        style: ElevatedButton.styleFrom(
            primary: Colors.white, onPrimary: Color(0xff000000)),
        child: Text(s),
      ),
    );
  }
}
