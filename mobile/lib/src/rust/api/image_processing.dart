// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: require_trailing_commas

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:photos/src/rust/frb_generated.dart';

Future<Uint8List> processYoloFace({required String imagePath}) =>
    RustLib.instance.api
        .crateApiImageProcessingProcessYoloFace(imagePath: imagePath);
