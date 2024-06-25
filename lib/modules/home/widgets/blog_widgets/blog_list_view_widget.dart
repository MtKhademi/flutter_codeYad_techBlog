import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/application_const.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/models/blog_model.dart';
import 'package:flutter_codeyad_techblog/modules/home/widgets/blog_widgets/blog_list_view_item_widget.dart';
import 'package:flutter_codeyad_techblog/services/blog_service.dart';

class BlogListViewWidget extends StatelessWidget {
  const BlogListViewWidget({super.key});

  Future<List<BlogModel>> loadData() async =>
      await BlogService().getBlogsAsync();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, 0, ApplicationConst(context).marginRight, 0),
            child: Row(
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
                  style: Theme.of(context).textTheme.headlineLarge,
                )
              ],
            ),
          ),
          FutureBuilder(
            future: loadData(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return Flexible(
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var blog = snapShot.data![index];
                        return BlogListViewItemWidget(blog: blog);
                      },
                      itemCount: snapShot.data!.length,
                    ),
                  ),
                );
              } else {
                return Flexible(
                  child: Container(
                      color: Colors.yellow,
                      child: const Center(child: CircularProgressIndicator())),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
