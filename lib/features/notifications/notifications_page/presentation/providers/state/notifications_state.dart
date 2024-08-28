import 'package:flutter_template/features/notifications/notifications_page/domain/models/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default([]) NotificationsList notificationsList,
    @Default(0) int unreadNotificationsCount,
    @Default(0) int unreadMessagesCount,
    @Default(true) bool isLoading,
    @Default(true) bool hasMoreData,
    @Default(false) bool encounteredError,
  }) = _NotificationsState;
}
