import 'package:flutter/material.dart';

import 'package:flutter_codeyad_techblog/models/pod_cast_model.dart';

import '../../../../common/consts/application_const.dart';

class PodCastListViewItemWidget extends StatelessWidget {
  const PodCastListViewItemWidget({
    Key? key,
    required this.index,
    required this.podCastModel,
  }) : super(key: key);
  final int index;
  final PodCastModel podCastModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
              30, 0, index == 0 ? ApplicationConst(context).marginRight : 0, 0),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
                image: NetworkImage(podCastModel.imageUrl), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(
              30, 0, index == 0 ? ApplicationConst(context).marginRight : 0, 0),
          height: 20,
          width: 150,
          child: Center(
            child: Text(
              podCastModel.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ],
    );
  }
}
