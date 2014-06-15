library proxy_collection;

import 'dart:math';
import 'dart:collection';

/* Due to limitation of mixin in Dart 1.x, the hierarchy has to stay flat to 
 * keep them as mixin candidates.
 */

/** A skeleton of proxy iterable mixin.
 */
abstract class ProxyIterable<E> implements Iterable<E> {
  
  /// The source of this proxy.
  Iterable<E> get source;
  
  // Iterable //
  @override
  Iterator<E> get iterator => source.iterator;
  @override
  Iterable map(f(E element)) => source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => source.expand(f);
  @override
  bool contains(Object element) => source.contains(element);
  @override
  void forEach(void f(E element)) => source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => source.every(test);
  @override
  String join([String separator = ""]) => source.join(separator);
  @override
  bool any(bool test(E element)) => source.any(test);
  @override
  List<E> toList({ bool growable: true }) => source.toList(growable: growable);
  @override
  Set<E> toSet() => source.toSet();
  @override
  int get length => source.length;
  @override
  bool get isEmpty => source.isEmpty;
  @override
  bool get isNotEmpty => source.isNotEmpty;
  @override
  Iterable<E> take(int n) => source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => source.skipWhile(test);
  @override
  E get first => source.first;
  @override
  E get last => source.last;
  @override
  E get single => source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => source.singleWhere(test);
  @override
  E elementAt(int index) => source.elementAt(index);
  
}

/** A skeleton of proxy list mixin.
 */
abstract class ProxyList<E> implements List<E> {
  
  /// The source of this proxy.
  List<E> get source;
  
  // Iterable //
  @override
  Iterator<E> get iterator => source.iterator;
  @override
  Iterable map(f(E element)) => source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => source.expand(f);
  @override
  bool contains(Object element) => source.contains(element);
  @override
  void forEach(void f(E element)) => source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => source.every(test);
  @override
  String join([String separator = ""]) => source.join(separator);
  @override
  bool any(bool test(E element)) => source.any(test);
  @override
  List<E> toList({ bool growable: true }) => source.toList(growable: growable);
  @override
  Set<E> toSet() => source.toSet();
  @override
  int get length => source.length;
  @override
  bool get isEmpty => source.isEmpty;
  @override
  bool get isNotEmpty => source.isNotEmpty;
  @override
  Iterable<E> take(int n) => source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => source.skipWhile(test);
  @override
  E get first => source.first;
  @override
  E get last => source.last;
  @override
  E get single => source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => source.singleWhere(test);
  @override
  E elementAt(int index) => source.elementAt(index);
  
  // List //
  @override
  E operator [](int index) => source[index];
  @override
  void operator []=(int index, E value) { source[index] = value; }
  @override
  void set length(int newLength) { source.length = newLength; }
  @override
  void add(E value) => source.add(value);
  @override
  void addAll(Iterable<E> iterable) => source.addAll(iterable);
  @override
  Iterable<E> get reversed => source.reversed;
  @override
  void sort([int compare(E a, E b)]) => source.sort(compare);
  @override
  void shuffle([Random random]) => source.shuffle(random);
  @override
  int indexOf(E element, [int start = 0]) => source.indexOf(element, start);
  @override
  int lastIndexOf(E element, [int start]) => source.lastIndexOf(element, start);
  @override
  void clear() => source.clear();
  @override
  void insert(int index, E element) => source.insert(index, element);
  @override
  void insertAll(int index, Iterable<E> iterable) => source.insertAll(index, iterable);
  @override
  void setAll(int index, Iterable<E> iterable) => source.setAll(index, iterable);
  @override
  bool remove(Object value) => source.remove(value);
  @override
  E removeAt(int index) => source.removeAt(index);
  @override
  E removeLast() => source.removeLast();
  @override
  void removeWhere(bool test(E element)) => source.removeWhere(test);
  @override
  void retainWhere(bool test(E element)) => source.retainWhere(test);
  @override
  List<E> sublist(int start, [int end]) => source.sublist(start, end);
  @override
  Iterable<E> getRange(int start, int end) => source.getRange(start, end);
  @override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) =>
      source.setRange(start, end, iterable, skipCount);
  @override
  void removeRange(int start, int end) => source.removeRange(start, end);
  @override
  void fillRange(int start, int end, [E fillValue]) => 
      source.fillRange(start, end, fillValue);
  @override
  void replaceRange(int start, int end, Iterable<E> replacement) =>
      source.replaceRange(start, end, replacement);
  @override
  Map<int, E> asMap() => source.asMap();
  
}

/** A skeleton of proxy set mixin.
 */
abstract class ProxySet<E> implements Set<E> {
  
  /// The source of this proxy.
  Set<E> get source;
  
  // Iterable //
  @override
  Iterator<E> get iterator => source.iterator;
  @override
  Iterable map(f(E element)) => source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => source.expand(f);
  @override
  bool contains(Object element) => source.contains(element);
  @override
  void forEach(void f(E element)) => source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => source.every(test);
  @override
  String join([String separator = ""]) => source.join(separator);
  @override
  bool any(bool test(E element)) => source.any(test);
  @override
  List<E> toList({ bool growable: true }) => source.toList(growable: growable);
  @override
  Set<E> toSet() => source.toSet();
  @override
  int get length => source.length;
  @override
  bool get isEmpty => source.isEmpty;
  @override
  bool get isNotEmpty => source.isNotEmpty;
  @override
  Iterable<E> take(int n) => source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => source.skipWhile(test);
  @override
  E get first => source.first;
  @override
  E get last => source.last;
  @override
  E get single => source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => source.singleWhere(test);
  @override
  E elementAt(int index) => source.elementAt(index);
  
