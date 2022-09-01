import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pood_mbti_j/interface/pageInterface.dart';
import 'package:pood_mbti_j/model/AnswerModel.dart';
import 'package:pood_mbti_j/screen/QuestionWidget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with PageInterface {
  final List<dynamic> decoded = [];
  int currentStatus = 0;
  late PageController pageController;
  final AnswerModel answerModel = AnswerModel();

  @override
  void initState() {
    pageController = PageController();
    _readJson();
    super.initState();
  }

  _readJson() async {
    final String data = await rootBundle.loadString('assets/test.json');
    var d = json.decode(data);
    setState(() {
      decoded.addAll(d);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: decoded.isEmpty ? Container() : SafeArea(child: _pageView(decoded)),
    );
  }

  Widget _pageView(List<dynamic> questions) {
    return Center(
      child: Container(
        color: Colors.blue,
        width: _calcWidget(context),
        height: double.infinity,
        child: _pageItem(currentStatus, questions[currentStatus]),
      ),
    );
    // return Center(
    //   child: Container(
    //     color: Colors.blue,
    //     width: _calcWidget(context),
    //     height: double.infinity,
    //     child: PageView.builder(
    //       controller: pageController,
    //       itemCount: questions.length,
    //       itemBuilder: (context, index) {
    //         return _pageItem(index, questions[index]);
    //       },
    //     ),
    //   ),
    // );
  }


  double _calcWidget(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (GetPlatform.isWeb) {
      width = width * 0.5;
      if (width > 500) {
        return 500;
      }
    }
    return width;
  }

  Widget _pageItem(int index, dynamic data) {
    return QuestionWidget(
      data: data,
      answer: (answer) {
        answerModel.setAnswer(index, answer);
        pagePlus();
      },
    );
  }

  @override
  int pagePlus() {
    setState(() {
      currentStatus++;
    });
    // movePage(currentStatus);
    return currentStatus;
  }

  @override
  int pageMinus() {
    setState(() {
      currentStatus--;
      // movePage(currentStatus);
    });
    return currentStatus;
  }

  @override
  Future movePage(int pageNum) async {
    pageController.animateToPage(pageNum,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }
}
