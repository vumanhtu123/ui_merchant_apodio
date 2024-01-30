import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchantapp/common/app_styles.dart';

class NormalButton extends StatelessWidget {
  final double? iconSize;
  final String? iconAsset;
  final String? title;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  const NormalButton(
      {super.key,
      this.iconSize,
      this.iconAsset,
      this.title,
      this.onTap,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap == null ? null : onTap!(),
      child: Container(
        height: height ?? 42,
        width: width ?? 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF007AFE),
              Color(0xFF53A0F5),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconAsset != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SvgPicture.asset(
                  iconAsset ?? '',
                  width: iconSize ?? 20,
                  height: iconSize ?? 20,
                ),
              ),
            ],
            Text(
              title ?? '',
              style: appStyles.textWhite(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
