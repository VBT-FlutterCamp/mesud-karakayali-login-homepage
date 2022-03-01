// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserViewModel on _UserViewModelBase, Store {
  final _$userListAtom = Atom(name: '_UserViewModelBase.userList');

  @override
  List<Users> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(List<Users> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$getFetchAsyncAction = AsyncAction('_UserViewModelBase.getFetch');

  @override
  Future<void> getFetch() {
    return _$getFetchAsyncAction.run(() => super.getFetch());
  }

  @override
  String toString() {
    return '''
userList: ${userList}
    ''';
  }
}
