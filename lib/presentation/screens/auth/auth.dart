part of 'auth_import.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(MyAssets.assetsImagesBorderBacgroundImage),
        ),
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Hello world auth"),
        // ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  MyAssets.assetsImagesLogo1,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
                Spacer(),
                "Explore the world, \nBillions of Thoughts."
                    .text
                    .size(25)
                    .align(TextAlign.left)
                    .white
                    .fontWeight(FontWeight.w500)
                    .make(),
                25.heightBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.appbackground,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18).r),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width.w, 50)),
                  child: "Login"
                      .text
                      .color(Colors.white)
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                12.heightBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18).r),
                      side: BorderSide(color: MyColors.white),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width.w, 50)),
                  child: "Registered"
                      .text
                      .color(MyColors.white)
                      .size(16.sp)
                      .fontWeight(FontWeight.w700)
                      .make(),
                ),
                10.heightBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
