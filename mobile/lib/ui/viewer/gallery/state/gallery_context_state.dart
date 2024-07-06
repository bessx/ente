import "package:flutter/material.dart";
import "package:logging/logging.dart";
import "package:photos/ui/viewer/gallery/component/group/type.dart";

class GalleryContextState extends InheritedWidget {
  ///Sorting by creation time
  final bool sortOrderAsc;
  final bool inSelectionMode;
  final GroupType type;
  final scrollOffsetNotifier = ValueNotifier<double>(0);

  GalleryContextState({
    this.inSelectionMode = false,
    this.type = GroupType.day,
    required this.sortOrderAsc,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

  static GalleryContextState? of(BuildContext context) {
    final res =
        context.dependOnInheritedWidgetOfExactType<GalleryContextState>();
    if (res == null) {
      Logger("GalleryContextState")
          .warning("No GalleryContextState found in context");
    }
    return res;
  }

  @override
  bool updateShouldNotify(GalleryContextState oldWidget) {
    return sortOrderAsc != oldWidget.sortOrderAsc ||
        inSelectionMode != oldWidget.inSelectionMode ||
        type != oldWidget.type;
  }
}
