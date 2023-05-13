import 'package:get/get.dart';

class SoundAssets {
  static String endOfQuiz = (Get.locale!.languageCode == 'en') ? 'sounds/fin_quiz.mp3' : 'sounds/fin_quiz_fr.mp3';
  static String register = (Get.locale!.languageCode == 'en') ? 'sounds/register.mp3' : 'sounds/login_fr.mp3';
  static String login = (Get.locale!.languageCode == 'en') ? 'sounds/login.mp3' : 'sounds/login_fr.mp3';
}
