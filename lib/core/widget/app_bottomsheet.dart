import 'package:flutter/material.dart';

customBottomSheet(context, child,
    {bool padding = true,
    bool isDismiss = true,
    bool showContainerColor = false,
    Color backgroundColor = Colors.white}) {
  return showModalBottomSheet(
    enableDrag: isDismiss,
    isDismissible: isDismiss,
    backgroundColor: backgroundColor,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      ),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          color: showContainerColor ? backgroundColor : null,
          padding: padding ? const EdgeInsets.all(20) : EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Wrap(
              children: [child],
            ),
          ),
        ),
      );
    },
  );
}
