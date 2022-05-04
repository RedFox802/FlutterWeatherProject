import 'package:flutter/material.dart';

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
        title: Text(
          titleText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
        leading: canPop ? const BackButton() : null,
        actions: action,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
