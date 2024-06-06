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
    case 'ClientWantsCurrentFountainState':
      return ClientWantsCurrentFountainState.fromJson(json);

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
    required TResult Function(@JsonKey(name: 'email') String email)
        clientWantsCurrentFountainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(@JsonKey(name: 'email') String email)?
        clientWantsCurrentFountainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(@JsonKey(name: 'email') String email)?
        clientWantsCurrentFountainState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
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
    required TResult Function(@JsonKey(name: 'email') String email)
        clientWantsCurrentFountainState,
  }) {
    return clientWantsToLogIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(@JsonKey(name: 'email') String email)?
        clientWantsCurrentFountainState,
  }) {
    return clientWantsToLogIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(@JsonKey(name: 'email') String email)?
        clientWantsCurrentFountainState,
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
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
  }) {
    return clientWantsToLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
  }) {
    return clientWantsToLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
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
abstract class _$$ClientWantsCurrentFountainStateImplCopyWith<$Res> {
  factory _$$ClientWantsCurrentFountainStateImplCopyWith(
          _$ClientWantsCurrentFountainStateImpl value,
          $Res Function(_$ClientWantsCurrentFountainStateImpl) then) =
      __$$ClientWantsCurrentFountainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ClientWantsCurrentFountainStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsCurrentFountainStateImpl
    with DiagnosticableTreeMixin
    implements ClientWantsCurrentFountainState {
  _$ClientWantsCurrentFountainStateImpl(
      {@JsonKey(name: 'email') required this.email, final String? $type})
      : $type = $type ?? 'ClientWantsCurrentFountainState';

  factory _$ClientWantsCurrentFountainStateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsCurrentFountainStateImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsCurrentFountainState(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ClientEvent.clientWantsCurrentFountainState'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsCurrentFountainStateImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsCurrentFountainStateImplCopyWith<
          _$ClientWantsCurrentFountainStateImpl>
      get copyWith => __$$ClientWantsCurrentFountainStateImplCopyWithImpl<
          _$ClientWantsCurrentFountainStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(@JsonKey(name: 'email') String email)
        clientWantsCurrentFountainState,
  }) {
    return clientWantsCurrentFountainState(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(@JsonKey(name: 'email') String email)?
        clientWantsCurrentFountainState,
  }) {
    return clientWantsCurrentFountainState?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'username') String username,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(@JsonKey(name: 'email') String email)?
        clientWantsCurrentFountainState,
    required TResult orElse(),
  }) {
    if (clientWantsCurrentFountainState != null) {
      return clientWantsCurrentFountainState(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
  }) {
    return clientWantsCurrentFountainState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
  }) {
    return clientWantsCurrentFountainState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
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
  factory ClientWantsCurrentFountainState(
          {@JsonKey(name: 'email') required final String email}) =
      _$ClientWantsCurrentFountainStateImpl;

  factory ClientWantsCurrentFountainState.fromJson(Map<String, dynamic> json) =
      _$ClientWantsCurrentFountainStateImpl.fromJson;

  @JsonKey(name: 'email')
  String get email;
  @JsonKey(ignore: true)
  _$$ClientWantsCurrentFountainStateImplCopyWith<
          _$ClientWantsCurrentFountainStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ServerSendsCurrentFountainstate':
      return ServerSendsCurrentFountainstate.fromJson(json);
    case 'ServerConfirmsRegistration':
      return ServerConfirmsRegistration.fromJson(json);
    case 'ServerConfirmsLogin':
      return ServerConfirmsLogin.fromJson(json);

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
            @JsonKey(name: 'TimeStamp') String timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsCurrentFountainstate value)
        serverSendsCurrentFountainstate,
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
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
      @JsonKey(name: 'TimeStamp') String timestamp});
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
              as String,
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
  final String timestamp;

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
            @JsonKey(name: 'TimeStamp') String timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
  }) {
    return serverSendsCurrentFountainstate(isOn, temperatur, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
  }) {
    return serverSendsCurrentFountainstate?.call(isOn, temperatur, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
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
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
  }) {
    return serverSendsCurrentFountainstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
  }) {
    return serverSendsCurrentFountainstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
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
          @JsonKey(name: 'TimeStamp') required final String timestamp}) =
      _$ServerSendsCurrentFountainstateImpl;

  factory ServerSendsCurrentFountainstate.fromJson(Map<String, dynamic> json) =
      _$ServerSendsCurrentFountainstateImpl.fromJson;

  @JsonKey(name: 'ison')
  bool get isOn;
  @JsonKey(name: 'temperatur')
  double get temperatur;
  @JsonKey(name: 'TimeStamp')
  String get timestamp;
  @JsonKey(ignore: true)
  _$$ServerSendsCurrentFountainstateImplCopyWith<
          _$ServerSendsCurrentFountainstateImpl>
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
            @JsonKey(name: 'TimeStamp') String timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
  }) {
    return serverConfirmsRegistration(message, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
  }) {
    return serverConfirmsRegistration?.call(message, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
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
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
  }) {
    return serverConfirmsRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
  }) {
    return serverConfirmsRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
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
            @JsonKey(name: 'TimeStamp') String timestamp)
        serverSendsCurrentFountainstate,
    required TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsRegistration,
    required TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)
        serverConfirmsLogin,
  }) {
    return serverConfirmsLogin(message, token, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult? Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult? Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
  }) {
    return serverConfirmsLogin?.call(message, token, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'ison') bool isOn,
            @JsonKey(name: 'temperatur') double temperatur,
            @JsonKey(name: 'TimeStamp') String timestamp)?
        serverSendsCurrentFountainstate,
    TResult Function(@JsonKey(name: 'Message') String message,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsRegistration,
    TResult Function(
            @JsonKey(name: 'Message') String message,
            @JsonKey(name: 'Token') Object token,
            @JsonKey(name: 'UserId') int userId)?
        serverConfirmsLogin,
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
    required TResult Function(ServerConfirmsRegistration value)
        serverConfirmsRegistration,
    required TResult Function(ServerConfirmsLogin value) serverConfirmsLogin,
  }) {
    return serverConfirmsLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult? Function(ServerConfirmsLogin value)? serverConfirmsLogin,
  }) {
    return serverConfirmsLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmsRegistration value)?
        serverConfirmsRegistration,
    TResult Function(ServerConfirmsLogin value)? serverConfirmsLogin,
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
