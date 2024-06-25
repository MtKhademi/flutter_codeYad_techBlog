import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/palette.dart';
import 'package:flutter_codeyad_techblog/gen/assets.gen.dart';
import 'package:flutter_codeyad_techblog/models/article_model.dart';
import 'package:flutter_codeyad_techblog/services/article_service.dart';

class PosterTop extends StatefulWidget {
  const PosterTop({super.key});

  @override
  State<PosterTop> createState() => _PosterTopState();
}

class _PosterTopState extends State<PosterTop> {
  ArticleModel? article;

  Future<ArticleModel> loadData() async =>
      await ArticleService().getHomeArticleAsync();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return FutureBuilder(
      future: loadData(),
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return Stack(
            children: [
              Container(
                width: size.width / 1.25,
                height: size.height / 4.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  color: Palette.grey,
                  image: DecorationImage(
                    image: Assets.images.poster1.image().image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width / 1.25,
                height: size.height / 4.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  color: Colors.red,
                  gradient: LinearGradient(
                    colors: Palette.posterCoverGradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  width: size.width / 1.25,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            snapShot.data!.writer + ' - ' + snapShot.data!.date,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                snapShot.data!.view,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        snapShot.data!.title,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        } else {
          return Stack(
            children: [
              Container(
                width: size.width / 1.25,
                height: size.height / 4.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  color: Palette.grey,
                ),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              Container(
                width: size.width / 1.25,
                height: size.height / 4.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  gradient: LinearGradient(
                    colors: Palette.posterCoverGradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
