import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollBarWidget extends StatelessWidget {
  const ScrollBarWidget({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoScrollbar(
            thickness: 10.0,
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
            thickness: 10.0,
            radius: const Radius.circular(8.0),
            interactive: true,
            thumbVisibility: true,
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
