import 'dart:developer' as developer;

import 'package:flutter/foundation.dart' as Foundation;

class LogUtil {
  static devLog(
    String tag, {
    required String message,
    Object? content,
  }) {
    if (!Foundation.kReleaseMode) {
      // String jsonEncodedContent;
      // try {
      //   jsonEncodedContent = jsonEncode(content);
      // } catch (error) {
      //   jsonEncodedContent = jsonEncode(content?.toString());
      // }

      developer.log(
        (message.isEmpty ? tag : message),
        name: tag,
        error: content,
      );
    }
  }
}
