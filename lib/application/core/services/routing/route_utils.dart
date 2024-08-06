enum PAGES { bottom }

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.bottom:
        return "/";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.bottom:
        return "BOTTOM";

      default:
        return "BOTTOM";
    }
  }
}
