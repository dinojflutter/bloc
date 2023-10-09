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
                const Spacer(),
                "Explore the world, \nBillions of Thoughts."
                    .text
                    .size(25)
                    .align(TextAlign.left)
                    .white
                    .fontWeight(FontWeight.w500)
                    .make(),
                25.heightBox,
                PrimaryButtom(
                  title: "Login",
                  onpressed: () =>
                      AutoRouter.of(context).push(const LoginRoute()),
                ),
                12.heightBox,
                OutlineButton(
                  title: "Registered",
                  onpressed: () =>
                      AutoRouter.of(context).push(const RegisteredRoute()),
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
