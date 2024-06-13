// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ClientWantsToLogIn':
      return ClientWantsToLogIn.fromJson(json);
    case 'ClientWantsHistory':
      return ClientWantsHistory.fromJson(json);
    case 'ClientWantsCurrentFountainState':
      return ClientWantsCurrentFountainState.fromJson(json);
    case 'ClientWantsToTurnOnFountain':
      return ClientWantsToTurnOnFountain.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'ClientEvent',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$ClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventCopyWith<$Res> {
  factory $ClientEventCopyWith(
          ClientEvent value, $Res Function(ClientEvent) then) =
      _$ClientEventCopyWithImpl<$Res, ClientEvent>;
}

/// @nodoc
class _$ClientEventCopyWithImpl<$Res, $Val extends ClientEvent>
    implements $ClientEventCopyWith<$Res> {
  _$ClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientWantsToLogInImplCopyWith<$Res> {
  factory _$$ClientWantsToLogInImplCopyWith(_$ClientWantsToLogInImpl value,
          $Res Function(_$ClientWantsToLogInImpl) then) =
      __$$ClientWantsToLogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$ClientWantsToLogInImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToLogInImpl>
    implements _$$ClientWantsToLogInImplCopyWith<$Res> {
  __$$ClientWantsToLogInImplCopyWithImpl(_$ClientWantsToLogInImpl _value,
      $Res Function(_$ClientWantsToLogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$ClientWantsToLogInImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLogInImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToLogIn {
  _$ClientWantsToLogInImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password,
      final String? $type})
      : $type = $type ?? 'ClientWantsToLogIn';

  factory _$ClientWantsToLogInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogInImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToLogIn(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToLogIn'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogInImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogInImplCopyWith<_$ClientWantsToLogInImpl> get copyWith =>
      __$$ClientWantsToLogInImplCopyWithImpl<_$ClientWantsToLogInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToLogIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToLogIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToLogIn != null) {
      return clientWantsToLogIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToLogIn != null) {
      return clientWantsToLogIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLogInImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToLogIn implements ClientEvent {
  factory ClientWantsToLogIn(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$ClientWantsToLogInImpl;

  factory ClientWantsToLogIn.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogInImpl.fromJson;

  @JsonKey(name: 'username')
  String get username;
  @JsonKey(name: 'password')
  String get password;
  @JsonKey(ignore: true)
  _$$ClientWantsToLogInImplCopyWith<_$ClientWantsToLogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsHistoryImplCopyWith<$Res> {
  factory _$$ClientWantsHistoryImplCopyWith(_$ClientWantsHistoryImpl value,
          $Res Function(_$ClientWantsHistoryImpl) then) =
      __$$ClientWantsHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientWantsHistoryImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsHistoryImpl>
    implements _$$ClientWantsHistoryImplCopyWith<$Res> {
  __$$ClientWantsHistoryImplCopyWithImpl(_$ClientWantsHistoryImpl _value,
      $Res Function(_$ClientWantsHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsHistoryImpl
    with DiagnosticableTreeMixin
    implements ClientWantsHistory {
  _$ClientWantsHistoryImpl({final String? $type})
      : $type = $type ?? 'ClientWantsHistory';

  factory _$ClientWantsHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsHistoryImplFromJson(json);

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsHistory()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ClientEvent.clientWantsHistory'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientWantsHistoryImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsHistory != null) {
      return clientWantsHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsHistory != null) {
      return clientWantsHistory(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsHistoryImplToJson(
      this,
    );
  }
}

abstract class ClientWantsHistory implements ClientEvent {
  factory ClientWantsHistory() = _$ClientWantsHistoryImpl;

  factory ClientWantsHistory.fromJson(Map<String, dynamic> json) =
      _$ClientWantsHistoryImpl.fromJson;
}

/// @nodoc
abstract class _$$ClientWantsCurrentFountainStateImplCopyWith<$Res> {
  factory _$$ClientWantsCurrentFountainStateImplCopyWith(
          _$ClientWantsCurrentFountainStateImpl value,
          $Res Function(_$ClientWantsCurrentFountainStateImpl) then) =
      __$$ClientWantsCurrentFountainStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientWantsCurrentFountainStateImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res,
        _$ClientWantsCurrentFountainStateImpl>
    implements _$$ClientWantsCurrentFountainStateImplCopyWith<$Res> {
  __$$ClientWantsCurrentFountainStateImplCopyWithImpl(
      _$ClientWantsCurrentFountainStateImpl _value,
      $Res Function(_$ClientWantsCurrentFountainStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsCurrentFountainStateImpl
    with DiagnosticableTreeMixin
    implements ClientWantsCurrentFountainState {
  _$ClientWantsCurrentFountainStateImpl({final String? $type})
      : $type = $type ?? 'ClientWantsCurrentFountainState';

  factory _$ClientWantsCurrentFountainStateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsCurrentFountainStateImplFromJson(json);

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsCurrentFountainState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ClientEvent.clientWantsCurrentFountainState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsCurrentFountainStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsCurrentFountainState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsCurrentFountainState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsCurrentFountainState != null) {
      return clientWantsCurrentFountainState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsCurrentFountainState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsCurrentFountainState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsCurrentFountainState != null) {
      return clientWantsCurrentFountainState(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsCurrentFountainStateImplToJson(
      this,
    );
  }
}

abstract class ClientWantsCurrentFountainState implements ClientEvent {
  factory ClientWantsCurrentFountainState() =
      _$ClientWantsCurrentFountainStateImpl;

  factory ClientWantsCurrentFountainState.fromJson(Map<String, dynamic> json) =
      _$ClientWantsCurrentFountainStateImpl.fromJson;
}

/// @nodoc
abstract class _$$ClientWantsToTurnOnFountainImplCopyWith<$Res> {
  factory _$$ClientWantsToTurnOnFountainImplCopyWith(
          _$ClientWantsToTurnOnFountainImpl value,
          $Res Function(_$ClientWantsToTurnOnFountainImpl) then) =
      __$$ClientWantsToTurnOnFountainImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'requestTime') int requestTime});
}

/// @nodoc
class __$$ClientWantsToTurnOnFountainImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToTurnOnFountainImpl>
    implements _$$ClientWantsToTurnOnFountainImplCopyWith<$Res> {
  __$$ClientWantsToTurnOnFountainImplCopyWithImpl(
      _$ClientWantsToTurnOnFountainImpl _value,
      $Res Function(_$ClientWantsToTurnOnFountainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestTime = null,
  }) {
    return _then(_$ClientWantsToTurnOnFountainImpl(
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToTurnOnFountainImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToTurnOnFountain {
  _$ClientWantsToTurnOnFountainImpl(
      {@JsonKey(name: 'requestTime') required this.requestTime,
      final String? $type})
      : $type = $type ?? 'ClientWantsToTurnOnFountain';

  factory _$ClientWantsToTurnOnFountainImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToTurnOnFountainImplFromJson(json);

  @override
  @JsonKey(name: 'requestTime')
  final int requestTime;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToTurnOnFountain(requestTime: $requestTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ClientEvent.clientWantsToTurnOnFountain'))
      ..add(DiagnosticsProperty('requestTime', requestTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToTurnOnFountainImpl &&
            (identical(other.requestTime, requestTime) ||
                other.requestTime == requestTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToTurnOnFountainImplCopyWith<_$ClientWantsToTurnOnFountainImpl>
      get copyWith => __$$ClientWantsToTurnOnFountainImplCopyWithImpl<
          _$ClientWantsToTurnOnFountainImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToTurnOnFountain(requestTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToTurnOnFountain?.call(requestTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToTurnOnFountain != null) {
      return clientWantsToTurnOnFountain(requestTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToTurnOnFountain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToTurnOnFountain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToTurnOnFountain != null) {
      return clientWantsToTurnOnFountain(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToTurnOnFountainImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToTurnOnFountain implements ClientEvent {
  factory ClientWantsToTurnOnFountain(
          {@JsonKey(name: 'requestTime') required final int requestTime}) =
      _$ClientWantsToTurnOnFountainImpl;

  factory ClientWantsToTurnOnFountain.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToTurnOnFountainImpl.fromJson;

  @JsonKey(name: 'requestTime')
  int get requestTime;
  @JsonKey(ignore: true)
  _$$ClientWantsToTurnOnFountainImplCopyWith<_$ClientWantsToTurnOnFountainImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ServerSendsCurrentFountainstate':
      return ServerSendsCurrentFountainstate.fromJson(json);
    case 'ServerConfirmRequestToTurnOn':
      return ServerConfirmRequestToTurnOn.fromJson(json);
    case 'ServerConfirmsRegistration':
      return ServerConfirmsRegistration.fromJson(json);
    case 'ServerConfirmsLogin':
      return ServerConfirmsLogin.fromJson(json);
    case 'ServerSendsHistory':
      return ServerSendsHistory.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'ServerEvent',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$ServerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'message') String message)
        ServerConfirmRequestToTurnOn,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)
        serverSendsHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmRequestToTurnOn value)
        ServerConfirmRequestToTurnOn,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerEventCopyWith<$Res> {
  factory $ServerEventCopyWith(
          ServerEvent value, $Res Function(ServerEvent) then) =
      _$ServerEventCopyWithImpl<$Res, ServerEvent>;
}

/// @nodoc
class _$ServerEventCopyWithImpl<$Res, $Val extends ServerEvent>
    implements $ServerEventCopyWith<$Res> {
  _$ServerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerSendsCurrentFountainstateImplCopyWith<$Res> {
  factory _$$ServerSendsCurrentFountainstateImplCopyWith(
          _$ServerSendsCurrentFountainstateImpl value,
          $Res Function(_$ServerSendsCurrentFountainstateImpl) then) =
      __$$ServerSendsCurrentFountainstateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ison') bool isOn,
      @JsonKey(name: 'temperatur') double temperatur,
      @JsonKey(name: 'TimeStamp') DateTime timestamp});
}

/// @nodoc
class __$$ServerSendsCurrentFountainstateImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res,
        _$ServerSendsCurrentFountainstateImpl>
    implements _$$ServerSendsCurrentFountainstateImplCopyWith<$Res> {
  __$$ServerSendsCurrentFountainstateImplCopyWithImpl(
      _$ServerSendsCurrentFountainstateImpl _value,
      $Res Function(_$ServerSendsCurrentFountainstateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOn = null,
    Object? temperatur = null,
    Object? timestamp = null,
  }) {
    return _then(_$ServerSendsCurrentFountainstateImpl(
      isOn: null == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatur: null == temperatur
          ? _value.temperatur
          : temperatur // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsCurrentFountainstateImpl
    with DiagnosticableTreeMixin
    implements ServerSendsCurrentFountainstate {
  _$ServerSendsCurrentFountainstateImpl(
      {@JsonKey(name: 'ison') required this.isOn,
      @JsonKey(name: 'temperatur') required this.temperatur,
      @JsonKey(name: 'TimeStamp') required this.timestamp,
      final String? $type})
      : $type = $type ?? 'ServerSendsCurrentFountainstate';

  factory _$ServerSendsCurrentFountainstateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsCurrentFountainstateImplFromJson(json);

  @override
  @JsonKey(name: 'ison')
  final bool isOn;
  @override
  @JsonKey(name: 'temperatur')
  final double temperatur;
  @override
  @JsonKey(name: 'TimeStamp')
  final DateTime timestamp;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverSendsCurrentFountainstate(isOn: $isOn, temperatur: $temperatur, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerEvent.serverSendsCurrentFountainstate'))
      ..add(DiagnosticsProperty('isOn', isOn))
      ..add(DiagnosticsProperty('temperatur', temperatur))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsCurrentFountainstateImpl &&
            (identical(other.isOn, isOn) || other.isOn == isOn) &&
            (identical(other.temperatur, temperatur) ||
                other.temperatur == temperatur) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isOn, temperatur, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsCurrentFountainstateImplCopyWith<
          _$ServerSendsCurrentFountainstateImpl>
      get copyWith => __$$ServerSendsCurrentFountainstateImplCopyWithImpl<
          _$ServerSendsCurrentFountainstateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'message') String message)
        ServerConfirmRequestToTurnOn,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)
        serverSendsHistory,
  }) {
    return serverSendsCurrentFountainstate(isOn, temperatur, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
  }) {
    return serverSendsCurrentFountainstate?.call(isOn, temperatur, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverSendsCurrentFountainstate != null) {
      return serverSendsCurrentFountainstate(isOn, temperatur, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmRequestToTurnOn value)
        ServerConfirmRequestToTurnOn,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return serverSendsCurrentFountainstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return serverSendsCurrentFountainstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverSendsCurrentFountainstate != null) {
      return serverSendsCurrentFountainstate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsCurrentFountainstateImplToJson(
      this,
    );
  }
}

abstract class ServerSendsCurrentFountainstate implements ServerEvent {
  factory ServerSendsCurrentFountainstate(
          {@JsonKey(name: 'ison') required final bool isOn,
          @JsonKey(name: 'temperatur') required final double temperatur,
          @JsonKey(name: 'TimeStamp') required final DateTime timestamp}) =
      _$ServerSendsCurrentFountainstateImpl;

  factory ServerSendsCurrentFountainstate.fromJson(Map<String, dynamic> json) =
      _$ServerSendsCurrentFountainstateImpl.fromJson;

  @JsonKey(name: 'ison')
  bool get isOn;
  @JsonKey(name: 'temperatur')
  double get temperatur;
  @JsonKey(name: 'TimeStamp')
  DateTime get timestamp;
  @JsonKey(ignore: true)
  _$$ServerSendsCurrentFountainstateImplCopyWith<
          _$ServerSendsCurrentFountainstateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerConfirmRequestToTurnOnImplCopyWith<$Res> {
  factory _$$ServerConfirmRequestToTurnOnImplCopyWith(
          _$ServerConfirmRequestToTurnOnImpl value,
          $Res Function(_$ServerConfirmRequestToTurnOnImpl) then) =
      __$$ServerConfirmRequestToTurnOnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$ServerConfirmRequestToTurnOnImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerConfirmRequestToTurnOnImpl>
    implements _$$ServerConfirmRequestToTurnOnImplCopyWith<$Res> {
  __$$ServerConfirmRequestToTurnOnImplCopyWithImpl(
      _$ServerConfirmRequestToTurnOnImpl _value,
      $Res Function(_$ServerConfirmRequestToTurnOnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerConfirmRequestToTurnOnImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerConfirmRequestToTurnOnImpl
    with DiagnosticableTreeMixin
    implements ServerConfirmRequestToTurnOn {
  _$ServerConfirmRequestToTurnOnImpl(
      {@JsonKey(name: 'message') required this.message, final String? $type})
      : $type = $type ?? 'ServerConfirmRequestToTurnOn';

  factory _$ServerConfirmRequestToTurnOnImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerConfirmRequestToTurnOnImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.ServerConfirmRequestToTurnOn(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerEvent.ServerConfirmRequestToTurnOn'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerConfirmRequestToTurnOnImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerConfirmRequestToTurnOnImplCopyWith<
          _$ServerConfirmRequestToTurnOnImpl>
      get copyWith => __$$ServerConfirmRequestToTurnOnImplCopyWithImpl<
          _$ServerConfirmRequestToTurnOnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'message') String message)
        ServerConfirmRequestToTurnOn,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)
        serverSendsHistory,
  }) {
    return ServerConfirmRequestToTurnOn(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
  }) {
    return ServerConfirmRequestToTurnOn?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (ServerConfirmRequestToTurnOn != null) {
      return ServerConfirmRequestToTurnOn(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmRequestToTurnOn value)
        ServerConfirmRequestToTurnOn,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return ServerConfirmRequestToTurnOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return ServerConfirmRequestToTurnOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (ServerConfirmRequestToTurnOn != null) {
      return ServerConfirmRequestToTurnOn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerConfirmRequestToTurnOnImplToJson(
      this,
    );
  }
}

abstract class ServerConfirmRequestToTurnOn implements ServerEvent {
  factory ServerConfirmRequestToTurnOn(
          {@JsonKey(name: 'message') required final String message}) =
      _$ServerConfirmRequestToTurnOnImpl;

  factory ServerConfirmRequestToTurnOn.fromJson(Map<String, dynamic> json) =
      _$ServerConfirmRequestToTurnOnImpl.fromJson;

  @JsonKey(name: 'message')
  String get message;
  @JsonKey(ignore: true)
  _$$ServerConfirmRequestToTurnOnImplCopyWith<
          _$ServerConfirmRequestToTurnOnImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerConfirmsRegistrationImplCopyWith<$Res> {
  factory _$$ServerConfirmsRegistrationImplCopyWith(
          _$ServerConfirmsRegistrationImpl value,
          $Res Function(_$ServerConfirmsRegistrationImpl) then) =
      __$$ServerConfirmsRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'UserId') int userId});
}

/// @nodoc
class __$$ServerConfirmsRegistrationImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerConfirmsRegistrationImpl>
    implements _$$ServerConfirmsRegistrationImplCopyWith<$Res> {
  __$$ServerConfirmsRegistrationImplCopyWithImpl(
      _$ServerConfirmsRegistrationImpl _value,
      $Res Function(_$ServerConfirmsRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = null,
  }) {
    return _then(_$ServerConfirmsRegistrationImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerConfirmsRegistrationImpl
    with DiagnosticableTreeMixin
    implements ServerConfirmsRegistration {
  _$ServerConfirmsRegistrationImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'UserId') required this.userId,
      final String? $type})
      : $type = $type ?? 'ServerConfirmsRegistration';

  factory _$ServerConfirmsRegistrationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerConfirmsRegistrationImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'UserId')
  final int userId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverConfirmsRegistration(message: $message, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ServerEvent.serverConfirmsRegistration'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerConfirmsRegistrationImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerConfirmsRegistrationImplCopyWith<_$ServerConfirmsRegistrationImpl>
      get copyWith => __$$ServerConfirmsRegistrationImplCopyWithImpl<
          _$ServerConfirmsRegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'message') String message)
        ServerConfirmRequestToTurnOn,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)
        serverSendsHistory,
  }) {
    return serverConfirmsRegistration(message, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
  }) {
    return serverConfirmsRegistration?.call(message, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverConfirmsRegistration != null) {
      return serverConfirmsRegistration(message, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmRequestToTurnOn value)
        ServerConfirmRequestToTurnOn,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return serverConfirmsRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return serverConfirmsRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverConfirmsRegistration != null) {
      return serverConfirmsRegistration(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerConfirmsRegistrationImplToJson(
      this,
    );
  }
}

abstract class ServerConfirmsRegistration implements ServerEvent {
  factory ServerConfirmsRegistration(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'UserId') required final int userId}) =
      _$ServerConfirmsRegistrationImpl;

  factory ServerConfirmsRegistration.fromJson(Map<String, dynamic> json) =
      _$ServerConfirmsRegistrationImpl.fromJson;

  @JsonKey(name: 'Message')
  String get message;
  @JsonKey(name: 'UserId')
  int get userId;
  @JsonKey(ignore: true)
  _$$ServerConfirmsRegistrationImplCopyWith<_$ServerConfirmsRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerConfirmsLoginImplCopyWith<$Res> {
  factory _$$ServerConfirmsLoginImplCopyWith(_$ServerConfirmsLoginImpl value,
          $Res Function(_$ServerConfirmsLoginImpl) then) =
      __$$ServerConfirmsLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Token') Object token,
      @JsonKey(name: 'UserId') int userId});
}

/// @nodoc
class __$$ServerConfirmsLoginImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerConfirmsLoginImpl>
    implements _$$ServerConfirmsLoginImplCopyWith<$Res> {
  __$$ServerConfirmsLoginImplCopyWithImpl(_$ServerConfirmsLoginImpl _value,
      $Res Function(_$ServerConfirmsLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? token = null,
    Object? userId = null,
  }) {
    return _then(_$ServerConfirmsLoginImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token ? _value.token : token,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerConfirmsLoginImpl
    with DiagnosticableTreeMixin
    implements ServerConfirmsLogin {
  _$ServerConfirmsLoginImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Token') required this.token,
      @JsonKey(name: 'UserId') required this.userId,
      final String? $type})
      : $type = $type ?? 'ServerConfirmsLogin';

  factory _$ServerConfirmsLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerConfirmsLoginImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Token')
  final Object token;
  @override
  @JsonKey(name: 'UserId')
  final int userId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverConfirmsLogin(message: $message, token: $token, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverConfirmsLogin'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerConfirmsLoginImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(token), userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerConfirmsLoginImplCopyWith<_$ServerConfirmsLoginImpl> get copyWith =>
      __$$ServerConfirmsLoginImplCopyWithImpl<_$ServerConfirmsLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'message') String message)
        ServerConfirmRequestToTurnOn,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)
        serverSendsHistory,
  }) {
    return serverConfirmsLogin(message, token, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
  }) {
    return serverConfirmsLogin?.call(message, token, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverConfirmsLogin != null) {
      return serverConfirmsLogin(message, token, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmRequestToTurnOn value)
        ServerConfirmRequestToTurnOn,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return serverConfirmsLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return serverConfirmsLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverConfirmsLogin != null) {
      return serverConfirmsLogin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerConfirmsLoginImplToJson(
      this,
    );
  }
}

abstract class ServerConfirmsLogin implements ServerEvent {
  factory ServerConfirmsLogin(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Token') required final Object token,
          @JsonKey(name: 'UserId') required final int userId}) =
      _$ServerConfirmsLoginImpl;

  factory ServerConfirmsLogin.fromJson(Map<String, dynamic> json) =
      _$ServerConfirmsLoginImpl.fromJson;

  @JsonKey(name: 'Message')
  String get message;
  @JsonKey(name: 'Token')
  Object get token;
  @JsonKey(name: 'UserId')
  int get userId;
  @JsonKey(ignore: true)
  _$$ServerConfirmsLoginImplCopyWith<_$ServerConfirmsLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerSendsHistoryImplCopyWith<$Res> {
  factory _$$ServerSendsHistoryImplCopyWith(_$ServerSendsHistoryImpl value,
          $Res Function(_$ServerSendsHistoryImpl) then) =
      __$$ServerSendsHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tempReadings') List<Object> tempReadings,
      @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings});
}

/// @nodoc
class __$$ServerSendsHistoryImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerSendsHistoryImpl>
    implements _$$ServerSendsHistoryImplCopyWith<$Res> {
  __$$ServerSendsHistoryImplCopyWithImpl(_$ServerSendsHistoryImpl _value,
      $Res Function(_$ServerSendsHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempReadings = null,
    Object? onTimeReadings = null,
  }) {
    return _then(_$ServerSendsHistoryImpl(
      tempReadings: null == tempReadings
          ? _value._tempReadings
          : tempReadings // ignore: cast_nullable_to_non_nullable
              as List<Object>,
      onTimeReadings: null == onTimeReadings
          ? _value._onTimeReadings
          : onTimeReadings // ignore: cast_nullable_to_non_nullable
              as List<Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsHistoryImpl
    with DiagnosticableTreeMixin
    implements ServerSendsHistory {
  _$ServerSendsHistoryImpl(
      {@JsonKey(name: 'tempReadings') required final List<Object> tempReadings,
      @JsonKey(name: 'onTimeReadings')
      required final List<Object> onTimeReadings,
      final String? $type})
      : _tempReadings = tempReadings,
        _onTimeReadings = onTimeReadings,
        $type = $type ?? 'ServerSendsHistory';

  factory _$ServerSendsHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsHistoryImplFromJson(json);

  final List<Object> _tempReadings;
  @override
  @JsonKey(name: 'tempReadings')
  List<Object> get tempReadings {
    if (_tempReadings is EqualUnmodifiableListView) return _tempReadings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempReadings);
  }

  final List<Object> _onTimeReadings;
  @override
  @JsonKey(name: 'onTimeReadings')
  List<Object> get onTimeReadings {
    if (_onTimeReadings is EqualUnmodifiableListView) return _onTimeReadings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onTimeReadings);
  }

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverSendsHistory(tempReadings: $tempReadings, onTimeReadings: $onTimeReadings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverSendsHistory'))
      ..add(DiagnosticsProperty('tempReadings', tempReadings))
      ..add(DiagnosticsProperty('onTimeReadings', onTimeReadings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsHistoryImpl &&
            const DeepCollectionEquality()
                .equals(other._tempReadings, _tempReadings) &&
            const DeepCollectionEquality()
                .equals(other._onTimeReadings, _onTimeReadings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tempReadings),
      const DeepCollectionEquality().hash(_onTimeReadings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsHistoryImplCopyWith<_$ServerSendsHistoryImpl> get copyWith =>
      __$$ServerSendsHistoryImplCopyWithImpl<_$ServerSendsHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'message') String message)
        ServerConfirmRequestToTurnOn,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)
        serverSendsHistory,
  }) {
    return serverSendsHistory(tempReadings, onTimeReadings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
  }) {
    return serverSendsHistory?.call(tempReadings, onTimeReadings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') DateTime timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'message') String message)?
        ServerConfirmRequestToTurnOn,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    TResult Function(@JsonKey(name: 'tempReadings') List<Object> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Object> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverSendsHistory != null) {
      return serverSendsHistory(tempReadings, onTimeReadings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmRequestToTurnOn value)
        ServerConfirmRequestToTurnOn,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return serverSendsHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return serverSendsHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverSendsHistory != null) {
      return serverSendsHistory(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsHistoryImplToJson(
      this,
    );
  }
}

abstract class ServerSendsHistory implements ServerEvent {
  factory ServerSendsHistory(
      {@JsonKey(name: 'tempReadings') required final List<Object> tempReadings,
      @JsonKey(name: 'onTimeReadings')
      required final List<Object> onTimeReadings}) = _$ServerSendsHistoryImpl;

  factory ServerSendsHistory.fromJson(Map<String, dynamic> json) =
      _$ServerSendsHistoryImpl.fromJson;

  @JsonKey(name: 'tempReadings')
  List<Object> get tempReadings;
  @JsonKey(name: 'onTimeReadings')
  List<Object> get onTimeReadings;
  @JsonKey(ignore: true)
  _$$ServerSendsHistoryImplCopyWith<_$ServerSendsHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
