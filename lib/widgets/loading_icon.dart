import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.75),
      borderRadius: BorderRadius.circular(100)

      ),
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
} 