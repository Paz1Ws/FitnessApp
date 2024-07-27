import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../widgets/widgets.dart';
import '../../screens.dart';
import 'providers/scrollable_controller_provider.dart';

class WalkwayController extends ConsumerStatefulWidget {
  const WalkwayController({super.key});

  @override
  _WalkwayControllerState createState() => _WalkwayControllerState();
}

class _WalkwayControllerState extends ConsumerState<WalkwayController> {
  final PageController pageController = PageController();
  bool isInitialPage = true;
  final List<Widget> widgets = [
    WelcomeSetupScreen(),
    SelectGender(),
    SelectAge(),
    SelectWeight(),
    SelectHeight(),
    // SelectGoal(),
    // SelectActivityLevel(),
    // FillProfile(),
  ];

  void nextPage() {
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    setState(() {
      isInitialPage = false;
      ref.read(scrollableControllerProvider.notifier).state = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool allowScroll =
        ref.watch(scrollableControllerProvider.notifier).state;
    return Scaffold(
        body: PageView(
          physics: allowScroll ? null : AlwaysScrollableScrollPhysics(),
          controller: pageController,
          children: widgets,
        ),
        floatingActionButton: Transform(
          transform: Matrix4.translationValues(-70, -30, 0),
          child: NextButton(
            text: isInitialPage ? 'Next' : 'Continue',
            onPressed: allowScroll ? nextPage : null,
          ),
        ));
  }
}
