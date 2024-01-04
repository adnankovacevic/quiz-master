class Question {
  final String text;
  final List<String> options;

  Question({required this.text, required this.options});
}

final List<Question> questions = [
  Question(
    text: 'What is the capital city of Bosnia & Herzegovina?',
    options: ['Sarajevo', 'Belgrade', 'Zagreb', 'Ljubljana'],
  ),
  Question(
    text: 'What is the capital city of Austria?',
    options: ['Vienna', 'Prague', 'Budapest', 'Bratislava'],
  ),
  Question(
    text: 'What is the capital city of France?',
    options: ['Paris', 'Berlin', 'Amsterdam', 'Madrid'],
  ),
  Question(
    text: 'What is the capital city of Italy?',
    options: ['Rome', 'Athens', 'Lisbon', 'Bern'],
  ),
];
