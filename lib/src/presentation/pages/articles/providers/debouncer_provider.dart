import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debouncer_provider.g.dart';

@Riverpod(keepAlive: true)
class Debouncer extends _$Debouncer {
  Timer? _debounceTimer;
  CancelToken? _cancelToken;

  @override
  void build() {}

  void debounceSearch(
    String query,
    void Function(String, CancelToken) onSearch,
  ) {
    _debounceTimer?.cancel();
    cancelCurrentRequest();
    debugPrint('debounceSearch: $query');
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      _cancelToken = CancelToken();
      onSearch(query, _cancelToken!);
    });
  }

  CancelToken? get currentCancelToken => _cancelToken;

  void cancelCurrentRequest() {
    try {
      _cancelToken?.cancel('Cancelled by debouncer');
    } finally {
      _cancelToken = null;
    }
  }

  void clearToken() {
    _cancelToken = null;
  }

  void cancelAll() {
    _debounceTimer?.cancel();
    _debounceTimer = null;
    cancelCurrentRequest();
  }
}
