import 'package:chat/helper/snak-bar.dart';
import 'package:chat/pages/Register.dart';
import 'package:chat/pages/chatpage.dart';
import 'package:chat/wedgit/constant.dart';
import 'package:chat/wedgit/custom-text.dart';
import 'package:chat/wedgit/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);
  static String id = 'loginpage';
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String? email;
  bool isloded = false;
  String? password;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloded,
      child: Scaffold(
        backgroundColor: KPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                SizedBox(
                  height: 75,
                ),
                Image.asset(
                  'assets/images/scholar.png',
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Scholer Chat',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 75,
                ),
                Row(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                customtext(
                  onchanged: (data) {
                    email = data;
                  },
                  hinttext: 'Email',
                ),
                SizedBox(
                  height: 10,
                ),
                customtext(
                  obscureText: true,
                  onchanged: (data) {
                    password = data;
                  },
                  hinttext: 'Password',
                ),
                SizedBox(
                  height: 20,
                ),
                custombutton(
                  ontap: () async {
                    if (formkey.currentState!.validate()) {
                      isloded = true;
                      setState(() {});
                      try {
                        await loginfirebase();
                        Navigator.pushNamed(context, chatpage.id,
                            arguments: email);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showsnackbar(context, 'No user found on that email');
                        } else if (e.code == 'wrong-password') {
                          showsnackbar(
                              context, 'wrong password provided for that user');
                        }
                      } catch (e) {
                        showsnackbar(context, 'Erorr');
                      }
                      isloded = false;
                      setState(() {});
                    }
                  },
                  text: 'Login',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'dont have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, register.id);
                      },
                      child: Text(
                        ' Register',
                        style: TextStyle(color: Color(0xffC7EDE6)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginfirebase() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
