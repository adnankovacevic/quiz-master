import 'package:boilerplate_tamplate/core/components/custom_app_bar.dart';
import 'package:boilerplate_tamplate/core/components/linear_gradient_background.dart';
import 'package:boilerplate_tamplate/core/config/custom_themes.dart';
import 'package:boilerplate_tamplate/core/models/category.dart';
import 'package:boilerplate_tamplate/core/models/question.dart';
import 'package:boilerplate_tamplate/core/provider/category_provider.dart';
import 'package:boilerplate_tamplate/features/quiz/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return LinearGradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          title: 'Choose Topic',
          rightActionIcon: Icons.menu,
        ),
        body: SafeArea(
          child: Expanded(
            child: Consumer<CategoryProvider>(
                builder: (context, categoryProvider, _) {
              return buildCategoryGridList(categoryProvider.categories);
            }),
          ),
        ),
      ),
    );
  }

  Widget buildCategoryGridList(List<Category> categories) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 1.0,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return buildCategoryCard(context, categories[index]);
      },
    );
  }

  Widget buildCategoryCard(BuildContext context, Category category) {
    return GestureDetector(
      onTap: () {
        Provider.of<CategoryProvider>(context, listen: false)
            .selectCategory(category);

        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => QuestionScreen(questions: questions),
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.backgroundColor, width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset(
              //   category.imagePath ?? '',
              //   height: 150,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              Center(
                  child: Text(category.name,
                      style: AppTextStyle.poppins18White500)),
            ],
          ),
        ),
      ),
    );
  }
}
