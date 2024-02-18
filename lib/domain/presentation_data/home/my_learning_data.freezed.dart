// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_learning_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyLearningData {
  List<CourseEntity> get allCoursesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyLearningDataCopyWith<MyLearningData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLearningDataCopyWith<$Res> {
  factory $MyLearningDataCopyWith(
          MyLearningData value, $Res Function(MyLearningData) then) =
      _$MyLearningDataCopyWithImpl<$Res, MyLearningData>;
  @useResult
  $Res call({List<CourseEntity> allCoursesList});
}

/// @nodoc
class _$MyLearningDataCopyWithImpl<$Res, $Val extends MyLearningData>
    implements $MyLearningDataCopyWith<$Res> {
  _$MyLearningDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCoursesList = null,
  }) {
    return _then(_value.copyWith(
      allCoursesList: null == allCoursesList
          ? _value.allCoursesList
          : allCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyLearningDataImplCopyWith<$Res>
    implements $MyLearningDataCopyWith<$Res> {
  factory _$$MyLearningDataImplCopyWith(_$MyLearningDataImpl value,
          $Res Function(_$MyLearningDataImpl) then) =
      __$$MyLearningDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseEntity> allCoursesList});
}

/// @nodoc
class __$$MyLearningDataImplCopyWithImpl<$Res>
    extends _$MyLearningDataCopyWithImpl<$Res, _$MyLearningDataImpl>
    implements _$$MyLearningDataImplCopyWith<$Res> {
  __$$MyLearningDataImplCopyWithImpl(
      _$MyLearningDataImpl _value, $Res Function(_$MyLearningDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCoursesList = null,
  }) {
    return _then(_$MyLearningDataImpl(
      allCoursesList: null == allCoursesList
          ? _value._allCoursesList
          : allCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
    ));
  }
}

/// @nodoc

class _$MyLearningDataImpl extends _MyLearningData {
  _$MyLearningDataImpl({required final List<CourseEntity> allCoursesList})
      : _allCoursesList = allCoursesList,
        super._();

  final List<CourseEntity> _allCoursesList;
  @override
  List<CourseEntity> get allCoursesList {
    if (_allCoursesList is EqualUnmodifiableListView) return _allCoursesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCoursesList);
  }

  @override
  String toString() {
    return 'MyLearningData(allCoursesList: $allCoursesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLearningDataImpl &&
            const DeepCollectionEquality()
                .equals(other._allCoursesList, _allCoursesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCoursesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLearningDataImplCopyWith<_$MyLearningDataImpl> get copyWith =>
      __$$MyLearningDataImplCopyWithImpl<_$MyLearningDataImpl>(
          this, _$identity);
}

abstract class _MyLearningData extends MyLearningData {
  factory _MyLearningData({required final List<CourseEntity> allCoursesList}) =
      _$MyLearningDataImpl;
  _MyLearningData._() : super._();

  @override
  List<CourseEntity> get allCoursesList;
  @override
  @JsonKey(ignore: true)
  _$$MyLearningDataImplCopyWith<_$MyLearningDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
