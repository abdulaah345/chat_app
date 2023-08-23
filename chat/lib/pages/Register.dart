import 'package:chat/helper/snak-bar.dart';
import 'package:chat/pages/chatpage.dart';
import 'package:chat/pages/login.dart';
import 'package:chat/wedgit/constant.dart';
import 'package:chat/wedgit/custom-text.dart';
import 'package:chat/wedgit/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);
  static String id = 'register';

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
                      'Register',
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
                        await registeruser();
                        Navigator.pushNamed(context, chatpage.id);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showsnackbar(context, 'this password is too weak');
                        } else if (e.code == 'email-already-in- use') {
                          showsnackbar(context, 'email is already exists');
                        }
                      } catch (e) {
                        showsnackbar(context, 'error');
                      }
                      isloded = false;
                      setState(() {});
                    }
                  },
                  text: 'Register',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'already have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        ' Login',
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

  Future<void> registeruser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
