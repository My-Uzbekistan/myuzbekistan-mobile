import 'package:shared/shared.dart';

@immutable
class NotificationItem extends Equatable {
  int id;
  String? title;
  String? image;
  String? content;
  String? actionLink;
  String? publishAt;
  bool isSeen;

  NotificationItem({
    required this.id,
    this.title,
    this.image,
    this.content,
    this.actionLink,
    this.publishAt,
    this.isSeen = false,
  });

  NotificationItem copyWith({
    int? id,
    String? title,
    String? image,
    String? content,
    String? actionLink,
    String? publishAt,
    bool? isSeen,
  }) {
    return NotificationItem(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      content: content ?? this.content,
      actionLink: actionLink ?? this.actionLink,
      publishAt: publishAt ?? this.publishAt,
      isSeen: isSeen ?? this.isSeen,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    title,
    image,
    content,
    actionLink,
    publishAt,
    isSeen,
  ];
}
