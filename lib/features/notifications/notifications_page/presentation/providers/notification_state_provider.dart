import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/notifications/notifications_page/domain/providers/notification_providers.dart';
import 'package:flutter_template/features/notifications/notifications_page/presentation/providers/state/notifications_notifier.dart';
import 'package:flutter_template/features/notifications/notifications_page/presentation/providers/state/notifications_state.dart';

final notificationStateProvider =
    StateNotifierProvider<NotificationsNotifier, NotificationsState>((ref) {
  final repository = ref.watch(notificationsRepositoryProvider);
  return NotificationsNotifier(repository);
});
