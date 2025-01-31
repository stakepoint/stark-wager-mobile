import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starkwager/core/constants/screen_layout.dart';
import 'package:starkwager/features/wager_screen.dart/widget/wagger_widget.dart';
import 'package:starkwager/utils/ui_widgets.dart';

class ActiveScreen extends ConsumerWidget {
  const ActiveScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: 3,
            separatorBuilder: (context, index) => verticalSpace(16),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenLayout.isTablet(context)
                      ? isLandscape
                          ? 200
                          : 0
                      : 0,
                ),
                child: const WaggerWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}
