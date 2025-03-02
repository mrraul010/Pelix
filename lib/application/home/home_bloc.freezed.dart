// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataImplCopyWith<$Res> {
  factory _$$GetHomeScreenDataImplCopyWith(_$GetHomeScreenDataImpl value,
          $Res Function(_$GetHomeScreenDataImpl) then) =
      __$$GetHomeScreenDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeScreenDataImpl>
    implements _$$GetHomeScreenDataImplCopyWith<$Res> {
  __$$GetHomeScreenDataImplCopyWithImpl(_$GetHomeScreenDataImpl _value,
      $Res Function(_$GetHomeScreenDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeScreenDataImpl implements GetHomeScreenData {
  const _$GetHomeScreenDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenDataImpl;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<HomeData> get pastyearMovieList => throw _privateConstructorUsedError;
  List<HomeData> get trendingMovieList => throw _privateConstructorUsedError;
  List<HomeData> get tenseDramasMovieList => throw _privateConstructorUsedError;
  List<HomeData> get globalMovieList => throw _privateConstructorUsedError;
  List<HomeData> get trendinganothermovieList =>
      throw _privateConstructorUsedError;
  List<HomeData> get topratedtvlist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String stateId,
      List<HomeData> pastyearMovieList,
      List<HomeData> trendingMovieList,
      List<HomeData> tenseDramasMovieList,
      List<HomeData> globalMovieList,
      List<HomeData> trendinganothermovieList,
      List<HomeData> topratedtvlist,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastyearMovieList = null,
    Object? trendingMovieList = null,
    Object? tenseDramasMovieList = null,
    Object? globalMovieList = null,
    Object? trendinganothermovieList = null,
    Object? topratedtvlist = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearMovieList: null == pastyearMovieList
          ? _value.pastyearMovieList
          : pastyearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trendingMovieList: null == trendingMovieList
          ? _value.trendingMovieList
          : trendingMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      tenseDramasMovieList: null == tenseDramasMovieList
          ? _value.tenseDramasMovieList
          : tenseDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      globalMovieList: null == globalMovieList
          ? _value.globalMovieList
          : globalMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trendinganothermovieList: null == trendinganothermovieList
          ? _value.trendinganothermovieList
          : trendinganothermovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      topratedtvlist: null == topratedtvlist
          ? _value.topratedtvlist
          : topratedtvlist // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<HomeData> pastyearMovieList,
      List<HomeData> trendingMovieList,
      List<HomeData> tenseDramasMovieList,
      List<HomeData> globalMovieList,
      List<HomeData> trendinganothermovieList,
      List<HomeData> topratedtvlist,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastyearMovieList = null,
    Object? trendingMovieList = null,
    Object? tenseDramasMovieList = null,
    Object? globalMovieList = null,
    Object? trendinganothermovieList = null,
    Object? topratedtvlist = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$InitialImpl(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearMovieList: null == pastyearMovieList
          ? _value._pastyearMovieList
          : pastyearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trendingMovieList: null == trendingMovieList
          ? _value._trendingMovieList
          : trendingMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      tenseDramasMovieList: null == tenseDramasMovieList
          ? _value._tenseDramasMovieList
          : tenseDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      globalMovieList: null == globalMovieList
          ? _value._globalMovieList
          : globalMovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trendinganothermovieList: null == trendinganothermovieList
          ? _value._trendinganothermovieList
          : trendinganothermovieList // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      topratedtvlist: null == topratedtvlist
          ? _value._topratedtvlist
          : topratedtvlist // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.stateId,
      required final List<HomeData> pastyearMovieList,
      required final List<HomeData> trendingMovieList,
      required final List<HomeData> tenseDramasMovieList,
      required final List<HomeData> globalMovieList,
      required final List<HomeData> trendinganothermovieList,
      required final List<HomeData> topratedtvlist,
      required this.isLoading,
      required this.hasError})
      : _pastyearMovieList = pastyearMovieList,
        _trendingMovieList = trendingMovieList,
        _tenseDramasMovieList = tenseDramasMovieList,
        _globalMovieList = globalMovieList,
        _trendinganothermovieList = trendinganothermovieList,
        _topratedtvlist = topratedtvlist;

  @override
  final String stateId;
  final List<HomeData> _pastyearMovieList;
  @override
  List<HomeData> get pastyearMovieList {
    if (_pastyearMovieList is EqualUnmodifiableListView)
      return _pastyearMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastyearMovieList);
  }

  final List<HomeData> _trendingMovieList;
  @override
  List<HomeData> get trendingMovieList {
    if (_trendingMovieList is EqualUnmodifiableListView)
      return _trendingMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovieList);
  }

  final List<HomeData> _tenseDramasMovieList;
  @override
  List<HomeData> get tenseDramasMovieList {
    if (_tenseDramasMovieList is EqualUnmodifiableListView)
      return _tenseDramasMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramasMovieList);
  }

  final List<HomeData> _globalMovieList;
  @override
  List<HomeData> get globalMovieList {
    if (_globalMovieList is EqualUnmodifiableListView) return _globalMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_globalMovieList);
  }

  final List<HomeData> _trendinganothermovieList;
  @override
  List<HomeData> get trendinganothermovieList {
    if (_trendinganothermovieList is EqualUnmodifiableListView)
      return _trendinganothermovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendinganothermovieList);
  }

  final List<HomeData> _topratedtvlist;
  @override
  List<HomeData> get topratedtvlist {
    if (_topratedtvlist is EqualUnmodifiableListView) return _topratedtvlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topratedtvlist);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, pastyearMovieList: $pastyearMovieList, trendingMovieList: $trendingMovieList, tenseDramasMovieList: $tenseDramasMovieList, globalMovieList: $globalMovieList, trendinganothermovieList: $trendinganothermovieList, topratedtvlist: $topratedtvlist, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality()
                .equals(other._pastyearMovieList, _pastyearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingMovieList, _trendingMovieList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramasMovieList, _tenseDramasMovieList) &&
            const DeepCollectionEquality()
                .equals(other._globalMovieList, _globalMovieList) &&
            const DeepCollectionEquality().equals(
                other._trendinganothermovieList, _trendinganothermovieList) &&
            const DeepCollectionEquality()
                .equals(other._topratedtvlist, _topratedtvlist) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_pastyearMovieList),
      const DeepCollectionEquality().hash(_trendingMovieList),
      const DeepCollectionEquality().hash(_tenseDramasMovieList),
      const DeepCollectionEquality().hash(_globalMovieList),
      const DeepCollectionEquality().hash(_trendinganothermovieList),
      const DeepCollectionEquality().hash(_topratedtvlist),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<HomeData> pastyearMovieList,
      required final List<HomeData> trendingMovieList,
      required final List<HomeData> tenseDramasMovieList,
      required final List<HomeData> globalMovieList,
      required final List<HomeData> trendinganothermovieList,
      required final List<HomeData> topratedtvlist,
      required final bool isLoading,
      required final bool hasError}) = _$InitialImpl;

  @override
  String get stateId;
  @override
  List<HomeData> get pastyearMovieList;
  @override
  List<HomeData> get trendingMovieList;
  @override
  List<HomeData> get tenseDramasMovieList;
  @override
  List<HomeData> get globalMovieList;
  @override
  List<HomeData> get trendinganothermovieList;
  @override
  List<HomeData> get topratedtvlist;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
