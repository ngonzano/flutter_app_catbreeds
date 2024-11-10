import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/constant/cat_breeds_color.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    required this.widget,
    this.onBackPressed,
    this.title,
    super.key,
    this.toolbarHeight = 70,
  });

  final Widget? title;
  final Widget widget;
  final VoidCallback? onBackPressed;
  final double toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? SafeArea(
            bottom: false,
            child: CupertinoPageScaffold(
              child: CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (onBackPressed != null)
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: onBackPressed,
                              child: const Icon(
                                CupertinoIcons.back,
                                size: 30,
                                color: CupertinoColors.activeBlue,
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          const SizedBox(width: 10),
                          Expanded(child: Center(child: title!)),
                          onBackPressed == null
                              ? const SizedBox.shrink()
                              : const SizedBox(width: 30),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                  SliverFillRemaining(child: widget),
                ],
              ),
            ),
          )
        : SafeArea(
            bottom: false,
            child: Scaffold(
              backgroundColor: CatBreedsColors.white,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: CatBreedsColors.white,
                foregroundColor: CatBreedsColors.primaryColor,
                elevation: 0,
                leadingWidth: 36,
                title: title,
                toolbarHeight: toolbarHeight,
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
            ),
          );
  }
}
