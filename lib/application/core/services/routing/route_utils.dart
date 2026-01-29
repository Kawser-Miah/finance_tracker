enum PAGES { bottom, categoryDetails, insert, privacyPolicy, termsOfService }

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.bottom:
        return "/";
      case PAGES.categoryDetails:
        return "/categoryDetailsPage";
      case PAGES.insert:
        return "/insertPage";
      case PAGES.privacyPolicy:
        return "/privacyPolicy";
      case PAGES.termsOfService:
        return "/termsOfService";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.bottom:
        return "BOTTOM";
      case PAGES.categoryDetails:
        return "CATEGORY DETAILS";
      case PAGES.insert:
        return "DATA INSERT";
      case PAGES.privacyPolicy:
        return "PRIVACY POLICY";
      case PAGES.termsOfService:
        return "TERMS OF SERVICE";
    }
  }
}
