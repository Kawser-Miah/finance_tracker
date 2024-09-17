enum PAGES { bottom, categoryDetails, insert, birthday,wish }

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.birthday:
        return "/";
      case PAGES.wish:
        return "/wish";
      case PAGES.bottom:
        return "/bottom";
      case PAGES.categoryDetails:
        return "/categoryDetailsPage";
      case PAGES.insert:
        return "/insertPage";
      default:
        return "/";
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
      default:
        return "BOTTOM";
    }
  }
}
