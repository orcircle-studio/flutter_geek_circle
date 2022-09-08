import 'package:flutter/material.dart';
import 'package:geek_circle/Question.dart';

import 'AnswerButton.dart';

class GeekCircle extends StatefulWidget {
  const GeekCircle({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GeekCircleState();
}

class _GeekCircleState extends State<GeekCircle> {
  List<Map<String, List<String>>> questions = [
    {
      "今天晚上吃什么": ["火锅", "麻辣烫", "香菇", "黄焖鸡"]
    },
    {
      "今天晚上喝什么": ["奶茶", "可乐", "无糖雪碧", "茶"]
    },
    {
      "今天晚上玩什么": ["LOL", "守望先锋", "CS GO", "健身环大冒险"]
    },
    {
      "今天晚上学什么": ["Flutter", 'java', 'sql', 'react']
    },
  ];
  var _current = 0;

  void pressTodo() {
    setState(() {
      _current++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuestionSelector'),
        shadowColor: Colors.transparent,

      ),
      backgroundColor: const Color.fromARGB(255, 244, 254, 255),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: (_current < questions.length - 1)
              ? Column(children: [
                  Question(text: questions[_current].keys.first),
                  ...getAnswer(questions, _current, pressTodo)
                ])
              : Container(
                  child: Text("恭喜您！！问题完成！！！",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 18,color: Color(
                      0xFF009696)),),
                ),
        ),
      ),
    );
  }
}

getAnswer(List<Map<String, List<String>>> questions, int current,
    VoidCallback pressTodo) {
  return questions[current][questions[current].keys.first]?.map((element) {
    return AnswerButton(element, pressTodo);
  }).toList();
}
