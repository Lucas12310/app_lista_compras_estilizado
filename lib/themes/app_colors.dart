import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color primaryColor;
  final Color textButtonColor;
  final Color inputTextColor;
  final Color inputBackgroundColor;
  final Color createButtonBackgroundColor;
  final Color createButtonTextColor;
  final Color dividerColor;
  final Color itemTextColor;
  final Color itemBoughtColor;
  final Color floatingButtonColor;
  final Color pageBackgroundColor;
  final Color modalBackgroundColor;
  final Color modalTextColor;
  final Color modalHintColor;
  final Color closeIconColor;
  final Color cardTitleColor;
  final Color progressColor;
  final Color progressBackgroundColor;
  final Color counterColor;

  const AppColors({
    required this.primaryColor,
    required this.textButtonColor,
    required this.inputTextColor,
    required this.inputBackgroundColor,
    required this.createButtonBackgroundColor,
    required this.createButtonTextColor,
    required this.dividerColor,
    required this.itemTextColor,
    required this.itemBoughtColor,
    required this.floatingButtonColor,
    required this.pageBackgroundColor,
    required this.modalBackgroundColor,
    required this.modalTextColor,
    required this.modalHintColor,
    required this.closeIconColor,
    required this.cardTitleColor,
    required this.progressColor,
    required this.progressBackgroundColor,
    required this.counterColor,
  });

  @override
  AppColors copyWith({
    Color? primaryColor,
    Color? textButtonColor,
    Color? inputTextColor,
    Color? inputBackgroundColor,
    Color? createButtonBackgroundColor,
    Color? createButtonTextColor,
    Color? dividerColor,
    Color? itemTextColor,
    Color? itemBoughtColor,
    Color? floatingButtonColor,
    Color? pageBackgroundColor,
    Color? modalBackgroundColor,
    Color? modalTextColor,
    Color? modalHintColor,
    Color? closeIconColor,
    Color? cardTitleColor,
    Color? progressColor,
    Color? progressBackgroundColor,
    Color? counterColor,
  }) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      textButtonColor: textButtonColor ?? this.textButtonColor,
      inputTextColor: inputTextColor ?? this.inputTextColor,
      inputBackgroundColor: inputBackgroundColor ?? this.inputBackgroundColor,
      createButtonBackgroundColor:
          createButtonBackgroundColor ?? this.createButtonBackgroundColor,
      createButtonTextColor:
          createButtonTextColor ?? this.createButtonTextColor,
      dividerColor: dividerColor ?? this.dividerColor,
      itemTextColor: itemTextColor ?? this.itemTextColor,
      itemBoughtColor: itemBoughtColor ?? this.itemBoughtColor,
      floatingButtonColor: floatingButtonColor ?? this.floatingButtonColor,
      pageBackgroundColor: pageBackgroundColor ?? this.pageBackgroundColor,
      modalBackgroundColor: modalBackgroundColor ?? this.modalBackgroundColor,
      modalTextColor: modalTextColor ?? this.modalTextColor,
      modalHintColor: modalHintColor ?? this.modalHintColor,
      closeIconColor: closeIconColor ?? this.closeIconColor,
      cardTitleColor: cardTitleColor ?? this.cardTitleColor,
      progressColor: progressColor ?? this.progressColor,
      progressBackgroundColor:
          progressBackgroundColor ?? this.progressBackgroundColor,
      counterColor: counterColor ?? this.counterColor,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      textButtonColor: Color.lerp(textButtonColor, other.textButtonColor, t)!,
      inputTextColor: Color.lerp(inputTextColor, other.inputTextColor, t)!,
      inputBackgroundColor: Color.lerp(
        inputBackgroundColor,
        other.inputBackgroundColor,
        t,
      )!,
      createButtonBackgroundColor: Color.lerp(
        createButtonBackgroundColor,
        other.createButtonBackgroundColor,
        t,
      )!,
      createButtonTextColor: Color.lerp(
        createButtonTextColor,
        other.createButtonTextColor,
        t,
      )!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      itemTextColor: Color.lerp(itemTextColor, other.itemTextColor, t)!,
      itemBoughtColor: Color.lerp(itemBoughtColor, other.itemBoughtColor, t)!,
      floatingButtonColor: Color.lerp(
        floatingButtonColor,
        other.floatingButtonColor,
        t,
      )!,
      pageBackgroundColor: Color.lerp(
        pageBackgroundColor,
        other.pageBackgroundColor,
        t,
      )!,
      modalBackgroundColor: Color.lerp(
        modalBackgroundColor,
        other.modalBackgroundColor,
        t,
      )!,
      modalTextColor: Color.lerp(modalTextColor, other.modalTextColor, t)!,
      modalHintColor: Color.lerp(modalHintColor, other.modalHintColor, t)!,
      closeIconColor: Color.lerp(closeIconColor, other.closeIconColor, t)!,
      cardTitleColor: Color.lerp(cardTitleColor, other.cardTitleColor, t)!,
      progressColor: Color.lerp(progressColor, other.progressColor, t)!,
      progressBackgroundColor: Color.lerp(
        progressBackgroundColor,
        other.progressBackgroundColor,
        t,
      )!,
      counterColor: Color.lerp(counterColor, other.counterColor, t)!,
    );
  }
}
