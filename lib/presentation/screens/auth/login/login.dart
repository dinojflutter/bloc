part of 'login_import.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    super.initState();
  }

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
                50.h.heightBox,
                Form(
                  key: loginViewModel.formkey,
                  child: Container(
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
                          50.h.heightBox,
                          "Login"
                              .text
                              .size(18)
                              .color(MyColors.appbackground)
                              .fontWeight(FontWeight.bold)
                              .make()
                              .centered(),
                          50.h.heightBox,
                          "Email"
                              .text
                              .size(15)
                              .bold
                              .color(MyColors.appbackground)
                              .make(),
                          15.h.heightBox,
                          VxTextField(
                            fillColor: Colors.transparent,
                            borderColor: MyColors.appbackground,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: const Icon(
                              Icons.email,
                              color: MyColors.appbackground,
                            ),
                            controller: loginViewModel.emailcontroller,
                            validator: (email) {
                              if (email!.isEmpty) {
                                return "Email is Empty";
                              } else if (!email.isValidEmail) {
                                return "Invalid Email";
                              }
                              return null;
                            },
                          ),
                          25.h.heightBox,
                          "Password"
                              .text
                              .size(15)
                              .bold
                              .color(MyColors.appbackground)
                              .make(),
                          10.h.heightBox,
                          VxTextField(
                            isPassword: true,
                            obscureText: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.appbackground,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: MyColors.appbackground,
                            ),
                            controller: loginViewModel.passwordcontroller,
                            validator: (password) {
                              if (password!.isEmpty) {
                                return "Email is Empty";
                              } else if (password.length < 7) {
                                return "password should be of minimum 8 characters";
                              }

                              // else if (!password.isValidPassword) {
                              //   return "invalid password";
                              // }
                              return null;
                            },
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
                                  .size(14)
                                  .color(MyColors.appbackground)
                                  .make(),
                            ],
                          ),
                          100.h.heightBox,
                          PrimaryButtom(
                              title: "Login",
                              onpressed: () {
                                if (loginViewModel.formkey.currentState!
                                    .validate()) {}
                                loginViewModel.login(context);
                              }),
                          20.h.heightBox,
                          "Don`t have an account ? "
                              .richText
                              .size(15)
                              .color(MyColors.appbackground)
                              .withTextSpanChildren([
                                TextSpan(
                                    text: "Sign Up",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => AutoRouter.of(context)
                                          .push(const RegisteredRoute()),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ])
                              .make()
                              .centered(),
                          61.h.heightBox
                        ],
                      ),
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
