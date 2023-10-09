part of 'common_widgets_import.dart';

class PrimaryButtom extends StatelessWidget {
  const PrimaryButtom({
    super.key,
    required this.title,
    required this.onpressed,
  });

  final String title;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.appbackground,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18).r),
          minimumSize: Size(MediaQuery.of(context).size.width.w, 50)),
      child: title.text
          .color(Colors.white)
          .size(16.sp)
          .fontWeight(FontWeight.w700)
          .make(),
    );
  }
}
