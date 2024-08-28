import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/utils/app_colors.dart';
import 'package:flutter_template/features/notifications/notifications_page/presentation/providers/notification_state_provider.dart';
import 'package:flutter_template/shared/presentation/widgets/custom_error_widget';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({super.key});

  @override
  ConsumerState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _doSomething();
    });
  }

  void _doSomething() {
    // ref.read(notificationStateProvider.notifier).doSomething();
  }

  @override
  Widget build(BuildContext context) {
    final notificationsState = ref.watch(notificationStateProvider);
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (notificationsState.encounteredError)
              const Column(
                children: [
                  Expanded(
                    child: Center(
                      child: CustomErrorWidget(),
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
