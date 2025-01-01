import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starkwager/core/constants/app_values.dart';
import 'package:starkwager/extensions/build_context_extension.dart';
import 'package:starkwager/features/connect_wallet/widgets/installed_wallet_widget.dart';
import 'package:starkwager/utils/ui_widgets.dart';
import '../../core/constants/assets.dart';
import '../../theme/app_theme.dart';

class ConnectWalletScreen extends ConsumerWidget {
  ConnectWalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppValues.padding16),
            child: SvgPicture.asset(AppIcons.hamburgerIcon),
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: context.primaryBackgroundColor,
        foregroundColor: context.primaryTextColor,
      ),
      backgroundColor: context.primaryBackgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double maxWidth = AppValues.width600;
            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppValues.padding16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(AppValues.height60),
                      Text(
                        'welcomeToStarkWager'.tr(),
                        style: AppTheme.headLineLarge32
                            .copyWith(color: context.primaryTextColor),
                      ),
                      verticalSpace(AppValues.height8),
                      Row(
                        children: [
                          Text(
                            'connectYourWalletToUse'.tr(),
                            style: AppTheme.titleMedium18
                                .copyWith(color: context.primaryTextColor),
                          ),
                          horizontalSpace(AppValues.padding3),
                          Text(
                            'starkWager'.tr(),
                            style: AppTheme.titleMedium18.copyWith(
                                color: context.primaryTextColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      verticalSpace(AppValues.height30),
                      verticalDivider(color: context.dividerColor),
                      verticalSpace(AppValues.height30),
                      InstalledWalletWidget(
                        title: 'Argent X',
                        icon: Image.asset(AppIcons.argentIcon),
                        isInstalled: true,
                        onTap: () {},
                      ),
                      verticalSpace(AppValues.height15),
                      InstalledWalletWidget(
                        title: 'Braavos',
                        icon: Image.asset(AppIcons.braavosIcon),
                        isInstalled: false,
                        onTap: () {},
                      ),
                      verticalSpace(AppValues.height15),
                      InstalledWalletWidget(
                        title: 'Metamask',
                        icon: SvgPicture.asset(AppIcons.metaMaskIcon,
                            width: AppValues.width24,
                            height: AppValues.height24),
                        isInstalled: true,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}