import 'package:flutter/material.dart';
import 'package:movie_app/core/localization/app_localizations.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(appBar: AppBar(title: Text(l10n.pickAvatar)));
  }
}
