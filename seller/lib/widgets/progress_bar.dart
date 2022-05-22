import 'package:flutter/material.dart';

circularProgress(context) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 12),
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
    ),
  );
}

linearProgress(context) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 12),
    child: LinearProgressIndicator(
      valueColor: AlwaysStoppedAnimation(
        Theme.of(context).colorScheme.primary,
      ),
    ),
  );
}
