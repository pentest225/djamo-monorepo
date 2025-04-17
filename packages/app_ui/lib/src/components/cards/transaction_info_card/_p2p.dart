part of 'app_transaction_info_card_component.dart';

/// The [_P2P] Widget is used to display P2P transaction details to the user
/// (A P2P transaction is a transaction made with Djamo)
/// Specifically, the [_P2P] Widget can have an illustration and a note.
/// If both are empty, nothing more will be displayed but
/// if one of them is not empty, it will be displayed in an Note card
///
class _P2P extends _WithFees {
  const _P2P({
    required super.chargedAmount,
    required super.reference,
    required super.status,
    required super.fees,
    required this.illustrationUrl,
    required this.note,
    required this.phoneNumber,
    super.date,
    super.isCredit = false,
    super.amountWithoutFees,
    super.balanceAfter,
    super.label,
    super.icon,
    super.onCopyReference,
  });

  /// When a transaction is made using Djamo, the user can add an illustration
  /// to the transaction, this illustration is displayed on the card.
  /// If the illustrationUrl is not empty, it will be displayed on the card in
  /// the Note section
  /// /// See [_NoteAndGif]
  final String illustrationUrl;

  /// The note is the note that the user can add to the transaction
  /// If the note is not empty, it will be displayed on the card in the
  /// Note section
  /// See [_NoteAndGif]
  final String note;

  /// For Djamo transactions, instead of a description, we will display the
  /// phone number of the user who made the transaction with the currently
  /// connected Djamo account
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderTransactionCardDetailsComponent(
          amount: chargedAmount,
          label: label,
          description: phoneNumber,
          icon: icon ?? AppAssetBuilder.image(image: Assets.brands.djamoDark),
          isCredit: isCredit,
          shouldClipOval: true,
        ),
        if (illustrationUrl.isNotEmpty || note.isNotEmpty) ...[
          AppGaps.ver.s12,
          _NoteAndGif(
            illustrationUrl: illustrationUrl,
            note: note,
          ),
        ],
        AppGaps.ver.s12,
        _MainInfoBuilder(
          date: date,
          status: status,
          fees: fees,
          amountWithoutFees: isCredit ? null : amountWithoutFees,
          balanceAfter: balanceAfter,
          isCredit: isCredit,
          showFeesDescription: false,
        ),
        if (reference.isNotEmpty) ...[
          AppGaps.ver.s12,
          _Reference(
            reference: reference,
            onCopyReference: onCopyReference,
          ),
        ],
      ],
    );
  }
}

/// The [_NoteAndGif] Widget is used to display an illustration and a note
/// to the user
/// Those illustration and note are displayed in a Note card
///
class _NoteAndGif extends StatelessWidget {
  const _NoteAndGif({
    required this.illustrationUrl,
    required this.note,
  });

  /// The url of the illustration that will be displayed on the card
  /// If the illustrationUrl is empty, nothing will be displayed
  final String illustrationUrl;

  /// The note that will be displayed on the card
  /// If the note is empty, nothing will be displayed
  final String note;

  @override
  Widget build(BuildContext context) {
    return AppCardComponent(
      backgroundColor: context.customColorScheme.primaryContainerLow,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextComponent.titleMedium(context.l10n.transactionP2PNoteTitle),
          if (note.isNotEmpty) ...[
            AppGaps.ver.s4,
            AppTextComponent.labelLarge(
              note,
              color: context.customColorScheme.contentLowest,
            ),
          ],
          if (illustrationUrl.isNotEmpty) ...[
            AppGaps.ver.s12,
            LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final height = constraints.maxHeight;
                final sizeBox = min(width, height);
                return SizedBox(
                  width: sizeBox,
                  height: sizeBox,
                  child: ClipRRect(
                    borderRadius: AppBorderRadius.s8.all,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: AppAssetBuilder.imageNetwork(
                        imageUrl: illustrationUrl,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
