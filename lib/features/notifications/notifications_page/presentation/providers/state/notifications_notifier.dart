import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/notifications/notifications_page/domain/repository/notifications_repository.dart';
import 'package:flutter_template/features/notifications/notifications_page/presentation/providers/state/notifications_state.dart';

class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(this.repository) : super(const NotificationsState());
  final NotificationsRepository repository;
}
