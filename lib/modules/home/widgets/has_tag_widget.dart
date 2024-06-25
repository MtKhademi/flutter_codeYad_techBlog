import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/application_const.dart';
import 'package:flutter_codeyad_techblog/common/consts/palette.dart';
import 'package:flutter_codeyad_techblog/models/hash_tag_model.dart';
import 'package:flutter_codeyad_techblog/services/hash_tag_service.dart';

class HashTagWidget extends StatelessWidget {
  const HashTagWidget({super.key});
  Future<List<HashTagModel>> loadData() async =>
      HashTagService().getHasTagsAsync();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      // width: size.width / 1.25,
      height: 50,
      // color: Colors.red,
      child: FutureBuilder(
        future: loadData(),
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      // width: 20,
                      // height: 10,
                      // color: Colors.black,
                      margin: EdgeInsets.fromLTRB(
                          0,
                          0,
                          index == 0
                              ? ApplicationConst(context).marginRight
                              : 0,
                          0),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                          colors: Palette.tagGradientColors,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Text(
                        '# ${snapShot.data![index].title}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.blue[50]),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                );
              },
              itemCount: snapShot.data!.length,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
