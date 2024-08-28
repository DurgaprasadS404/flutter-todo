import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/core/utils/app_colors.dart';
import 'package:flutter_template/core/utils/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.trailingIcon,
    this.trailingIconOnTap,
    required this.onChanged,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    required this.focusNode,
    this.errorText,
  });

  final String label;
  final TextEditingController? controller;
  final Function(String) onChanged;
  final Widget? trailingIcon;
  final Future<void>? trailingIconOnTap;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode focusNode;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    TextStyle textInputStyle =
        AppTextStyles.bodyLargeTextStyle.copyWith(fontWeight: FontWeight.w500);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.bodyLargeTextStyle,
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: errorText != null
                  ? AppColors.accentRed
                  : AppColors.neutralBlack600,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    onChanged: (String value) {
                      onChanged(value);
                    },
                    focusNode: focusNode,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    keyboardType: keyboardType,
                    inputFormatters: inputFormatters,
                    style: textInputStyle,
                  ),
                ),
                if (trailingIcon != null)
                  InkWell(
                    child: IconButton(
                      onPressed: () async {
                        await trailingIconOnTap!;
                      },
                      icon: trailingIcon!,
                      color: AppColors.primaryGreen,
                    ),
                  )
              ],
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              errorText!,
              style: AppTextStyles.labelSmallTextStyle.copyWith(
                color: AppColors.accentRed,
              ),
            ),
          ),
      ],
    );
  }
}
