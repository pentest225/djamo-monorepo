T useReturnValue<T>(T Function() callback) {
  return callback();
}
