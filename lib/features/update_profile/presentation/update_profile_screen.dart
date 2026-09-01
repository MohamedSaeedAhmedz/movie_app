import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/localization/app_localizations.dart';
import 'package:movie_app/core/resources/app_icons.dart';
import 'package:movie_app/widget/custom_text_form_field.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.pickAvatar)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomTextFormField(
              prefixIcon: SvgPicture.asset(MIcons.userSvg),
              hintText: 'Mohamed Elsayed',
            ),
            SizedBox(height: height * .02),
            CustomTextFormField(),
          ],
        ),
      ),
    );
  }
}
