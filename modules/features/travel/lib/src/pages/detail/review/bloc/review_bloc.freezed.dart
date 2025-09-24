// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewState implements DiagnosticableTreeMixin {

 List<ReviewModel> get reviews; bool get isLoading; int? get contentId; int? get currentUserRate; Map<int, int>? get ratingCounts; bool get reviewSending; bool get sendingComplete;
/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewStateCopyWith<ReviewState> get copyWith => _$ReviewStateCopyWithImpl<ReviewState>(this as ReviewState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewState'))
    ..add(DiagnosticsProperty('reviews', reviews))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('contentId', contentId))..add(DiagnosticsProperty('currentUserRate', currentUserRate))..add(DiagnosticsProperty('ratingCounts', ratingCounts))..add(DiagnosticsProperty('reviewSending', reviewSending))..add(DiagnosticsProperty('sendingComplete', sendingComplete));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewState&&const DeepCollectionEquality().equals(other.reviews, reviews)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.currentUserRate, currentUserRate) || other.currentUserRate == currentUserRate)&&const DeepCollectionEquality().equals(other.ratingCounts, ratingCounts)&&(identical(other.reviewSending, reviewSending) || other.reviewSending == reviewSending)&&(identical(other.sendingComplete, sendingComplete) || other.sendingComplete == sendingComplete));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(reviews),isLoading,contentId,currentUserRate,const DeepCollectionEquality().hash(ratingCounts),reviewSending,sendingComplete);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewState(reviews: $reviews, isLoading: $isLoading, contentId: $contentId, currentUserRate: $currentUserRate, ratingCounts: $ratingCounts, reviewSending: $reviewSending, sendingComplete: $sendingComplete)';
}


}

/// @nodoc
abstract mixin class $ReviewStateCopyWith<$Res>  {
  factory $ReviewStateCopyWith(ReviewState value, $Res Function(ReviewState) _then) = _$ReviewStateCopyWithImpl;
@useResult
$Res call({
 List<ReviewModel> reviews, bool isLoading, int? contentId, int? currentUserRate, Map<int, int>? ratingCounts, bool reviewSending, bool sendingComplete
});




}
/// @nodoc
class _$ReviewStateCopyWithImpl<$Res>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._self, this._then);

  final ReviewState _self;
  final $Res Function(ReviewState) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviews = null,Object? isLoading = null,Object? contentId = freezed,Object? currentUserRate = freezed,Object? ratingCounts = freezed,Object? reviewSending = null,Object? sendingComplete = null,}) {
  return _then(_self.copyWith(
reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int?,currentUserRate: freezed == currentUserRate ? _self.currentUserRate : currentUserRate // ignore: cast_nullable_to_non_nullable
as int?,ratingCounts: freezed == ratingCounts ? _self.ratingCounts : ratingCounts // ignore: cast_nullable_to_non_nullable
as Map<int, int>?,reviewSending: null == reviewSending ? _self.reviewSending : reviewSending // ignore: cast_nullable_to_non_nullable
as bool,sendingComplete: null == sendingComplete ? _self.sendingComplete : sendingComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewState].
extension ReviewStatePatterns on ReviewState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( ReviewDataState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReviewDataState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( ReviewDataState value)  $default,){
final _that = this;
switch (_that) {
case ReviewDataState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( ReviewDataState value)?  $default,){
final _that = this;
switch (_that) {
case ReviewDataState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReviewModel> reviews,  bool isLoading,  int? contentId,  int? currentUserRate,  Map<int, int>? ratingCounts,  bool reviewSending,  bool sendingComplete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReviewDataState() when $default != null:
return $default(_that.reviews,_that.isLoading,_that.contentId,_that.currentUserRate,_that.ratingCounts,_that.reviewSending,_that.sendingComplete);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReviewModel> reviews,  bool isLoading,  int? contentId,  int? currentUserRate,  Map<int, int>? ratingCounts,  bool reviewSending,  bool sendingComplete)  $default,) {final _that = this;
switch (_that) {
case ReviewDataState():
return $default(_that.reviews,_that.isLoading,_that.contentId,_that.currentUserRate,_that.ratingCounts,_that.reviewSending,_that.sendingComplete);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReviewModel> reviews,  bool isLoading,  int? contentId,  int? currentUserRate,  Map<int, int>? ratingCounts,  bool reviewSending,  bool sendingComplete)?  $default,) {final _that = this;
switch (_that) {
case ReviewDataState() when $default != null:
return $default(_that.reviews,_that.isLoading,_that.contentId,_that.currentUserRate,_that.ratingCounts,_that.reviewSending,_that.sendingComplete);case _:
  return null;

}
}

}

/// @nodoc


class ReviewDataState with DiagnosticableTreeMixin implements ReviewState {
  const ReviewDataState({final  List<ReviewModel> reviews = const [], this.isLoading = true, this.contentId, this.currentUserRate, final  Map<int, int>? ratingCounts, this.reviewSending = false, this.sendingComplete = false}): _reviews = reviews,_ratingCounts = ratingCounts;
  

 final  List<ReviewModel> _reviews;
@override@JsonKey() List<ReviewModel> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override@JsonKey() final  bool isLoading;
@override final  int? contentId;
@override final  int? currentUserRate;
 final  Map<int, int>? _ratingCounts;
@override Map<int, int>? get ratingCounts {
  final value = _ratingCounts;
  if (value == null) return null;
  if (_ratingCounts is EqualUnmodifiableMapView) return _ratingCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  bool reviewSending;
@override@JsonKey() final  bool sendingComplete;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDataStateCopyWith<ReviewDataState> get copyWith => _$ReviewDataStateCopyWithImpl<ReviewDataState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewState'))
    ..add(DiagnosticsProperty('reviews', reviews))..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('contentId', contentId))..add(DiagnosticsProperty('currentUserRate', currentUserRate))..add(DiagnosticsProperty('ratingCounts', ratingCounts))..add(DiagnosticsProperty('reviewSending', reviewSending))..add(DiagnosticsProperty('sendingComplete', sendingComplete));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDataState&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.currentUserRate, currentUserRate) || other.currentUserRate == currentUserRate)&&const DeepCollectionEquality().equals(other._ratingCounts, _ratingCounts)&&(identical(other.reviewSending, reviewSending) || other.reviewSending == reviewSending)&&(identical(other.sendingComplete, sendingComplete) || other.sendingComplete == sendingComplete));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reviews),isLoading,contentId,currentUserRate,const DeepCollectionEquality().hash(_ratingCounts),reviewSending,sendingComplete);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewState(reviews: $reviews, isLoading: $isLoading, contentId: $contentId, currentUserRate: $currentUserRate, ratingCounts: $ratingCounts, reviewSending: $reviewSending, sendingComplete: $sendingComplete)';
}


}

