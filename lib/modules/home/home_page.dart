import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_codeyad_techblog/modules/home/widgets/blog_widgets/blog_list_view_widget.dart';
import 'package:flutter_codeyad_techblog/modules/home/widgets/has_tag_widget.dart';
import 'package:flutter_codeyad_techblog/modules/home/widgets/pod_cast_widgets/pod_cast_list_view_widget.dart';
import 'package:flutter_codeyad_techblog/modules/home/widgets/poster_top.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 25),
          PosterTop(),
          SizedBox(height: 15),
          HashTagWidget(),
          SizedBox(height: 30),
          BlogListViewWidget(),
          SizedBox(height: 15),
          PodCastListViewWidget(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
