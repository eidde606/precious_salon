import 'package:flutter/material.dart';
import 'package:precious_hair_salon/themes/colors.dart';

class LayoutTheme extends StatefulWidget {
  final Widget child;

  LayoutTheme({required this.child});

  @override
  _LayoutThemeState createState() => _LayoutThemeState();

  static _LayoutThemeState of(BuildContext context) {
    return (context
                .dependOnInheritedWidgetOfExactType<_InheritedStateContainer>()
            as _InheritedStateContainer)
        .data;
  }
}

class _LayoutThemeState extends State<LayoutTheme> {
  LinearGradient get background => LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.85,
          ],
          colors: [
            this.colors.pink,
            this.colors.white,
          ]);
  AppColors get colors => AppColors();
  @override
  Widget build(BuildContext context) {
    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}

class _InheritedStateContainer extends InheritedWidget {
  final _LayoutThemeState data;

  _InheritedStateContainer({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}
