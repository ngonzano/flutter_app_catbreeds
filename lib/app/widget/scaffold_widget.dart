import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    required this.child,
    this.onBackPressed,
    this.title,
    this.header,
    super.key,
  });

  final Widget? title;
  final Widget? header;
  final Widget child;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              backgroundColor: CupertinoColors.activeBlue,
              middle: title,
              leading: onBackPressed != null
                  ? CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: onBackPressed,
                      child: const Icon(
                        CupertinoIcons.back,
                        color: CupertinoColors.white,
                      ),
                    )
                  : null,
            ),
            child: _buildBody(context),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
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
                        color: Colors.white,
                      ),
                    )
                  : null,
            ),
            body: _buildBody(context),
          );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (header != null) ...[
                header!,
                const SizedBox(height: 20),
              ],
              child,
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
