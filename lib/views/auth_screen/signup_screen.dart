// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: passwordHint, title: retypePassword),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: false,
                      onChanged: (newValue) {},
                    ),
                    5.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                            text: termandPrivacy,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            )),
                      ])),
                    ),
                  ],
                ),
                5.heightBox,
                ourButton(
                        color: redColor,
                        title: signUp,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: alreadyHaveAccount,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )),
                  TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      ))
                ])).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