  // Set //
  @override
  bool add(E value) => source.add(value);
  @override
  void addAll(Iterable<E> elements) => source.addAll(elements);
  @override
  bool remove(Object value) => source.remove(value);
  @override
  E lookup(Object object) => source.lookup(object);
  @override
  void removeAll(Iterable<Object> elements) => source.removeAll(elements);
  @override
  void retainAll(Iterable<Object> elements) => source.retainAll(elements);
  @override
  void removeWhere(bool test(E element)) => source.removeWhere(test);
  @override
  void retainWhere(bool test(E element)) => source.retainWhere(test);
  @override
  bool containsAll(Iterable<Object> other) => source.containsAll(other);
  @override
  Set<E> intersection(Set<Object> other) => source.intersection(other);
  @override
  Set<E> union(Set<E> other) => source.union(other);
  @override
  Set<E> difference(Set<E> other) => source.difference(other);
  @override
  void clear() => source.clear();
  
}

/** A skeleton of proxy queue mixin.
 */
abstract class ProxyQueue<E> implements Queue<E> {
  
  /// The source of this proxy.
  Queue<E> get source;
  
  // Iterable //
  @override
  Iterator<E> get iterator => source.iterator;
  @override
  Iterable map(f(E element)) => source.map(f);
  @override
  Iterable<E> where(bool test(E element)) => source.where(test);
  @override
  Iterable expand(Iterable f(E element)) => source.expand(f);
  @override
  bool contains(Object element) => source.contains(element);
  @override
  void forEach(void f(E element)) => source.forEach(f);
  @override
  E reduce(E combine(E value, E element)) => source.reduce(combine);
  @override
  fold(var initialValue, combine(var previousValue, E element)) =>
      source.fold(initialValue, combine);
  @override
  bool every(bool test(E element)) => source.every(test);
  @override
  String join([String separator = ""]) => source.join(separator);
  @override
  bool any(bool test(E element)) => source.any(test);
  @override
  List<E> toList({ bool growable: true }) => source.toList(growable: growable);
  @override
  Set<E> toSet() => source.toSet();
  @override
  int get length => source.length;
  @override
  bool get isEmpty => source.isEmpty;
  @override
  bool get isNotEmpty => source.isNotEmpty;
  @override
  Iterable<E> take(int n) => source.take(n);
  @override
  Iterable<E> takeWhile(bool test(E value)) => source.takeWhile(test);
  @override
  Iterable<E> skip(int n) => source.skip(n);
  @override
  Iterable<E> skipWhile(bool test(E value)) => source.skipWhile(test);
  @override
  E get first => source.first;
  @override
  E get last => source.last;
  @override
  E get single => source.single;
  @override
  E firstWhere(bool test(E element), { E orElse() }) =>
      source.firstWhere(test, orElse: orElse);
  @override
  E lastWhere(bool test(E element), { E orElse() }) =>
      source.lastWhere(test, orElse: orElse);
  @override
  E singleWhere(bool test(E element)) => source.singleWhere(test);
  @override
  E elementAt(int index) => source.elementAt(index);
  
  // Queue //
  @override
  E removeFirst() => source.removeFirst();
  @override
  E removeLast() => source.removeLast();
  @override
  void addFirst(E value) => source.addFirst(value);
  @override
  void addLast(E value) => source.addLast(value);
  @override
  void add(E value) => source.add(value);
  @override
  bool remove(Object object) => source.remove(object);
  @override
  void addAll(Iterable<E> iterable) => source.addAll(iterable);
  @override
  void removeWhere(bool test(E element)) => source.removeWhere(test);
  @override
  void retainWhere(bool test(E element)) => source.retainWhere(test);
  @override
  void clear() => source.clear();
  
}

/** A skeleton of proxy map mixin.
 */
abstract class ProxyMap<K, V> implements Map<K, V> {
  
  /// The source of this proxy.
  Map<K, V> get source;
  
  // Map //
  @override
  bool containsValue(Object value) => source.containsValue(value);
  @override
  bool containsKey(Object key) => source.containsKey(key);
  @override
  V operator [](Object key) => source[key];
  @override
  void operator []=(K key, V value) { source[key] = value; }
  @override
  V putIfAbsent(K key, V ifAbsent()) => source.putIfAbsent(key, ifAbsent);
  @override
  void addAll(Map<K, V> other) => source.addAll(other);
  @override
  V remove(Object key) => source.remove(key);
  @override
  void clear() => source.clear();
  @override
  void forEach(void f(K key, V value)) => source.forEach(f);
  @override
  Iterable<K> get keys => source.keys;
  @override
  Iterable<V> get values => source.values;
  @override
  int get length => source.length;
  @override
  bool get isEmpty => source.isEmpty;
  @override
  bool get isNotEmpty => source.isNotEmpty;
  
}


