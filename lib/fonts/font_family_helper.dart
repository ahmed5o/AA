class FontFamilyHelper {
  const FontFamilyHelper._();
  static const String cairoArabic = 'Cairo';
  static const String poppinsEngligh = 'Poppins';

  static String gelocalozedFontFamily() {
    //TODO: sheares preferences
    const currentloungehe = 'ar';
    if (currentloungehe == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEngligh;
    }
  }
}
