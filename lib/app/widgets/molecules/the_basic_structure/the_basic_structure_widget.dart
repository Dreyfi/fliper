import 'package:flutter/material.dart';

class TheBasicStructureWidget extends StatelessWidget {

  final Widget child;
  final Widget background;
  final EdgeInsetsGeometry padding;

  TheBasicStructureWidget({
    Key key,
    @required this.child, 
    this.background, 
    this.padding = const EdgeInsets.symmetric(
        horizontal: 15,
      )}) 
    : assert(child != null),
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Stack(
        children: [
          background ?? Container(),
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraint.minWidth,
                minHeight: constraint.minHeight
              ),
              child: Padding(padding: padding, child: child,),
            ),
          )
        ],
      );
    });
  }
}