/// @nodoc
abstract mixin class $ReviewDataStateCopyWith<$Res> implements $ReviewStateCopyWith<$Res> {
  factory $ReviewDataStateCopyWith(ReviewDataState value, $Res Function(ReviewDataState) _then) = _$ReviewDataStateCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewModel> reviews, bool isLoading, int? contentId, int? currentUserRate, Map<int, int>? ratingCounts, bool reviewSending, bool sendingComplete
});




}
/// @nodoc
class _$ReviewDataStateCopyWithImpl<$Res>
    implements $ReviewDataStateCopyWith<$Res> {
  _$ReviewDataStateCopyWithImpl(this._self, this._then);

  final ReviewDataState _self;
  final $Res Function(ReviewDataState) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviews = null,Object? isLoading = null,Object? contentId = freezed,Object? currentUserRate = freezed,Object? ratingCounts = freezed,Object? reviewSending = null,Object? sendingComplete = null,}) {
  return _then(ReviewDataState(
reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,contentId: freezed == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int?,currentUserRate: freezed == currentUserRate ? _self.currentUserRate : currentUserRate // ignore: cast_nullable_to_non_nullable
as int?,ratingCounts: freezed == ratingCounts ? _self._ratingCounts : ratingCounts // ignore: cast_nullable_to_non_nullable
as Map<int, int>?,reviewSending: null == reviewSending ? _self.reviewSending : reviewSending // ignore: cast_nullable_to_non_nullable
as bool,sendingComplete: null == sendingComplete ? _self.sendingComplete : sendingComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ReviewEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewEvent()';
}


}

/// @nodoc
class $ReviewEventCopyWith<$Res>  {
$ReviewEventCopyWith(ReviewEvent _, $Res Function(ReviewEvent) __);
}


/// Adds pattern-matching-related methods to [ReviewEvent].
extension ReviewEventPatterns on ReviewEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendReviewEvent value)?  sendReview,TResult Function( ReviewsByContentIdEvent value)?  loadReviewsByContentId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendReviewEvent() when sendReview != null:
return sendReview(_that);case ReviewsByContentIdEvent() when loadReviewsByContentId != null:
return loadReviewsByContentId(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendReviewEvent value)  sendReview,required TResult Function( ReviewsByContentIdEvent value)  loadReviewsByContentId,}){
final _that = this;
switch (_that) {
case SendReviewEvent():
return sendReview(_that);case ReviewsByContentIdEvent():
return loadReviewsByContentId(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendReviewEvent value)?  sendReview,TResult? Function( ReviewsByContentIdEvent value)?  loadReviewsByContentId,}){
final _that = this;
switch (_that) {
case SendReviewEvent() when sendReview != null:
return sendReview(_that);case ReviewsByContentIdEvent() when loadReviewsByContentId != null:
return loadReviewsByContentId(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String comment,  int rate)?  sendReview,TResult Function( int contentId)?  loadReviewsByContentId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SendReviewEvent() when sendReview != null:
return sendReview(_that.comment,_that.rate);case ReviewsByContentIdEvent() when loadReviewsByContentId != null:
return loadReviewsByContentId(_that.contentId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String comment,  int rate)  sendReview,required TResult Function( int contentId)  loadReviewsByContentId,}) {final _that = this;
switch (_that) {
case SendReviewEvent():
return sendReview(_that.comment,_that.rate);case ReviewsByContentIdEvent():
return loadReviewsByContentId(_that.contentId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String comment,  int rate)?  sendReview,TResult? Function( int contentId)?  loadReviewsByContentId,}) {final _that = this;
switch (_that) {
case SendReviewEvent() when sendReview != null:
return sendReview(_that.comment,_that.rate);case ReviewsByContentIdEvent() when loadReviewsByContentId != null:
return loadReviewsByContentId(_that.contentId);case _:
  return null;

}
}

}

