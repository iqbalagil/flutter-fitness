import 'package:fitness_application/common/code_extension.dart';
import 'package:fitness_application/common_widget/round_button.dart';
import 'package:fitness_application/common_widget/round_text_field.dart';
import 'package:fitness_application/view/home/home_view.dart';
import 'package:fitness_application/view/login/complete_profile_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          height: media.width * 0.9,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hey there",
                style: TextStyle(color: TColor.gray, fontSize: 16),
              ),
              SizedBox(
                height: media.width * 0.004,
              ),
              Text(
                "Welcome back",
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: media.width * 0.005,
              ),
              const RoundTextField(
                hitText: "Email",
                icon: "asset/img/email.png",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: media.width * 0.004,
              ),
              RoundTextField(
                hitText: "Password",
                icon: "asset/img/lock.png",
                obscureText: true,
                rigtIcon: TextButton(
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      "asset/img/showpassword.png",
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                      color: TColor.gray,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                        color: TColor.gray,
                        fontSize: 10,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              SizedBox(
                width: media.width * 0.4,
              ),
              const Spacer(),
              RoundButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                  }),
              SizedBox(
                height: media.width * 0.04,
              ),
              Row(children: [
                Expanded(
                    child: Container(
                  height: 1,
                  color: TColor.gray.withOpacity(0.5),
                )),
                Text(
                  "Or",
                  style: TextStyle(color: TColor.black, fontSize: 12),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: TColor.gray.withOpacity(0.5),
                )),
              ]),

SizedBox(
  height: media.width * 0.04,
),
Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: TColor.white,
                              border: Border.all(
                                  width: 1, color: TColor.gray.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                            'asset/img/google.png',
                            width: 20,
                            height: 20,
                          )),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: TColor.white,
                              border: Border.all(
                                  width: 1, color: TColor.gray.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                            'asset/img/facebook.png',
                            width: 20,
                            height: 20,
                          )),
                    )
                  ],
                ),
            ],
          ),
        )),
      ),
    );
  }
}
