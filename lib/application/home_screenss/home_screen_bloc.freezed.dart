// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  List<QuestionDbModel> get questionList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuestionDbModel> questionList)
        homeEventStarted,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        onAnswerSelected,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        nextQuestionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventStarted value) homeEventStarted,
    required TResult Function(OnAnswerSelected value) onAnswerSelected,
    required TResult Function(NextQuestionEvent value) nextQuestionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventStarted value)? homeEventStarted,
    TResult? Function(OnAnswerSelected value)? onAnswerSelected,
    TResult? Function(NextQuestionEvent value)? nextQuestionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventStarted value)? homeEventStarted,
    TResult Function(OnAnswerSelected value)? onAnswerSelected,
    TResult Function(NextQuestionEvent value)? nextQuestionEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenEventCopyWith<HomeScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
  @useResult
  $Res call({List<QuestionDbModel> questionList});
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
  }) {
    return _then(_value.copyWith(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionDbModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeEventStartedImplCopyWith<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  factory _$$HomeEventStartedImplCopyWith(_$HomeEventStartedImpl value,
          $Res Function(_$HomeEventStartedImpl) then) =
      __$$HomeEventStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionDbModel> questionList});
}

/// @nodoc
class __$$HomeEventStartedImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$HomeEventStartedImpl>
    implements _$$HomeEventStartedImplCopyWith<$Res> {
  __$$HomeEventStartedImplCopyWithImpl(_$HomeEventStartedImpl _value,
      $Res Function(_$HomeEventStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
  }) {
    return _then(_$HomeEventStartedImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionDbModel>,
    ));
  }
}

/// @nodoc

class _$HomeEventStartedImpl
    with DiagnosticableTreeMixin
    implements HomeEventStarted {
  const _$HomeEventStartedImpl(
      {required final List<QuestionDbModel> questionList})
      : _questionList = questionList;

  final List<QuestionDbModel> _questionList;
  @override
  List<QuestionDbModel> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.homeEventStarted(questionList: $questionList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.homeEventStarted'))
      ..add(DiagnosticsProperty('questionList', questionList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventStartedImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventStartedImplCopyWith<_$HomeEventStartedImpl> get copyWith =>
      __$$HomeEventStartedImplCopyWithImpl<_$HomeEventStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuestionDbModel> questionList)
        homeEventStarted,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        onAnswerSelected,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        nextQuestionEvent,
  }) {
    return homeEventStarted(questionList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
  }) {
    return homeEventStarted?.call(questionList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
    required TResult orElse(),
  }) {
    if (homeEventStarted != null) {
      return homeEventStarted(questionList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventStarted value) homeEventStarted,
    required TResult Function(OnAnswerSelected value) onAnswerSelected,
    required TResult Function(NextQuestionEvent value) nextQuestionEvent,
  }) {
    return homeEventStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventStarted value)? homeEventStarted,
    TResult? Function(OnAnswerSelected value)? onAnswerSelected,
    TResult? Function(NextQuestionEvent value)? nextQuestionEvent,
  }) {
    return homeEventStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventStarted value)? homeEventStarted,
    TResult Function(OnAnswerSelected value)? onAnswerSelected,
    TResult Function(NextQuestionEvent value)? nextQuestionEvent,
    required TResult orElse(),
  }) {
    if (homeEventStarted != null) {
      return homeEventStarted(this);
    }
    return orElse();
  }
}

abstract class HomeEventStarted implements HomeScreenEvent {
  const factory HomeEventStarted(
          {required final List<QuestionDbModel> questionList}) =
      _$HomeEventStartedImpl;

  @override
  List<QuestionDbModel> get questionList;
  @override
  @JsonKey(ignore: true)
  _$$HomeEventStartedImplCopyWith<_$HomeEventStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAnswerSelectedImplCopyWith<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  factory _$$OnAnswerSelectedImplCopyWith(_$OnAnswerSelectedImpl value,
          $Res Function(_$OnAnswerSelectedImpl) then) =
      __$$OnAnswerSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionDbModel> questionList, int selectedOptionIntex});
}

