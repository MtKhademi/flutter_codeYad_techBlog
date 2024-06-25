import 'package:flutter/material.dart';

import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({
    Key? key,
    required this.onTapMenu,
  }) : super(key: key);
  final Function() onTapMenu;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(onTap: onTapMenu, child: const Icon(Icons.menu)),
        Assets.images.logo.image(
          height: size.height / 13.6,
        ),
        const Icon(Icons.search),
      ],
    );
  }
}
