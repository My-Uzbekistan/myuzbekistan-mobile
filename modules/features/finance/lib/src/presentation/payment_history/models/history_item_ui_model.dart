class HistoryItemUiModel {
  final String? id;
  final String title;
  final String? subTitle;
  final String? iconUrl;
  final String trailing;

  const HistoryItemUiModel({
    required this.title,
    required this.trailing,
    this.id,
    this.subTitle,
    this.iconUrl,
  });
}
