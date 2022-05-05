import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../text_styles/app_text_styles.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  final String titleText;
  final List<Widget>? action;

  @override
  final Size preferredSize = const Size.fromHeight(50);

  const DefaultAppBar({
    Key? key,
    this.action,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;

    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: AppBar(
        title: Text(titleText,
            style: AppTextStyle.timesNewRomanW700S22
                .copyWith(color: Colors.black)),
        centerTitle: true,
        leading: canPop
            ? IconButton(
                onPressed: () {
                  Navigator.maybePop(context);
                },
                icon: Assets.icons.iconBack.svg(width: 26, height: 26),
              )
            : null,
        actions: action,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
