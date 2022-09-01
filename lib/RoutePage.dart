import 'package:get/get.dart';
import 'package:pood_mbti_j/screen/IntroScreen.dart';

class RoutePage {
  static movePage(String pageName) => Get.toNamed(pageName);

  static const String INTRO_ROUTE = "/intro";

  static final List<GetPage> getPageList = [
    GetPage(
      name: INTRO_ROUTE,
      transition: Transition.fadeIn,
      page: () => const IntroScreen(),
    ),
  ];
}
