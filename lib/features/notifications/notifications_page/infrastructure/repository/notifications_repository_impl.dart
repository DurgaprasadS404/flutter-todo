import 'package:flutter_template/features/notifications/notifications_page/domain/models/notification.dart';
import 'package:flutter_template/features/notifications/notifications_page/domain/repository/notifications_repository.dart';
import 'package:flutter_template/features/notifications/notifications_page/infrastructure/datasources/notifications_remote_datasource_impl.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final NotificationsRemoteDatasourceImpl remoteDataSource;

  NotificationsRepositoryImpl(this.remoteDataSource);

  @override
  Future<NotificationsList> getNotifications() async {
    return await remoteDataSource.getNotifications();
  }

  @override
  Future<void> markNotificationsAsRead() async {
    await remoteDataSource.markNotificationsAsRead();
  }
}
