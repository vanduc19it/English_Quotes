import 'package:flutter/material.dart';
import 'package:flutter_app/models/englishtoday.dart';
import 'package:flutter_app/values/app_assets.dart';
import 'package:flutter_app/values/app_colors.dart';
import 'package:flutter_app/values/app_styles.dart';

class AllPage extends StatelessWidget {
  final List<EnglishToday> words;
  const AllPage({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondColor,
          elevation: 0,
          title: Text(
            "English today",
            style:
                AppStyles.h3.copyWith(color: AppColors.textColor, fontSize: 36),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(AppAssets.leftArrow),
          ),
        ),
        body: ListView.builder(
            itemCount: words.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: (index % 2) == 0
                        ? AppColors.primaryColor
                        : AppColors.secondColor,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: words[index].isFavorite
                    ? ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        title: Text(
                          words[index].noun!,
                          style: (index % 2) == 0
                              ? AppStyles.h4
                              : AppStyles.h4
                                  .copyWith(color: AppColors.textColor),
                        ),
                        subtitle: Text(words[index].quote ??
                            '"Think of all the beauty still left around you and be happy."'),
                        leading: Icon(Icons.favorite,
                            color: words[index].isFavorite
                                ? Colors.red
                                : Colors.grey),
                      )
                    : Container(),
              );
            }));
  }
}
