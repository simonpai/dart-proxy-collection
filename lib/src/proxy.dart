part of proxy_collection;

typedef E _Getter<E>();

// TODO: make list/set/queue extend from iterable

/** A proxy [Iterable] which delegates its APIs to a source iterable dynamically.
 */
class ProxyIterable<E> implements Iterable<E> {
  
  /** Construct a proxy iterable with a [getter] to delegates to source iterable.
   */
  ProxyIterable(Iterable<E> getter()) : 
  this._getter = getter;
  
  final _Getter<Iterable<E>> _getter;
  Iterable<E> get _source => _getter();
  
  // Iterable //
  @override
  Iterator<E> get iterator => _source.iterator;
  @override
  Iterable map(f(E element)) => _source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => _source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => _source.expand(f);
  @override
  bool contains(Object element) => _source.contains(element);
  @override
  void forEach(void f(E element)) => _source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => _source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      _source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => _source.every(test);
  @override
  String join([String separator = ""]) => _source.join(separator);
  @override
  bool any(bool test(E element)) => _source.any(test);
  @override
  List<E> toList({ bool growable: true }) => _source.toList(growable: growable);
  @override
  Set<E> toSet() => _source.toSet();
  @override
  int get length => _source.length;
  @override
  bool get isEmpty => _source.isEmpty;
  @override
  bool get isNotEmpty => _source.isNotEmpty;
  @override
  Iterable<E> take(int n) => _source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => _source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => _source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => _source.skipWhile(test);
  @override
  E get first => _source.first;
  @override
  E get last => _source.last;
  @override
  E get single => _source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      _source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      _source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => _source.singleWhere(test);
  @override
  E elementAt(int index) => _source.elementAt(index);
  
}

/** A proxy [List] which delegates its APIs to a source list dynamically.
 */
class ProxyList<E> implements List<E> {
  
  /** Construct a proxy list with a [getter] to delegates to source list.
   */
  ProxyList(List<E> getter()) : 
  this._getter = getter;
  
  final _Getter<List<E>> _getter;
  List<E> get _source => _getter();
  
  // Iterable //
  @override
  Iterator<E> get iterator => _source.iterator;
  @override
  Iterable map(f(E element)) => _source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => _source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => _source.expand(f);
  @override
  bool contains(Object element) => _source.contains(element);
  @override
  void forEach(void f(E element)) => _source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => _source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      _source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => _source.every(test);
  @override
  String join([String separator = ""]) => _source.join(separator);
  @override
  bool any(bool test(E element)) => _source.any(test);
  @override
  List<E> toList({ bool growable: true }) => _source.toList(growable: growable);
  @override
  Set<E> toSet() => _source.toSet();
  @override
  int get length => _source.length;
  @override
  bool get isEmpty => _source.isEmpty;
  @override
  bool get isNotEmpty => _source.isNotEmpty;
  @override
  Iterable<E> take(int n) => _source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => _source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => _source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => _source.skipWhile(test);
  @override
  E get first => _source.first;
  @override
  E get last => _source.last;
  @override
  E get single => _source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      _source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      _source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => _source.singleWhere(test);
  @override
  E elementAt(int index) => _source.elementAt(index);
  
  // List //
  @override
  E operator [](int index) => _source[index];
  @override
  void operator []=(int index, E value) { _source[index] = value; }
  @override
  void set length(int newLength) { _source.length = newLength; }
  @override
  void add(E value) => _source.add(value);
  @override
  void addAll(Iterable<E> iterable) => _source.addAll(iterable);
  @override
  Iterable<E> get reversed => _source.reversed;
  @override
  void sort([int compare(E a, E b)]) => _source.sort(compare);
  @override
  void shuffle([Random random]) => _source.shuffle(random);
  @override
  int indexOf(E element, [int start = 0]) => _source.indexOf(element, start);
  @override
  int lastIndexOf(E element, [int start]) => _source.lastIndexOf(element, start);
  @override
  void clear() => _source.clear();
  @override
  void insert(int index, E element) => _source.insert(index, element);
  @override
  void insertAll(int index, Iterable<E> iterable) => _source.insertAll(index, iterable);
  @override
  void setAll(int index, Iterable<E> iterable) => _source.setAll(index, iterable);
  @override
  bool remove(Object value) => _source.remove(value);
  @override
  E removeAt(int index) => _source.removeAt(index);
  @override
  E removeLast() => _source.removeLast();
  @override
  void removeWhere(bool test(E element)) => _source.removeWhere(test);
  @override
  void retainWhere(bool test(E element)) => _source.retainWhere(test);
  @override
  List<E> sublist(int start, [int end]) => _source.sublist(start, end);
  @override
  Iterable<E> getRange(int start, int end) => _source.getRange(start, end);
  @override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) =>
      _source.setRange(start, end, iterable, skipCount);
  @override
  void removeRange(int start, int end) => _source.removeRange(start, end);
  @override
  void fillRange(int start, int end, [E fillValue]) => 
      _source.fillRange(start, end, fillValue);
  @override
  void replaceRange(int start, int end, Iterable<E> replacement) =>
      _source.replaceRange(start, end, replacement);
  @override
  Map<int, E> asMap() => _source.asMap();
  
}

/** A proxy [Set] which delegates its APIs to a source set dynamically.
 */
class ProxySet<E> implements Set<E> {
  
  /** Construct a proxy set with a [getter] to delegates to source set.
   */
  ProxySet(Set<E> getter()) : 
  this._getter = getter;
  
  final _Getter<Set<E>> _getter;
  Set<E> get _source => _getter();
  
