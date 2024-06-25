import 'package:flutter/material.dart';

import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/main_screen.dart';

import '../../common/consts/application_const.dart';
import '../../common/consts/palette.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.onChangeScreen,
  }) : super(key: key);
  final Function(showScreen screen) onChangeScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ApplicationConst(context).SIZE.height / 8,
      width: ApplicationConst(context).SIZE.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: Palette.bottomNavBgGradiant,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        // height: ApplicationConst(context).SIZE.height / 5,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: LinearGradient(colors: Palette.bottomNavGradiant)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                onChangeScreen(showScreen.HOME_PAGE);
              },
              icon: ImageIcon(
                Assets.images.home.image().image,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                onChangeScreen(showScreen.USER_REGISTER);
              },
              icon: ImageIcon(
                Assets.images.blog.image().image,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                onChangeScreen(showScreen.USER_PROFILE);
              },
              icon: ImageIcon(
                Assets.images.user.image().image,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
