// ignore_for_file: constant_identifier_names

enum MenuItemType {
  DELETE
}


getMenuItemString(MenuItemType menuItemType) {
  switch (menuItemType) {
    case MenuItemType.DELETE:
      return "Delete Card";
  }
}