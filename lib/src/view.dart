part of proxy_collection;

/** An unmodifiable view of a [Set].
 */
class UnmodifiableSetView<E> extends ProxySet<E> with UnmodifiableSetMixin<E> {
  
  /// Construct an unmodifiable set view from [source] set.
  UnmodifiableSetView(Set<E> source) :
  super(() => source);
  
}

/** A mixin to disable all write methods in [Set] APIs.
 */
abstract class UnmodifiableSetMixin<E> implements Set<E> {
  
  @override
  /// This operation is not supported by an unmodifiable set.
  bool add(E value) => _unsupported_bool();
  @override
  /// This operation is not supported by an unmodifiable set.
  void addAll(Iterable<E> elements) => _unsupported_void();
  @override
  /// This operation is not supported by an unmodifiable set.
  bool remove(Object value) => _unsupported_bool();
  @override
  /// This operation is not supported by an unmodifiable set.
  void removeAll(Iterable<Object> elements) => _unsupported_void();
  @override
  /// This operation is not supported by an unmodifiable set.
  void retainAll(Iterable<Object> elements) => _unsupported_void();
  @override
  /// This operation is not supported by an unmodifiable set.
  void removeWhere(bool test(E element)) => _unsupported_void();
  @override
  /// This operation is not supported by an unmodifiable set.
  void retainWhere(bool test(E element)) => _unsupported_void();
  @override
  /// This operation is not supported by an unmodifiable set.
  void clear() => _unsupported_void();
  
  void _unsupported_void() {
    throw new UnsupportedError(
        "This operation is not supported by an unmodifiable set.");
  }
  
  bool _unsupported_bool() {
    throw new UnsupportedError(
        "This operation is not supported by an unmodifiable set.");
  }
  
}

/** A pair of source object and its unmodifiable view. This construction lets
 * you get around the tedious boilerplate of setting up an unmodifiable view of 
 * collection as a member field in a class. 
 */
abstract class ViewPair<E> {
  
  /// The source object.
  E get source;
  
  /// The unmodifiable view of the [source] object.
  E get view;
  
}

/** An implementation of source-view pair of [List].
 */
class ListViewPair<E> implements ViewPair<List<E>> {
  
  @override
  final List<E> source;
  
  @override
  List<E> get view => _view;
  List<E> _view;
  
  /** Construct a source-view pair of list. If [source] is omitted, it will be
   * defaulted to a new empty list.
   */
  ListViewPair([List<E> source]) :
  this.source = source != null ? source : new List() {
    _view = new UnmodifiableListView(this.source);
  }
  
}

/** An implementation of source-view pair of [Set].
 */
class SetViewPair<E> implements ViewPair<Set<E>> {
  
  @override
  final Set<E> source;
  
  @override
  Set<E> get view => _view;
  Set<E> _view;
  
  /** Construct a source-view pair of set. If [source] is omitted, it will be
   * defaulted to a new empty set.
   */
  SetViewPair([Set<E> source]) :
  this.source = source != null ? source : new Set() {
    _view = new UnmodifiableSetView(this.source);
  }
  
}

/** An implementation of source-view pair of [Map].
 */
class MapViewPair<K, V> implements ViewPair<Map<K, V>> {
  
  @override
  final Map<K, V> source;
  
  @override
  Map<K, V> get view => _view;
  Map<K, V> _view;
  
  /** Construct a source-view pair of map. If [source] is omitted, it will be
   * defaulted to a new empty map.
   */
  MapViewPair([Map<K, V> source]) :
  this.source = source != null ? source : new Map() {
    _view = new UnmodifiableMapView(this.source);
  }
  
}


