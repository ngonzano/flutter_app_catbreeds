import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/constant/cat_breeds_color.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    required this.widget,
    this.onBackPressed,
    this.title,
    super.key,
  });

  final Widget? title;
  final Widget widget;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              backgroundColor: CupertinoColors.systemGrey5,
              middle: title,
              leading: onBackPressed != null
                  ? CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: onBackPressed,
                      child: const Icon(
                        CupertinoIcons.back,
                        color: CupertinoColors.activeBlue,
                      ),
                    )
                  : null,
            ),
            child: widget,
          )
        : Scaffold(
            backgroundColor: CatBreedsColors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: CatBreedsColors.white,
              foregroundColor: CatBreedsColors.primaryColor,
              elevation: 0,
              leadingWidth: 36,
              title: title,
              toolbarHeight: 70,
              leading: onBackPressed != null
                  ? IconButton(
                      onPressed: onBackPressed,
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: CatBreedsColors.primaryColor,
                      ),
                    )
                  : null,
            ),
            body: widget,
          );
  }
}
