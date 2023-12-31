part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardviewModel onBoardviewModel = OnBoardviewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                15.h.heightBox,
                Image.asset(
                  MyAssets.assetsImagesLogo1,
                  color: MyColors.appbackground,
                  height: 42.h,
                  width: 139.w,
                ),
                30.h.heightBox,
                PageView(
                  controller: onBoardviewModel.pageController,
                  children: const [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardthird(),
                  ],
                ).expand(),
                PrimaryButtom(
                  title: "Get Started",
                  onpressed: () => AutoRouter.of(context).push(
                    const AuthRoute(),
                  ),
                ),
                10.h.heightBox,
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .color(MyColors.appbackground)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    SmoothPageIndicator(
                        controller: onBoardviewModel.pageController,
                        // PageController
                        count: 3,
                        effect: WormEffect(
                            dotHeight: 10.h,
                            dotWidth: 10.w,
                            activeDotColor: const Color.fromARGB(
                                255, 17, 14, 13)), // your preferred effect
                        onDotClicked: (index) {}),
                    "Next"
                        .text
                        .color(MyColors.appbackground)
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make(),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
