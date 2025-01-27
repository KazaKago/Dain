class NoScopeFoundException implements Exception {
  const NoScopeFoundException(this._scopeId);

  final String _scopeId;

  @override
  String toString() {
    return "$runtimeType: Scope id '$_scopeId' is not found";
  }
}
