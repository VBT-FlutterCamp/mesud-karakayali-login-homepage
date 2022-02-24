import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'package:vbt_sample_project/core/constants/colors/onboard_color.dart';
import 'package:vbt_sample_project/core/constants/strings/login_strings.dart';
import 'package:vbt_sample_project/feature/homepage/view/homepage_view.dart';

import '../../../products/widgets/my_text_form_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _codeNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  bool isPassword = true;
  
  final double _elevationDoubleValue = 1;
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      //physics: BouncingScrollPhysics(),
      child: Padding(
        padding:EdgeInsets.all(10),
        child: Padding(
          padding:EdgeInsets.only(top: context.height/5),
          child: Container(
          
           // color: Colors.amber,
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildLoginTexts(),
                _buildFormTextFields(),
                
                _buildForgotPasswordText(context),
                _buildLoginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildLoginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>HomePageView()), (route) => false);
        },
        child: const Text(LoginStrings.loginText),
        style: ElevatedButton.styleFrom(
          shape:  RoundedRectangleBorder(
               borderRadius:  BorderRadius.circular(10.0),
               ),
          minimumSize: Size(context.width * 0.7, context.height * 0.07),
          primary: LoginColor.buttonColor,
          elevation: _elevationDoubleValue,
        ),
      ),
    );
  }

  Form _buildFormTextFields() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          MyTextFormField(controller: _mailController, keyboardType: TextInputType.emailAddress, labelText: "Email", focusNode: _emailNode),
          MyTextFormField(controller: _passwordController, keyboardType: TextInputType.text, labelText: "Password", focusNode: _passwordNode,isPassword: true,),
          
        ],
      ),
    );
  }

  TextButton _buildForgotPasswordText(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(),
      child: Text(
        LoginStrings.forgotPassword,
        
      ),
      onPressed: () {},
    );
  }

  Column _buildLoginTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LoginStrings.welcomeText,
          style: TextStyle(
            fontSize: context.normalValue * 2,
          ),
        ),
        Text(
          LoginStrings.designRelishText,
          style: TextStyle(
            fontSize: context.normalValue * 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}