import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/localizations/localizations_cubit.dart';
import 'package:mock_university/presentation/components/general/app_icon_button.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/ui/colors.dart';

class SelectLanguageRow extends StatelessWidget {
  SelectLanguageRow({super.key, required this.locale});

  Locale locale;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, Locale>(
        builder: (context, selectedLocale) {
      return Row(
        children: [
          Text(
            getLanguageText(locale),
            style: context.appTextTheme.titleSmall
                ?.copyWith(color: const Color(0xff3B3B3B)),
          ),
          const WidthSizedBox(width: 16),
          AppIconButton(
              icon: SizedBox(
                height: 24.r,
                width: 24.r,
                child: selectedLocale == locale
                    ? const Icon(
                        Icons.check_box,
                        color: mainColor,
                      )
                    : const Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: mainColor,
                      ),
              ),
              onClick: () {
                BlocProvider.of<LocalizationCubit>(context).changeLocale(locale);
              })
        ],
      );
    });
  }

  String getLanguageText(Locale locale) {
    if (locale == const Locale('en')) {
      return "English";
    } else if (locale == const Locale('fa')) {
      return "Persian";
    } else {
      return "Arabic";
    }
  }
}
