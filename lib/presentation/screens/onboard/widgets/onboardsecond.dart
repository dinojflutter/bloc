part of 'widgets_import.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.assetsImagesBorderImage,
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
