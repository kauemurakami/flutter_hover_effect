import 'dart:math';
import 'package:flutter/material.dart';

class HoverEffect extends StatelessWidget {
  HoverEffect({
    super.key,
    this.amplitude = .3,
    this.height = 200.0,
    this.width = 300.0,
    this.shape = BoxShape.rectangle,
    this.returnOriginalPosition = true,
    this.borderRadius = const BorderRadius.all(Radius.circular(6.0)),
    this.padding = const EdgeInsets.all(8.0),
    this.boxShadowBlurRadius = 10,
    this.boxShadowColor = Colors.white,
    this.backgroundColor = Colors.white,
    required this.widget,
  });
  final ValueNotifier<double> x = ValueNotifier<double>(0.0),
      y = ValueNotifier<double>(0.0);
  final double amplitude, width, height;
  final BoxShape shape;
  final Color boxShadowColor, backgroundColor;
  final double boxShadowBlurRadius;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final bool returnOriginalPosition;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ValueListenableBuilder(
            valueListenable: y,
            builder: (context, valueY, child) {
              return ValueListenableBuilder(
                  valueListenable: x,
                  builder: (context, valueX, child) {
                    return Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..rotateX(valueX)
                        ..rotateY(valueY),
                      child: GestureDetector(
                        onPanEnd: (details) {
                          if (returnOriginalPosition) {
                            x.value = .0;
                            y.value = .0;
                          }
                        },
                        onPanUpdate: (details) {
                          if (valueY - details.delta.dx < 0) {
                            y.value = max(
                                valueY - details.delta.dx / 100, -amplitude);
                          } else {
                            y.value =
                                min(valueY - details.delta.dx / 100, amplitude);
                          }
                          // the same to x
                          if (valueX - details.delta.dy < 0) {
                            x.value = max(
                                valueX - details.delta.dy / 100, -amplitude);
                          } else {
                            x.value =
                                min(valueX - details.delta.dy / 100, amplitude);
                          }
                        },
                        child: Container(
                          padding: padding,
                          decoration: BoxDecoration(
                              shape: shape,
                              color: backgroundColor,
                              borderRadius: shape == BoxShape.circle
                                  ? null
                                  : borderRadius,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: boxShadowColor,
                                  blurRadius: boxShadowBlurRadius,
                                  offset: Offset(
                                    valueX,
                                    valueY,
                                  ),
                                ),
                              ]),
                          width: width,
                          height: height,
                          child: widget,
                        ),
                      ),
                    );
                  });
            }));
  }
}
