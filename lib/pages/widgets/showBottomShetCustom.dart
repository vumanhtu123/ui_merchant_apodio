import 'package:flutter/material.dart';
Future<T?> showBottomSheetCustom<T>(
    BuildContext context, {
      required Widget child,
      required String title,
      bool? textOption,
    }) {

  return showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: false,
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    // clipBehavior: Clip.hardEdge,
    builder: (context) {
      return SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                  ),
                ),
                child
              ],
            )
          ],
        ),
      );
    },
  );
}

