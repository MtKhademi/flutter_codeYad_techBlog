import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/models/pod_cast_model.dart';
import 'package:flutter_codeyad_techblog/modules/home/widgets/pod_cast_widgets/pod_cast_list_view_item_widget.dart';
import 'package:flutter_codeyad_techblog/services/pod_cast_service.dart';

import '../../../../common/consts/application_const.dart';

class PodCastListViewWidget extends StatelessWidget {
  const PodCastListViewWidget({super.key});

  Future<List<PodCastModel>> loadData() async =>
      await PodCastService().getPodCastsAsync();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, 0, ApplicationConst(context).marginRight, 0),
            child: Row(
              children: [
                Assets.images.podcast.image(
                  height: ApplicationConst(context).heightIcon,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'پادکست ها',
                  style: Theme.of(context).textTheme.headlineLarge,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: FutureBuilder(
              future: loadData(),
              builder: (context, snapShot) {
                if (snapShot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return PodCastListViewItemWidget(
                        index: index,
                        podCastModel: snapShot.data![index],
                      );
                    },
                    itemCount: snapShot.data!.length,
                  );
                } else {
                  return Container(
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
