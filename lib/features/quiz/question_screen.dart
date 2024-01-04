import 'package:boilerplate_tamplate/core/components/custom_app_bar.dart';
import 'package:boilerplate_tamplate/core/components/linear_gradient_background.dart';
import 'package:boilerplate_tamplate/core/models/question.dart';
import 'package:boilerplate_tamplate/core/provider/question_provider.dart';
import 'package:boilerplate_tamplate/features/quiz/views/question_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key, required this.questions});

  final List<Question> questions;

  @override
  Widget build(BuildContext context) {
    return LinearGradientBackground(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Geography'),
        backgroundColor: Colors.transparent,
        body: CardSwiper(
          allowedSwipeDirection: AllowedSwipeDirection.only(left: true),
          cardsCount: questions.length,
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
            return ChangeNotifierProvider.value(
              value: context.read<QuestionProvider>(),
              child: QuestionCard(
                currentIndex: index + 1,
                questionLenght: questions.length,
                questionText: questions[index].text,
                answerOptions: questions[index].options,
              ),
            );
          },
          onEnd: () {
            context.read<QuestionProvider>().setNextQuestion();
          },
        ),
      ),
    );
  }
}
