import 'package:flutter_template/features/notifications/notifications_page/domain/models/notification.dart';
import 'package:flutter_template/features/notifications/notifications_page/infrastructure/datasources/notifications_remote_datasource.dart';

class NotificationsRemoteDatasourceImpl
    implements NotificationsRemoteDatasource {
  @override
  Future<NotificationsList> getNotifications() {
    // TODO: implement getNotifications
    throw UnimplementedError();
  }

  @override
  Future<void> markNotificationsAsRead() {
    // TODO: implement markNotificationsAsRead
    throw UnimplementedError();
  }
}
