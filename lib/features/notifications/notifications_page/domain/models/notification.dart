import 'package:const_date_time/const_date_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification.freezed.dart';
part 'notification.g.dart';

typedef NotificationsList = List<Notification>;

@freezed
class Notification with _$Notification {
  const factory Notification({
    @Default('') String id,
    @Default('') String body,
    @Default('') String imageUrl,
    @Default(ConstDateTime(2000)) DateTime notificationTime,
    @Default('') String category,
    @Default('') String chatId,
    @Default('') String interlocutorId,
    @Default(true) bool markedAsRead,
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);
}