/// @nodoc
class __$$OnAnswerSelectedImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$OnAnswerSelectedImpl>
    implements _$$OnAnswerSelectedImplCopyWith<$Res> {
  __$$OnAnswerSelectedImplCopyWithImpl(_$OnAnswerSelectedImpl _value,
      $Res Function(_$OnAnswerSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? selectedOptionIntex = null,
  }) {
    return _then(_$OnAnswerSelectedImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionDbModel>,
      selectedOptionIntex: null == selectedOptionIntex
          ? _value.selectedOptionIntex
          : selectedOptionIntex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnAnswerSelectedImpl
    with DiagnosticableTreeMixin
    implements OnAnswerSelected {
  const _$OnAnswerSelectedImpl(
      {required final List<QuestionDbModel> questionList,
      required this.selectedOptionIntex})
      : _questionList = questionList;

  final List<QuestionDbModel> _questionList;
  @override
  List<QuestionDbModel> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  final int selectedOptionIntex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.onAnswerSelected(questionList: $questionList, selectedOptionIntex: $selectedOptionIntex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.onAnswerSelected'))
      ..add(DiagnosticsProperty('questionList', questionList))
      ..add(DiagnosticsProperty('selectedOptionIntex', selectedOptionIntex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAnswerSelectedImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            (identical(other.selectedOptionIntex, selectedOptionIntex) ||
                other.selectedOptionIntex == selectedOptionIntex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questionList), selectedOptionIntex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAnswerSelectedImplCopyWith<_$OnAnswerSelectedImpl> get copyWith =>
      __$$OnAnswerSelectedImplCopyWithImpl<_$OnAnswerSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuestionDbModel> questionList)
        homeEventStarted,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        onAnswerSelected,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        nextQuestionEvent,
  }) {
    return onAnswerSelected(questionList, selectedOptionIntex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
  }) {
    return onAnswerSelected?.call(questionList, selectedOptionIntex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
    required TResult orElse(),
  }) {
    if (onAnswerSelected != null) {
      return onAnswerSelected(questionList, selectedOptionIntex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventStarted value) homeEventStarted,
    required TResult Function(OnAnswerSelected value) onAnswerSelected,
    required TResult Function(NextQuestionEvent value) nextQuestionEvent,
  }) {
    return onAnswerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventStarted value)? homeEventStarted,
    TResult? Function(OnAnswerSelected value)? onAnswerSelected,
    TResult? Function(NextQuestionEvent value)? nextQuestionEvent,
  }) {
    return onAnswerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventStarted value)? homeEventStarted,
    TResult Function(OnAnswerSelected value)? onAnswerSelected,
    TResult Function(NextQuestionEvent value)? nextQuestionEvent,
    required TResult orElse(),
  }) {
    if (onAnswerSelected != null) {
      return onAnswerSelected(this);
    }
    return orElse();
  }
}

abstract class OnAnswerSelected implements HomeScreenEvent {
  const factory OnAnswerSelected(
      {required final List<QuestionDbModel> questionList,
      required final int selectedOptionIntex}) = _$OnAnswerSelectedImpl;

  @override
  List<QuestionDbModel> get questionList;
  int get selectedOptionIntex;
  @override
  @JsonKey(ignore: true)
  _$$OnAnswerSelectedImplCopyWith<_$OnAnswerSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextQuestionEventImplCopyWith<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  factory _$$NextQuestionEventImplCopyWith(_$NextQuestionEventImpl value,
          $Res Function(_$NextQuestionEventImpl) then) =
      __$$NextQuestionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionDbModel> questionList, int selectedOptionIntex});
}

