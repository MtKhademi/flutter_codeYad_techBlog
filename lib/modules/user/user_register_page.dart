import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/application_const.dart';
import 'package:flutter_codeyad_techblog/common/consts/my_strings.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/modules/user/widgets/user_register_modal_enter_phone.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:validators/validators.dart';

class UserRegisterPage extends StatelessWidget {
  const UserRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var screenSize = ApplicationConst(context).SIZE;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150),
              Center(
                child: SizedBox(
                  height: 150,
                  child: SvgPicture.asset(Assets.images.robot.path),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: screenSize.width / 1.5,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: MyStrings.wellComRegister,
                      style: textTheme.headlineMedium!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  getUserRegisterModalEnterPhone(
                      context, screenSize, textTheme);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('ثبت نام کنید'),
                ),
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.resolveWith(
                    (state) {
                      if (state.contains(MaterialState.pressed))
                        return textTheme.headlineLarge!
                            .copyWith(color: Colors.white);

                      return textTheme.headlineSmall;
                    },
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (state) {
                      if (state.contains(MaterialState.pressed))
                        return Colors.blue[800];
                      return Colors.white;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
