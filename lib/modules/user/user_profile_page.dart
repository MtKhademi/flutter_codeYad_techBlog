import 'package:flutter/material.dart';

import 'package:flutter_codeyad_techblog/common/consts/application_const.dart';
import 'package:flutter_codeyad_techblog/common/consts/palette.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/modules/widgets/bottom_navigation_widget.dart';
import 'package:flutter_codeyad_techblog/modules/widgets/top_menu.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({
    Key? key,
    required this.screenSize,
  }) : super(key: key);
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // width: ApplicationConst(context).SIZE.width,
            height: ApplicationConst(context).SIZE.height / 10,
            child: Assets.images.profile.image(),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: ApplicationConst(context).SIZE.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.images.pen.image(
                  height: ApplicationConst(context).heightIcon,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'مشاهده داغ ترین نوشته ها',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'فاطمه امیری',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'mt.khademi@gmail.com',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
            indent: screenSize.width / 6,
            endIndent: screenSize.width / 6,
          ),
          SizedBox(
            height: 3,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'مقالات مورد علاقه من',
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          SizedBox(
            height: 3,
          ),
          Divider(
            thickness: 2,
            indent: screenSize.width / 6,
            endIndent: screenSize.width / 6,
          ),
          SizedBox(
            height: 3,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'پادکست های مورد علاقه من',
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          SizedBox(
            height: 3,
          ),
          Divider(
            thickness: 2,
            indent: screenSize.width / 6,
            endIndent: screenSize.width / 6,
          ),
          SizedBox(
            height: 3,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'خروج از حساب کاربری',
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
