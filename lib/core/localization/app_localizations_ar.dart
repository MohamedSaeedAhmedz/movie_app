// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get forgetPassword => 'نسيت كلمة المرور ؟';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get dontHaveAccount => 'لا تمتلك حساب ؟ ';

  @override
  String get createOne => 'أنشئ حساباً';

  @override
  String get or => 'أو';

  @override
  String get loginWithGoogle => 'التسجيل باستخدام جوجل';

  @override
  String get pickAvatar => 'اختيار الصورة';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get updateData => 'تحديث البيانات';

  @override
  String get resetPassword => 'إعادة تعيين كلمة المرور';
}
