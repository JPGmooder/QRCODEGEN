class AuthentificationError extends Error {
  String _errorString;

  AuthentificationError(this._errorString);

  @override
  String toString() {
    // TODO: implement toString
    return this._errorString;
  }
}
