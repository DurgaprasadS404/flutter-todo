import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/notifications/notifications_page/infrastructure/datasources/notifications_remote_datasource_impl.dart';
import 'package:flutter_template/features/notifications/notifications_page/infrastructure/repository/notifications_repository_impl.dart';

final notificationsRemoteDatasourceProvider =
    Provider<NotificationsRemoteDatasourceImpl>(
  (ref) => NotificationsRemoteDatasourceImpl(),
);

final notificationsRepositoryProvider =
    Provider<NotificationsRepositoryImpl>((ref) {
  final datasource = ref.watch(notificationsRemoteDatasourceProvider);
  final repository = NotificationsRepositoryImpl(datasource);
  return repository;
});
