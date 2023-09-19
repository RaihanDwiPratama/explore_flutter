// The ticker will be our data source for the timer application.
// It will expose a stream of ticks which we can subscribe and react to.

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
