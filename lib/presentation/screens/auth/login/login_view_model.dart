part of 'login_import.dart';

class LoginViewModel {
  final Repository repository;

  LoginViewModel({required this.repository});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  login(context) async {
    var loginData = await repository.authRepo
        .userLogin(emailcontroller.text, passwordcontroller.text, context);

    if (loginData.accessToken != null) {
      Utils.saveToken(loginData.accessToken.toString());
      AutoRouter.of(context).push(const GeneralRoute());
    }
  }
}
