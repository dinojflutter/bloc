part of 'widgets_import.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.assetsImagesBorder2,
          height: 333.h,
          width: 333.w,
        ),
        "Customize your reading experience and join the conversation by creating an account."
            .text
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .align(TextAlign.center)
            .make()
      ],
    );
  }
}
