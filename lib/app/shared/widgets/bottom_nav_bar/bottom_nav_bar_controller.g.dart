// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav_bar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BottomNavBarController on _BottomNavBarControllerBase, Store {
  final _$currentIndexAtom =
      Atom(name: '_BottomNavBarControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$setIndexAsyncAction = AsyncAction('setIndex');

  @override
  Future<dynamic> setIndex(int index) {
    return _$setIndexAsyncAction.run(() => super.setIndex(index));
  }

  @override
  String toString() {
    final string = 'currentIndex: ${currentIndex.toString()}';
    return '{$string}';
  }
}