/// @nodoc


class SendReviewEvent with DiagnosticableTreeMixin implements ReviewEvent {
  const SendReviewEvent({required this.comment, required this.rate});
  

 final  String comment;
 final  int rate;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendReviewEventCopyWith<SendReviewEvent> get copyWith => _$SendReviewEventCopyWithImpl<SendReviewEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewEvent.sendReview'))
    ..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('rate', rate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendReviewEvent&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,comment,rate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewEvent.sendReview(comment: $comment, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $SendReviewEventCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory $SendReviewEventCopyWith(SendReviewEvent value, $Res Function(SendReviewEvent) _then) = _$SendReviewEventCopyWithImpl;
@useResult
$Res call({
 String comment, int rate
});




}
/// @nodoc
class _$SendReviewEventCopyWithImpl<$Res>
    implements $SendReviewEventCopyWith<$Res> {
  _$SendReviewEventCopyWithImpl(this._self, this._then);

  final SendReviewEvent _self;
  final $Res Function(SendReviewEvent) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? rate = null,}) {
  return _then(SendReviewEvent(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ReviewsByContentIdEvent with DiagnosticableTreeMixin implements ReviewEvent {
  const ReviewsByContentIdEvent({required this.contentId});
  

 final  int contentId;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsByContentIdEventCopyWith<ReviewsByContentIdEvent> get copyWith => _$ReviewsByContentIdEventCopyWithImpl<ReviewsByContentIdEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewEvent.loadReviewsByContentId'))
    ..add(DiagnosticsProperty('contentId', contentId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsByContentIdEvent&&(identical(other.contentId, contentId) || other.contentId == contentId));
}


@override
int get hashCode => Object.hash(runtimeType,contentId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewEvent.loadReviewsByContentId(contentId: $contentId)';
}


}

/// @nodoc
abstract mixin class $ReviewsByContentIdEventCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory $ReviewsByContentIdEventCopyWith(ReviewsByContentIdEvent value, $Res Function(ReviewsByContentIdEvent) _then) = _$ReviewsByContentIdEventCopyWithImpl;
@useResult
$Res call({
 int contentId
});




}
/// @nodoc
class _$ReviewsByContentIdEventCopyWithImpl<$Res>
    implements $ReviewsByContentIdEventCopyWith<$Res> {
  _$ReviewsByContentIdEventCopyWithImpl(this._self, this._then);

  final ReviewsByContentIdEvent _self;
  final $Res Function(ReviewsByContentIdEvent) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contentId = null,}) {
  return _then(ReviewsByContentIdEvent(
contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
