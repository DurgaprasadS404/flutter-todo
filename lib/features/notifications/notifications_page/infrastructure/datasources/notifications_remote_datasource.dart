import 'package:flutter_template/features/notifications/notifications_page/domain/models/notification.dart';

abstract class NotificationsRemoteDatasource {
  Future<NotificationsList> getNotifications();

  Future<void> markNotificationsAsRead();
}
