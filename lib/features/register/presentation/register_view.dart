import 'package:flutter/material.dart';
import 'package:movie_app/core/localization/app_localizations.dart';
import 'package:movie_app/core/resources/app_Images.dart';
import 'package:movie_app/core/resources/app_colors.dart';
import 'package:movie_app/core/resources/app_icons.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    var loc = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: MColors.black,
      appBar: AppBar(
        backgroundColor: MColors.black,
        centerTitle: true,
        title: Text(
          
          "Register",
          style: TextStyle(
            fontSize: 16,
            color: MColors.yellow,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: Image.asset(MIcons.barrow),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(MImages.Avatar1),
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(MImages.Avatar2),
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(MImages.Avatar3),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "Avatar",
            style: const TextStyle(color: MColors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
