import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/palette.dart';

import 'package:flutter_codeyad_techblog/models/blog_model.dart';

class BlogListViewItemWidget extends StatelessWidget {
  BlogListViewItemWidget({
    super.key,
    required this.blog,
  });
  final BlogModel blog;
  double width = 200;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(blog.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 180,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: Palette.blogListItemGradient,
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          blog.writer,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              blog.view,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.remove_red_eye_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Text(
              blog.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          )
        ],
      ),
    );
  }
}
