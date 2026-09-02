import 'package:flutter/material.dart';
import 'package:movie_app/core/localization/app_localizations.dart';
import 'package:movie_app/core/localization/app_localizations_ar.dart';
import 'package:movie_app/core/resources/app_icons.dart';
import 'package:movie_app/core/resources/app_images.dart';
import 'package:movie_app/widget/custom_svg_pic.dart';
import 'package:movie_app/widget/custom_text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.forgetPasswordTitle)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(MImages.forgot),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: CustomTextFormField(
                prefixIcon: CustomSvgPicture(svgPath: MIcons.emailSvg),
                hintText: l10n.email,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
