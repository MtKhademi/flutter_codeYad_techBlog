import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/modules/user/widgets/user_register_modal_enter_otp.dart';

Future<dynamic> getUserRegisterModalEnterPhone(
    BuildContext context, Size screenSize, TextTheme textTheme) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'لطفا شماره موبایل خود را وارد کنید',
                style: textTheme.headlineMedium!.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: screenSize.width / 1.2,
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "شماره تماس",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  getUserRegisterModalEnterOtp(context, screenSize, textTheme);
                },
                child: Text('ثبت'),
              )
            ],
          ),
        ),
      );
    },
  );
}