/// @nodoc
class __$$NextQuestionEventImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$NextQuestionEventImpl>
    implements _$$NextQuestionEventImplCopyWith<$Res> {
  __$$NextQuestionEventImplCopyWithImpl(_$NextQuestionEventImpl _value,
      $Res Function(_$NextQuestionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? selectedOptionIntex = null,
  }) {
    return _then(_$NextQuestionEventImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionDbModel>,
      selectedOptionIntex: null == selectedOptionIntex
          ? _value.selectedOptionIntex
          : selectedOptionIntex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NextQuestionEventImpl
    with DiagnosticableTreeMixin
    implements NextQuestionEvent {
  const _$NextQuestionEventImpl(
      {required final List<QuestionDbModel> questionList,
      required this.selectedOptionIntex})
      : _questionList = questionList;

  final List<QuestionDbModel> _questionList;
  @override
  List<QuestionDbModel> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  final int selectedOptionIntex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenEvent.nextQuestionEvent(questionList: $questionList, selectedOptionIntex: $selectedOptionIntex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenEvent.nextQuestionEvent'))
      ..add(DiagnosticsProperty('questionList', questionList))
      ..add(DiagnosticsProperty('selectedOptionIntex', selectedOptionIntex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextQuestionEventImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            (identical(other.selectedOptionIntex, selectedOptionIntex) ||
                other.selectedOptionIntex == selectedOptionIntex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questionList), selectedOptionIntex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextQuestionEventImplCopyWith<_$NextQuestionEventImpl> get copyWith =>
      __$$NextQuestionEventImplCopyWithImpl<_$NextQuestionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QuestionDbModel> questionList)
        homeEventStarted,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        onAnswerSelected,
    required TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)
        nextQuestionEvent,
  }) {
    return nextQuestionEvent(questionList, selectedOptionIntex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult? Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
  }) {
    return nextQuestionEvent?.call(questionList, selectedOptionIntex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QuestionDbModel> questionList)? homeEventStarted,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        onAnswerSelected,
    TResult Function(
            List<QuestionDbModel> questionList, int selectedOptionIntex)?
        nextQuestionEvent,
    required TResult orElse(),
  }) {
    if (nextQuestionEvent != null) {
      return nextQuestionEvent(questionList, selectedOptionIntex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventStarted value) homeEventStarted,
    required TResult Function(OnAnswerSelected value) onAnswerSelected,
    required TResult Function(NextQuestionEvent value) nextQuestionEvent,
  }) {
    return nextQuestionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventStarted value)? homeEventStarted,
    TResult? Function(OnAnswerSelected value)? onAnswerSelected,
    TResult? Function(NextQuestionEvent value)? nextQuestionEvent,
  }) {
    return nextQuestionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventStarted value)? homeEventStarted,
    TResult Function(OnAnswerSelected value)? onAnswerSelected,
    TResult Function(NextQuestionEvent value)? nextQuestionEvent,
    required TResult orElse(),
  }) {
    if (nextQuestionEvent != null) {
      return nextQuestionEvent(this);
    }
    return orElse();
  }
}

abstract class NextQuestionEvent implements HomeScreenEvent {
  const factory NextQuestionEvent(
      {required final List<QuestionDbModel> questionList,
      required final int selectedOptionIntex}) = _$NextQuestionEventImpl;

