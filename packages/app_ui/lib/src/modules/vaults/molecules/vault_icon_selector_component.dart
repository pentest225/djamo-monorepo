import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:petit_extension/petit_extension.dart';

class VaultIconSelectorComponent extends StatefulWidget {
  const VaultIconSelectorComponent({
    required this.icons,
    required this.onSelected,
    super.key,
    this.initialIconUrl,
    this.ctaLabel,
    this.selectionModalLabelDescription,
  });

  final List<String> icons;
  final String? initialIconUrl;
  final void Function(String) onSelected;
  final String? ctaLabel;
  final String? selectionModalLabelDescription;

  @override
  State<VaultIconSelectorComponent> createState() => _VaultIconSelectorComponentState();
}

class _VaultIconSelectorComponentState extends State<VaultIconSelectorComponent> {
  late String selectedIconUrl;

  @override
  void initState() {
    selectedIconUrl = widget.initialIconUrl ?? widget.icons.firstOrNull ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        useAppShowModalBottomSheet<String>(
          context,
          useRootNavigator: true,
          routeSettings: const RouteSettings(name: 'VAULT_ICON_SELECTOR'),
          builder: (context) {
            return _IconSelectionModal(
              icons: widget.icons,
              title: context.l10n.vaultSelectAnIconTitle,
              subtitle: widget.selectionModalLabelDescription ?? context.l10n.vaultSelectAnIconDescription,
              onSelected: (value) {
                useAppPopModalBottomSheet(context, result: value).ignore();
              },
            );
          },
        ).then((value) {
          if (value.orNull == null) return;
          setState(() {
            selectedIconUrl = value!;
          });
          widget.onSelected(value!);
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppNetworkImageWidget(
            imageUrl: selectedIconUrl,
            height: AppSizes.h.custom(56),
            width: AppSizes.h.custom(56),
          ),
          AppGaps.ver.s16,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.icons.modeEdit.svg(
                height: AppSizes.h.s14,
                width: AppSizes.h.s14,
                colorFilter: context.colorScheme.primary.toSrcMode(),
              ),
              AppGaps.hor.s4,
              AppTextComponent.labelLarge(
                widget.ctaLabel ?? context.l10n.vaultModifyIcon,
                color: context.colorScheme.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _IconSelectionModal extends StatelessWidget {
  const _IconSelectionModal({
    required this.icons,
    required this.onSelected,
    required this.title,
    required this.subtitle,
  });
  final List<String> icons;
  final void Function(String) onSelected;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.s16.symmetric.copyWith(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeadlineComponent.largeSingleText(
              header: title,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: icons.length,
                padding: AppPaddings.s16.horizontal.copyWith(
                  top: AppSizes.h.s24,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: AppSizes.w.s40,
                  mainAxisSpacing: AppSizes.h.s16,
                ),
                itemBuilder: (_, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: AppBorderRadius.s8.all,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: AppBorderRadius.s8.all,
                      child: InkWell(
                        borderRadius: AppBorderRadius.s8.all,
                        onTap: () {
                          onSelected(icons[index]);
                        },
                        child: Align(
                          child: AppNetworkImageWidget(
                            imageUrl: icons[index],
                            height: AppSizes.h.custom(56),
                            width: AppSizes.h.custom(56),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
