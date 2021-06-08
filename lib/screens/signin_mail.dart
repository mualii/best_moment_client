import 'package:best_moment_client/screens/signup_mail.dart';
import 'package:best_moment_client/widgets/logo_widget.dart';
import 'package:best_moment_client/widgets/rectangle_button.dart';
import 'package:flutter/material.dart';

class SignInWithMail extends StatelessWidget {
  String _email = '';
  String _passowrd = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoWidget(),
                TextFormField(
                  key: ValueKey('email'),
                  textAlign: TextAlign.right,
                  validator: (value) =>
                      (value != '') ? null : 'Enter a valid Email',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "البريد الالكترونى",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      suffixIcon: Icon(Icons.mail_outline)),
                  onSaved: (newValue) => _email = newValue,
                ),
                TextFormField(
                  key: ValueKey('password'),
                  obscureText: true,
                  textAlign: TextAlign.right,
                  validator: (value) =>
                      (value != '') ? null : 'Enter a valid Password',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "كلمة المرور",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      suffixIcon: Icon(Icons.lock_outline)),
                  onSaved: (newValue) => _passowrd = newValue,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'هل نسيت كلمة السر؟',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                RectButton(
                  title: 'تسجيل دخول',
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SignUpWithMail()));
                      },
                      child: Text(
                        'انشاء حساب ',
                        style: TextStyle(
                            color: Color(
                              0xff30C6E0,
                            ),
                            fontSize: 18,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'ليس لديك حساب؟',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
