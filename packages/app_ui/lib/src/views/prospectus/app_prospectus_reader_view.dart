import 'package:app_ui/src/components/dividers/dividers.dart';
import 'package:app_ui/src/components/lists/core_list/app_list_view_component.dart';
import 'package:app_ui/src/components/texts/texts.dart';
import 'package:app_ui/src/core/classes/classes.dart';
import 'package:app_ui/src/modules/common/views/app_image_view.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/themes.dart';
import 'package:app_ui/src/views/app_scaffold_view.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

part '_accordion.dart';
part '_extension.dart';
part '_prospectus_item.dart';
part '_rich_content.dart';

class AppProspectusReaderView extends StatelessWidget {
  const AppProspectusReaderView({
    required this.content,
    this.title = '',
    this.introduction = '',
    this.onUrlPressed,
    super.key,
  });

  final String title;
  final String introduction;
  final List<UIProspectusItem> content;
  final void Function(String url)? onUrlPressed;

  @override
  Widget build(BuildContext context) {
    return AppScaffoldComponent(
      horizontalPadding: AppSizes.w.s16,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          if (title.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: AppTextComponent.headlineMedium(title),
            ),
            AppGaps.ver.s16.asSliver(),
          ],
          if (introduction.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: AppTextComponent.bodyLarge(introduction),
            ),
            AppGaps.ver.s24.asSliver(),
          ],
          AppListViewComponent.sliver(
            itemCount: content.length,
            itemBuilder: (_, index) {
              final item = content.elementAt(index);
              return _Accordion(
                title: item.title,
                children: item.content.map((e) {
                  if (e.type.isAccordion) {
                    return _Accordion(
                      title: e.title,
                      useChildrenLeftPadding: false,
                      children: [
                        _RichContent(
                          text: e.content,
                          onUrlPressed: onUrlPressed,
                        ),
                      ],
                    );
                  }
                  if (e.type.isImageUrl && e.content.isValidUrl) {
                    return Padding(
                      padding: AppPaddings.s8.vertical,
                      child: GestureDetector(
                        onDoubleTap: () {
                          useShowImage(
                            context,
                            e.content,
                            heroTag: e.content,
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            if (e.title.isNotEmpty) ...[
                              AppTextComponent.bodyMedium(
                                e.title,
                              ),
                              AppGaps.ver.custom(2),
                            ],
                            Hero(
                              tag: e.content,
                              child: AppAssetBuilder.network(
                                url: e.content,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return _RichContent(
                    text: e.content,
                    onUrlPressed: onUrlPressed,
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
