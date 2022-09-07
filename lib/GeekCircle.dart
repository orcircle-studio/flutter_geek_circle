import 'package:flutter/material.dart';
import 'package:geek_circle/Question.dart';

class GeekCircle extends StatefulWidget {
  const GeekCircle({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GeekCircleState();
}

class _GeekCircleState extends State<GeekCircle> {
  var questions = ["今天晚上吃什么", "今天晚上喝什么", "今天晚上玩什么", "今天晚上玩什么", "今天晚上玩什么"];
  var current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuestionSelector'),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 254, 255),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(children: [
            Question(text: questions[current]),
            ElevatedButton(
                onPressed: () => setState(() => {
                      if (current < 4) {current++}
                    }),
                child: const Text("反光板VCD的风格和")), ElevatedButton(
                onPressed: () => setState(() => {
                      if (current < 4) {current++}
                    }),
                child: const Text("aa")), ElevatedButton(
                onPressed: () => setState(() => {
                      if (current < 4) {current++}
                    }),
                child: const Text("aa")), ElevatedButton(
                onPressed: () => setState(() => {
                      if (current < 4) {current++}
                    }),
                child: const Text("aa")), ElevatedButton(
                onPressed: () => setState(() => {
                      if (current < 4) {current++}
                    }),
                child: const Text("aa")), ElevatedButton(
                onPressed: () => setState(() => {
                      if (current < 4) {current++}
                    }),
                child: const Text("aa")),
          ]),
        ),
      ),
    );
  }
}
