import 'package:coffee/product/constants/constsnts.dart';
import 'package:coffee/view/auth/login/viewmodel/login_view_model.dart';
import 'package:flutter/material.dart';
import '../../../../product/widgets/buttom/custom_green_button.dart';

///The design should be on this page. Widgets should be split.
///I have to reach events like click by saying model.blabla

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final LoginViewModel model = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomGreenButton(buttonText: "add",onTap: (){}, color: kCustomGreen1,),
      ),
    );
  }
}