  @override
  List<QuestionDbModel> get questionList;
  int get selectedOptionIntex;
  @override
  @JsonKey(ignore: true)
  _$$NextQuestionEventImplCopyWith<_$NextQuestionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  List<QuestionDbModel> get questionList => throw _privateConstructorUsedError;
  int get selectedAnswerIndex => throw _privateConstructorUsedError;
  int get correctAnswerCount => throw _privateConstructorUsedError;
  bool get isDataLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  int get totalNumberOfQuestion => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<QuestionDbModel> questionList,
            int selectedAnswerIndex,
            int correctAnswerCount,
            bool isDataLoading,
            bool isError,
            int totalNumberOfQuestion)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<QuestionDbModel> questionList,
            int selectedAnswerIndex,
            int correctAnswerCount,
            bool isDataLoading,
            bool isError,
            int totalNumberOfQuestion)?
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<QuestionDbModel> questionList,
            int selectedAnswerIndex,
            int correctAnswerCount,
            bool isDataLoading,
            bool isError,
            int totalNumberOfQuestion)?
        started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {List<QuestionDbModel> questionList,
      int selectedAnswerIndex,
      int correctAnswerCount,
      bool isDataLoading,
      bool isError,
      int totalNumberOfQuestion});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? selectedAnswerIndex = null,
    Object? correctAnswerCount = null,
    Object? isDataLoading = null,
    Object? isError = null,
    Object? totalNumberOfQuestion = null,
  }) {
    return _then(_value.copyWith(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionDbModel>,
      selectedAnswerIndex: null == selectedAnswerIndex
          ? _value.selectedAnswerIndex
          : selectedAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswerCount: null == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
      isDataLoading: null == isDataLoading
          ? _value.isDataLoading
          : isDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      totalNumberOfQuestion: null == totalNumberOfQuestion
          ? _value.totalNumberOfQuestion
          : totalNumberOfQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuestionDbModel> questionList,
      int selectedAnswerIndex,
      int correctAnswerCount,
      bool isDataLoading,
      bool isError,
      int totalNumberOfQuestion});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? selectedAnswerIndex = null,
    Object? correctAnswerCount = null,
    Object? isDataLoading = null,
    Object? isError = null,
    Object? totalNumberOfQuestion = null,
  }) {
    return _then(_$StartedImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionDbModel>,
      selectedAnswerIndex: null == selectedAnswerIndex
          ? _value.selectedAnswerIndex
          : selectedAnswerIndex // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswerCount: null == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int,
      isDataLoading: null == isDataLoading
          ? _value.isDataLoading
          : isDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      totalNumberOfQuestion: null == totalNumberOfQuestion
          ? _value.totalNumberOfQuestion
          : totalNumberOfQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements Started {
  const _$StartedImpl(
      {required final List<QuestionDbModel> questionList,
      required this.selectedAnswerIndex,
      required this.correctAnswerCount,
      required this.isDataLoading,
      required this.isError,
      required this.totalNumberOfQuestion})
      : _questionList = questionList;

  final List<QuestionDbModel> _questionList;
  @override
  List<QuestionDbModel> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  final int selectedAnswerIndex;
  @override
  final int correctAnswerCount;
  @override
  final bool isDataLoading;
  @override
  final bool isError;
  @override
  final int totalNumberOfQuestion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.started(questionList: $questionList, selectedAnswerIndex: $selectedAnswerIndex, correctAnswerCount: $correctAnswerCount, isDataLoading: $isDataLoading, isError: $isError, totalNumberOfQuestion: $totalNumberOfQuestion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenState.started'))
      ..add(DiagnosticsProperty('questionList', questionList))
      ..add(DiagnosticsProperty('selectedAnswerIndex', selectedAnswerIndex))
      ..add(DiagnosticsProperty('correctAnswerCount', correctAnswerCount))
      ..add(DiagnosticsProperty('isDataLoading', isDataLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(
          DiagnosticsProperty('totalNumberOfQuestion', totalNumberOfQuestion));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            (identical(other.selectedAnswerIndex, selectedAnswerIndex) ||
                other.selectedAnswerIndex == selectedAnswerIndex) &&
            (identical(other.correctAnswerCount, correctAnswerCount) ||
                other.correctAnswerCount == correctAnswerCount) &&
            (identical(other.isDataLoading, isDataLoading) ||
                other.isDataLoading == isDataLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.totalNumberOfQuestion, totalNumberOfQuestion) ||
                other.totalNumberOfQuestion == totalNumberOfQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questionList),
      selectedAnswerIndex,
      correctAnswerCount,
      isDataLoading,
      isError,
      totalNumberOfQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<QuestionDbModel> questionList,
            int selectedAnswerIndex,
            int correctAnswerCount,
            bool isDataLoading,
            bool isError,
            int totalNumberOfQuestion)
        started,
  }) {
    return started(questionList, selectedAnswerIndex, correctAnswerCount,
        isDataLoading, isError, totalNumberOfQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<QuestionDbModel> questionList,
            int selectedAnswerIndex,
            int correctAnswerCount,
            bool isDataLoading,
            bool isError,
            int totalNumberOfQuestion)?
        started,
  }) {
    return started?.call(questionList, selectedAnswerIndex, correctAnswerCount,
        isDataLoading, isError, totalNumberOfQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<QuestionDbModel> questionList,
            int selectedAnswerIndex,
            int correctAnswerCount,
            bool isDataLoading,
            bool isError,
            int totalNumberOfQuestion)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(questionList, selectedAnswerIndex, correctAnswerCount,
          isDataLoading, isError, totalNumberOfQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements HomeScreenState {
  const factory Started(
      {required final List<QuestionDbModel> questionList,
      required final int selectedAnswerIndex,
      required final int correctAnswerCount,
      required final bool isDataLoading,
      required final bool isError,
      required final int totalNumberOfQuestion}) = _$StartedImpl;

  @override
  List<QuestionDbModel> get questionList;
  @override
  int get selectedAnswerIndex;
  @override
  int get correctAnswerCount;
  @override
  bool get isDataLoading;
  @override
  bool get isError;
  @override
  int get totalNumberOfQuestion;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
