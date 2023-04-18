import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.padding,
    this.constraints,
    this.useSingleChildScroll = true,
    this.alignment,
  }) : super(key: key);
  final Widget child;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final EdgeInsets? padding;

  final BoxConstraints? constraints;
  final AlignmentGeometry? alignment;
  final bool useSingleChildScroll;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: alignment ?? Alignment.center,
          child: Container(
            constraints: constraints ?? const BoxConstraints(minHeight: 30),
            width: width ?? 450,
            height: height,
            padding: padding ?? const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
              border: Border.all(
                color: borderColor ?? const Color(0xFF262626).withOpacity(0.1),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
            ),
            child: useSingleChildScroll
                ? SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        child,
                      ],
                    ),
                  )
                : child,
          ),
        ),
      ],
    );
  }
}
