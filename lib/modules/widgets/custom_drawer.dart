import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Assets.images.logo.image(scale: 2),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'پروفایل کاربری',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'پروفایل کاربری',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text(
              'پروفایل کاربری',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text(
              'پروفایل کاربری',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
