part of 'widgets_import.dart';

class OnBoardthird extends StatelessWidget {
  const OnBoardthird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/border/3.png",
          height: 333.h,
          width: 333.w,
        ),
        "Explore a wide selection of categories, or use the search bar to find specific topics"
            .text
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .align(TextAlign.center)
            .make()
      ],
    );
  }
}
