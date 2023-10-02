part of "splash_import.dart";

@RoutePage()
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    moveToOnboard();
    super.initState();
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 3), () {
      AutoRouter.of(context).push(const OnBoardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appbackground,
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: Center(
            child: FadedScaleAnimation(
              child: Image.asset(
                MyAssets.assetsImagesLogo1,
                height: 42.h,
                width: 139.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
