import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  dynamic data;

  Function(String answer) answer;

  QuestionWidget({
    required this.data,
    required this.answer,
    Key? key,
  }) : super(key: key);

  static const _question = "question";
  static const _a = "a";
  static const _b = "b";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("질문 : ${data[_question]}"),
        ElevatedButton(
            onPressed: () => answer("a"), child: Text("답변 1 : ${data[_a]}")),
        ElevatedButton(
            onPressed: () => answer("b"), child: Text("답변 2 : ${data[_b]}"))
      ],
    );
  }
}
