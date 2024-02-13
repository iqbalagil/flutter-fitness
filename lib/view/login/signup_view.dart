import 'package:fitness_application/common/code_extension.dart';
import 'package:fitness_application/common_widget/round_button.dart';
import 'package:fitness_application/common_widget/round_text_field.dart';
import 'package:fitness_application/view/login/login_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: TColor.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                      SizedBox(
                        height: media.width * 0.04,
                      ),

                    Text(
                      "Create an Account",
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    const RoundTextField(
                      hitText: "First Name",
                      icon: "asset/img/user_text.png",
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    const RoundTextField(
                      hitText: "Last Name",
                      icon: "asset/img/user_text.png",
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    const RoundTextField(
                      hitText: "Email",
                      icon: "asset/img/email.png",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.width * 0.04,
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


                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isCheck = !isCheck;
                                });
                              },
                              icon: Icon(
                                isCheck
                                    ? Icons.check_box_outlined
                                    : Icons.check_box_outline_blank_outlined,
                                color: TColor.gray,
                                size: 20,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: 300,
                              height: 100,
                              child: Text(
                                "By continuing you accept our Privacy Policy and Term of Use",
                                style: TextStyle(color: TColor.gray),
                              ),
                            ),
                          ),
                        ]),

                      SizedBox(
                        height: media.width * 0.04,
                      ),

                    RoundButton(title: 
                    "Register", onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                    }),


                    SizedBox(
                      height: media.width * 0.04,
                    ),

                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color: TColor.gray.withOpacity(0.5),
                        )),
                        Text(
                          " Or ",
                          style: TextStyle(color: TColor.black, fontSize: 12),
                        ),
                        Expanded(
                            child: Container(
                          height: 1,
                          color: TColor.gray.withOpacity(0.5),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                     Container(
                      margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: Row(
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
                                  width: 1,
                                  color: TColor.gray.withOpacity(0.4)
                                ),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Image.asset('asset/img/google.png',
                              width: 20,
                              height: 20,)
                            ),
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
                                  width: 1,
                                  color: TColor.gray.withOpacity(0.4)
                                ),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Image.asset('asset/img/facebook.png',
                              width: 20,
                              height: 20,)
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                    }, child: Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(' Already Have an account ? ',
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                      ),)
                      ,Text(
                        'Login',style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ],))
                  ]),
            ),
          ),
        ));
  }
}
