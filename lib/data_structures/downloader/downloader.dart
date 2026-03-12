import 'package:flutter/material.dart';
import 'package:scloud_ui/data_structures/downloader/native_downloader.dart'
    if (dart.library.js) 'package:scloud_ui/data_structures/downloader/web_downloader.dart';

abstract class Downloader {
  static Downloader init() {
    return getDownloader();
  }

  Future<void> download(BuildContext context, String url, String nameFile);
}
