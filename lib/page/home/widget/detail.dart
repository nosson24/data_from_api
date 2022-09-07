import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Widget? leadingIcon;
  final Text prefixText;

  const Detail({Key? key, this.leadingIcon, required this.prefixText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leadingIcon!,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: prefixText,
        ),
      ],
    );
  }
}
