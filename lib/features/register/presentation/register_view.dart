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
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
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
            TextField(
              style: const TextStyle(color: MColors.white),
              cursorColor: MColors.yellow,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    MIcons.name,
                    width: 24,
                    height: 24,
                    color: MColors.white,
                  ),
                ),
                hintText: "Name",
                hintStyle: const TextStyle(color: MColors.white),
                filled: true,
                fillColor: MColors.dgrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            TextField(
              style: const TextStyle(color: MColors.white),
              cursorColor: MColors.yellow,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    MIcons.mail,
                    width: 24,
                    height: 24,
                    color: MColors.white,
                  ),
                ),
                hintText: "Email",
                hintStyle: const TextStyle(color: MColors.white),
                filled: true,
                fillColor: MColors.dgrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            TextField(
              obscureText: isPasswordHidden,
              style: const TextStyle(color: MColors.white),
              cursorColor: MColors.yellow,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    MIcons.lock,
                    width: 24,
                    height: 24,
                    color: MColors.white,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                    color: MColors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                ),
                hintText: "Password",
                hintStyle: const TextStyle(color: MColors.white),
                filled: true,
                fillColor: MColors.dgrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            TextField(
              obscureText: isConfirmPasswordHidden,
              style: const TextStyle(color: MColors.white),
              cursorColor: MColors.yellow,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    MIcons.lock,
                    width: 24,
                    height: 24,
                    color: MColors.white,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    isConfirmPasswordHidden
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: MColors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordHidden = !isConfirmPasswordHidden;
                    });
                  },
                ),
                hintText: "Confirm Password",
                hintStyle: const TextStyle(color: MColors.white),
                filled: true,
                fillColor: MColors.dgrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            TextField(
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: MColors.white),
              cursorColor: MColors.yellow,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    MIcons.call,
                    width: 24,
                    height: 24,
                    color: MColors.white,
                  ),
                ),
                hintText: "Phone Number",
                hintStyle: const TextStyle(color: MColors.white),
                filled: true,
                fillColor: MColors.dgrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
