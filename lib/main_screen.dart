import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/application_const.dart';
import 'package:flutter_codeyad_techblog/common/consts/palette.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/modules/home/home_page.dart';
import 'package:flutter_codeyad_techblog/modules/widgets/bottom_navigation_widget.dart';
import 'package:flutter_codeyad_techblog/modules/widgets/custom_drawer.dart';
import 'package:flutter_codeyad_techblog/modules/widgets/top_menu.dart';
import 'package:flutter_codeyad_techblog/modules/user/user_profile_page.dart';
import 'package:flutter_codeyad_techblog/modules/user/user_register_page.dart';

enum showScreen { HOME_PAGE, USER_PROFILE, USER_REGISTER }

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  showScreen _screen = showScreen.HOME_PAGE;
  final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey();

  Widget getCurrentPage(BuildContext context) {
    if (_screen == showScreen.HOME_PAGE)
      return HomePage();
    else if (_screen == showScreen.USER_REGISTER)
      return UserRegisterPage();
    else
      return UserProfilePage(screenSize: ApplicationConst(context).SIZE);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _keyScaffold,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Palette.colorScaffoldBg,
          elevation: 0,
          title: Column(
            children: [
              const SizedBox(height: 10),
              TopMenu(onTapMenu: () {
                _keyScaffold.currentState!.openDrawer();
              }),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              // child: HomePage(),
              child: Center(child: getCurrentPage(context)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: BottomNavigationWidget(
                onChangeScreen: (screen) {
                  if (screen == showScreen.USER_REGISTER) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserRegisterPage(),
                      ),
                    );
                    return;
                  }
                  setState(
                    () {
                      _screen = screen;
                    },
                  );
                },
              ),
            ),
          ],
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