  // Iterable //
  @override
  Iterator<E> get iterator => _source.iterator;
  @override
  Iterable map(f(E element)) => _source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => _source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => _source.expand(f);
  @override
  bool contains(Object element) => _source.contains(element);
  @override
  void forEach(void f(E element)) => _source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => _source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      _source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => _source.every(test);
  @override
  String join([String separator = ""]) => _source.join(separator);
  @override
  bool any(bool test(E element)) => _source.any(test);
  @override
  List<E> toList({ bool growable: true }) => _source.toList(growable: growable);
  @override
  Set<E> toSet() => _source.toSet();
  @override
  int get length => _source.length;
  @override
  bool get isEmpty => _source.isEmpty;
  @override
  bool get isNotEmpty => _source.isNotEmpty;
  @override
  Iterable<E> take(int n) => _source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => _source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => _source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => _source.skipWhile(test);
  @override
  E get first => _source.first;
  @override
  E get last => _source.last;
  @override
  E get single => _source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      _source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      _source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => _source.singleWhere(test);
  @override
  E elementAt(int index) => _source.elementAt(index);
  
  // Set //
  @override
  bool add(E value) => _source.add(value);
  @override
  void addAll(Iterable<E> elements) => _source.addAll(elements);
  @override
  bool remove(Object value) => _source.remove(value);
  @override
  E lookup(Object object) => _source.lookup(object);
  @override
  void removeAll(Iterable<Object> elements) => _source.removeAll(elements);
  @override
  void retainAll(Iterable<Object> elements) => _source.retainAll(elements);
  @override
  void removeWhere(bool test(E element)) => _source.removeWhere(test);
  @override
  void retainWhere(bool test(E element)) => _source.retainWhere(test);
  @override
  bool containsAll(Iterable<Object> other) => _source.containsAll(other);
  @override
  Set<E> intersection(Set<Object> other) => _source.intersection(other);
  @override
  Set<E> union(Set<E> other) => _source.union(other);
  @override
  Set<E> difference(Set<E> other) => _source.difference(other);
  @override
  void clear() => _source.clear();
  
}

/** A proxy [Queue] which delegates its APIs to a source queue dynamically.
 */
class ProxyQueue<E> implements Queue<E> {
  
  /** Construct a proxy queue with a [getter] to delegates to source queue.
   */
  ProxyQueue(Queue<E> getter()) : 
  this._getter = getter;
  
  final _Getter<Queue<E>> _getter;
  Queue<E> get _source => _getter();
  
  // Iterable //
  @override
  Iterator<E> get iterator => _source.iterator;
  @override
  Iterable map(f(E element)) => _source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => _source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => _source.expand(f);
  @override
  bool contains(Object element) => _source.contains(element);
  @override
  void forEach(void f(E element)) => _source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => _source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      _source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => _source.every(test);
  @override
  String join([String separator = ""]) => _source.join(separator);
  @override
  bool any(bool test(E element)) => _source.any(test);
  @override
  List<E> toList({ bool growable: true }) => _source.toList(growable: growable);
  @override
  Set<E> toSet() => _source.toSet();
  @override
  int get length => _source.length;
  @override
  bool get isEmpty => _source.isEmpty;
  @override
  bool get isNotEmpty => _source.isNotEmpty;
  @override
  Iterable<E> take(int n) => _source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => _source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => _source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => _source.skipWhile(test);
  @override
  E get first => _source.first;
  @override
  E get last => _source.last;
  @override
  E get single => _source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      _source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      _source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => _source.singleWhere(test);
  @override
  E elementAt(int index) => _source.elementAt(index);
  
  // Queue //
  @override
  E removeFirst() => _source.removeFirst();
  @override
  E removeLast() => _source.removeLast();
  @override
  void addFirst(E value) => _source.addFirst(value);
  @override
  void addLast(E value) => _source.addLast(value);
  @override
  void add(E value) => _source.add(value);
  @override
  bool remove(Object object) => _source.remove(object);
  @override
  void addAll(Iterable<E> iterable) => _source.addAll(iterable);
  @override
  void removeWhere(bool test(E element)) => _source.removeWhere(test);
  @override
  void retainWhere(bool test(E element)) => _source.retainWhere(test);
  @override
  void clear() => _source.clear();
  
}

/** A proxy [Map] which delegates its APIs to a source map dynamically.
 */
class ProxyMap<K, V> implements Map<K, V> {
  
  /** Construct a proxy map with a [getter] to delegates to source map.
   */
  ProxyMap(Map<K, V> getter()) : 
  this._getter = getter;
  
  final _Getter<Map<K, V>> _getter;
  Map<K, V> get _source => _getter();
  
  // Map //
  @override
  bool containsValue(Object value) => _source.containsValue(value);
  @override
  bool containsKey(Object key) => _source.containsKey(key);
  @override
  V operator [](Object key) => _source[key];
  @override
  void operator []=(K key, V value) { _source[key] = value; }
  @override
  V putIfAbsent(K key, V ifAbsent()) => _source.putIfAbsent(key, ifAbsent);
  @override
  void addAll(Map<K, V> other) => _source.addAll(other);
  @override
  V remove(Object key) => _source.remove(key);
  @override
  void clear() => _source.clear();
  @override
  void forEach(void f(K key, V value)) => _source.forEach(f);
  @override
  Iterable<K> get keys => _source.keys;
  @override
  Iterable<V> get values => _source.values;
  @override
  int get length => _source.length;
  @override
  bool get isEmpty => _source.isEmpty;
  @override
  bool get isNotEmpty => _source.isNotEmpty;
  
}


