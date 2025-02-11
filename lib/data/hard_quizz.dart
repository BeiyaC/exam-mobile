import 'package:exam_quizz/models/quizz.dart';

class HardQuizzData {
  List<Question> questionList = [
    Question(
      question: "L'univers observable a un diamètre de plus de 90 milliards d'années-lumière ?",
      response: true,
      explanation: "En raison de l'expansion de l'univers, son diamètre observable est d'environ 93 milliards d'années-lumière.",
    ),
    Question(
      question: "La théorie de la relativité d'Einstein permet de prédire le comportement des trous noirs ?",
      response: true,
      explanation: "La relativité générale prédit précisément comment les trous noirs se forment et interagissent avec leur environnement.",
    ),
    Question(
      question: "Il existe un endroit sur Terre où il ne pleut jamais ?",
      response: true,
      explanation: "Les vallées sèches de l'Antarctique sont l'un des endroits les plus arides du monde, où il n'a pas plu depuis environ 2 millions d'années.",
    ),
    Question(
      question: "Le nombre d'atomes dans un seul grain de sable est plus grand que le nombre d'étoiles dans l'univers observable ?",
      response: false,
      explanation: "L'univers contient environ 200 milliards de galaxies, chacune avec des milliards d'étoiles, dépassant largement les atomes dans un grain de sable.",
    ),
    Question(
      question: "L'humain pourrait survivre sans dormir ?",
      response: false,
      explanation: "Le sommeil est essentiel pour les fonctions cognitives et la survie, l'absence prolongée de sommeil peut entraîner la mort.",
    ),
    Question(
      question: "Le plus grand nombre premier connu a plus de 20 millions de chiffres ?",
      response: true,
      explanation: "Le plus grand nombre premier connu dépasse 24 millions de chiffres et a été découvert grâce aux superordinateurs.",
    ),
    Question(
      question: "Il y a plus de bactéries dans le corps humain que de cellules humaines ?",
      response: true,
      explanation: "Le microbiome humain contient environ 10 fois plus de bactéries que de cellules humaines.",
    ),
    Question(
      question: "La ceinture d'astéroïdes entre Mars et Jupiter contient suffisamment de matière pour former une autre planète ?",
      response: false,
      explanation: "Bien qu'elle soit dense en apparence, la ceinture d'astéroïdes ne contient qu'une fraction de la masse de la Lune.",
    ),
    Question(
      question: "Le noyau de la Terre est plus chaud que la surface du Soleil ?",
      response: true,
      explanation: "Le noyau terrestre peut atteindre environ 5 500°C, similaire à la température de la surface solaire.",
    ),
    Question(
      question: "Le pôle Nord et le pôle Sud de la Terre ont exactement le même climat ?",
      response: false,
      explanation: "Le pôle Sud est beaucoup plus froid que le pôle Nord en raison de son altitude et de sa couverture glaciaire permanente.",
    )
  ];
}