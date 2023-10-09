part of 'registered_import.dart';

@RoutePage()
class Registered extends StatefulWidget {
  const Registered({super.key});

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appbackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: FadedScaleAnimation(
            child: Column(
              children: [
                Image.asset(
                  MyAssets.assetsImagesLogo1,
                  height: 42,
                  width: 132,
                ).centered(),
                73.h.heightBox,
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        40.h.heightBox,
                        "Sign Up"
                            .text
                            .size(18)
                            .color(MyColors.appbackground)
                            .fontWeight(FontWeight.bold)
                            .make()
                            .centered(),
                        40.h.heightBox,
                        "Email"
                            .text
                            .size(15)
                            .bold
                            .color(MyColors.appbackground)
                            .make(),
                        10.h.heightBox,
                        const VxTextField(
                          fillColor: Colors.transparent,
                          borderColor: MyColors.appbackground,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(
                            Icons.email,
                            color: MyColors.appbackground,
                          ),
                        ),
                        25.h.heightBox,
                        "Password"
                            .text
                            .size(15)
                            .bold
                            .color(MyColors.appbackground)
                            .make(),
                        10.h.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.appbackground,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyColors.appbackground,
                          ),
                        ),
                        25.h.heightBox,
                        "Confirm Password"
                            .text
                            .size(15)
                            .bold
                            .color(MyColors.appbackground)
                            .make(),
                        10.h.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.appbackground,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyColors.appbackground,
                          ),
                        ),
                        10.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 230,
                              child: CheckboxListTile(
                                  contentPadding: EdgeInsets.zero,
                                  value: false,
                                  onChanged: (value) {},
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title: "Remember me".text.make()),
                            ),
                            "Forget password ?"
                                .text
                                .bold
                                .size(14)
                                .color(MyColors.appbackground)
                                .make(),
                          ],
                        ),
                        20.h.heightBox,
                        PrimaryButtom(title: "Sign Up", onpressed: () {}),
                        20.h.heightBox,
                        "Already have an account ? "
                            .richText
                            .size(15)
                            .color(MyColors.appbackground)
                            .withTextSpanChildren([
                              TextSpan(
                                  text: "Login",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => AutoRouter.of(context)
                                        .push(const LoginRoute()),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ])
                            .make()
                            .centered(),
                        25.h.heightBox
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
