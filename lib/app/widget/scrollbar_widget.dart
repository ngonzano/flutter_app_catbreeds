import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ScrollBarWidget extends StatelessWidget {
  const ScrollBarWidget({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Platform.isIOS
        ? CupertinoScrollbar(
            thickness: 4.0,
            thumbVisibility: true,
            controller: controller,
            radius: const Radius.circular(8.0),
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverToBoxAdapter(
                  child: widget,
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
              ],
            ),
          )
        : Scrollbar(
            thickness: 4.0,
            radius: const Radius.circular(8.0),
            interactive: true,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: widget,
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
              ],
            ),
          );
  }
}
