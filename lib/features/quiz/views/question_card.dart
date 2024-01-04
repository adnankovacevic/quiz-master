import 'package:boilerplate_tamplate/core/config/custom_themes.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.currentIndex,
    required this.questionLenght,
    required this.answerOptions,
    required this.questionText,
  });
  final int currentIndex;
  final int questionLenght;
  final List<String> answerOptions;
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryDarkColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question $currentIndex of $questionLenght',
              style: AppTextStyle.poppins16White700,
            ),
            Text(
              questionText,
              style: AppTextStyle.poppins14White500,
            ),
            Column(
              children: answerOptions.map((option) {
                return ListTile(
                  title: Text(
                    option,
                    style: AppTextStyle.poppins12White600,
                  ),
                  onTap: () {
                    // Handle option selection as needed
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
