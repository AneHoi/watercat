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
    case 'ClientWantsToRegister':
      return ClientWantsToRegister.fromJson(json);
    case 'ClientWantsFountainName':
      return ClientWantsFountainName.fromJson(json);
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
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
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
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
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
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
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
      {@JsonKey(name: 'email') String email,
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
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ClientWantsToLogInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password,
      final String? $type})
      : $type = $type ?? 'ClientWantsToLogIn';

  factory _$ClientWantsToLogInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogInImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToLogIn(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToLogIn'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogInImplCopyWith<_$ClientWantsToLogInImpl> get copyWith =>
      __$$ClientWantsToLogInImplCopyWithImpl<_$ClientWantsToLogInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToLogIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToLogIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToLogIn != null) {
      return clientWantsToLogIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
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
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
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
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password') required final String password}) =
      _$ClientWantsToLogInImpl;

  factory ClientWantsToLogIn.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogInImpl.fromJson;

  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'password')
  String get password;
  @JsonKey(ignore: true)
  _$$ClientWantsToLogInImplCopyWith<_$ClientWantsToLogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToRegisterImplCopyWith<$Res> {
  factory _$$ClientWantsToRegisterImplCopyWith(
          _$ClientWantsToRegisterImpl value,
          $Res Function(_$ClientWantsToRegisterImpl) then) =
      __$$ClientWantsToRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceId') int deviceId,
      @JsonKey(name: 'deviceName') String deviceName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'username') String username});
}

/// @nodoc
class __$$ClientWantsToRegisterImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToRegisterImpl>
    implements _$$ClientWantsToRegisterImplCopyWith<$Res> {
  __$$ClientWantsToRegisterImplCopyWithImpl(_$ClientWantsToRegisterImpl _value,
      $Res Function(_$ClientWantsToRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$ClientWantsToRegisterImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToRegisterImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToRegister {
  _$ClientWantsToRegisterImpl(
      {@JsonKey(name: 'deviceId') required this.deviceId,
      @JsonKey(name: 'deviceName') required this.deviceName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'username') required this.username,
      final String? $type})
      : $type = $type ?? 'ClientWantsToRegister';

  factory _$ClientWantsToRegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToRegisterImplFromJson(json);

  @override
  @JsonKey(name: 'deviceId')
  final int deviceId;
  @override
  @JsonKey(name: 'deviceName')
  final String deviceName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToRegister(deviceId: $deviceId, deviceName: $deviceName, email: $email, password: $password, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToRegister'))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('deviceName', deviceName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToRegisterImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, deviceName, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToRegisterImplCopyWith<_$ClientWantsToRegisterImpl>
      get copyWith => __$$ClientWantsToRegisterImplCopyWithImpl<
          _$ClientWantsToRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToRegister(
        deviceId, deviceName, email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToRegister?.call(
        deviceId, deviceName, email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToRegister != null) {
      return clientWantsToRegister(
          deviceId, deviceName, email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsToRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsToRegister != null) {
      return clientWantsToRegister(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToRegisterImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToRegister implements ClientEvent {
  factory ClientWantsToRegister(
          {@JsonKey(name: 'deviceId') required final int deviceId,
          @JsonKey(name: 'deviceName') required final String deviceName,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password') required final String password,
          @JsonKey(name: 'username') required final String username}) =
      _$ClientWantsToRegisterImpl;

  factory ClientWantsToRegister.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToRegisterImpl.fromJson;

  @JsonKey(name: 'deviceId')
  int get deviceId;
  @JsonKey(name: 'deviceName')
  String get deviceName;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'password')
  String get password;
  @JsonKey(name: 'username')
  String get username;
  @JsonKey(ignore: true)
  _$$ClientWantsToRegisterImplCopyWith<_$ClientWantsToRegisterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsFountainNameImplCopyWith<$Res> {
  factory _$$ClientWantsFountainNameImplCopyWith(
          _$ClientWantsFountainNameImpl value,
          $Res Function(_$ClientWantsFountainNameImpl) then) =
      __$$ClientWantsFountainNameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientWantsFountainNameImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsFountainNameImpl>
    implements _$$ClientWantsFountainNameImplCopyWith<$Res> {
  __$$ClientWantsFountainNameImplCopyWithImpl(
      _$ClientWantsFountainNameImpl _value,
      $Res Function(_$ClientWantsFountainNameImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsFountainNameImpl
    with DiagnosticableTreeMixin
    implements ClientWantsFountainName {
  _$ClientWantsFountainNameImpl({final String? $type})
      : $type = $type ?? 'ClientWantsFountainName';

  factory _$ClientWantsFountainNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsFountainNameImplFromJson(json);

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsFountainName()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ClientEvent.clientWantsFountainName'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsFountainNameImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
    required TResult Function() clientWantsHistory,
    required TResult Function() clientWantsCurrentFountainState,
    required TResult Function(@JsonKey(name: 'requestTime') int requestTime)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsFountainName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
    TResult? Function()? clientWantsHistory,
    TResult? Function()? clientWantsCurrentFountainState,
    TResult? Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsFountainName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
    TResult Function()? clientWantsHistory,
    TResult Function()? clientWantsCurrentFountainState,
    TResult Function(@JsonKey(name: 'requestTime') int requestTime)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsFountainName != null) {
      return clientWantsFountainName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToLogIn value) clientWantsToLogIn,
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
    required TResult Function(ClientWantsHistory value) clientWantsHistory,
    required TResult Function(ClientWantsCurrentFountainState value)
        clientWantsCurrentFountainState,
    required TResult Function(ClientWantsToTurnOnFountain value)
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsFountainName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
    TResult? Function(ClientWantsHistory value)? clientWantsHistory,
    TResult? Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult? Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
  }) {
    return clientWantsFountainName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToLogIn value)? clientWantsToLogIn,
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
    TResult Function(ClientWantsHistory value)? clientWantsHistory,
    TResult Function(ClientWantsCurrentFountainState value)?
        clientWantsCurrentFountainState,
    TResult Function(ClientWantsToTurnOnFountain value)?
        clientWantsToTurnOnFountain,
    required TResult orElse(),
  }) {
    if (clientWantsFountainName != null) {
      return clientWantsFountainName(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsFountainNameImplToJson(
      this,
    );
  }
}

abstract class ClientWantsFountainName implements ClientEvent {
  factory ClientWantsFountainName() = _$ClientWantsFountainNameImpl;

  factory ClientWantsFountainName.fromJson(Map<String, dynamic> json) =
      _$ClientWantsFountainNameImpl.fromJson;
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
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
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
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
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
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
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
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
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
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
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
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
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
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
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
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
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
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    required TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        clientWantsToLogIn,
    required TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)
        clientWantsToRegister,
    required TResult Function() clientWantsFountainName,
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
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult? Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult? Function()? clientWantsFountainName,
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
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        clientWantsToLogIn,
    TResult Function(
            @JsonKey(name: 'deviceId') int deviceId,
            @JsonKey(name: 'deviceName') String deviceName,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password,
            @JsonKey(name: 'username') String username)?
        clientWantsToRegister,
    TResult Function()? clientWantsFountainName,
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
    required TResult Function(ClientWantsToRegister value)
        clientWantsToRegister,
    required TResult Function(ClientWantsFountainName value)
        clientWantsFountainName,
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
    TResult? Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult? Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    TResult Function(ClientWantsToRegister value)? clientWantsToRegister,
    TResult Function(ClientWantsFountainName value)? clientWantsFountainName,
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
    case 'ServerAuthenticatesUser':
      return ServerAuthenticatesUser.fromJson(json);
    case 'ServerSendsFountainName':
      return ServerSendsFountainName.fromJson(json);
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
    required TResult Function(@JsonKey(name: 'Jwt') String token)
        serverAuthenticatesUser,
    required TResult Function(
            @JsonKey(name: 'fountainName') String fountainName)
        serverSendsFountainName,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)
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
    TResult? Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult? Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    TResult Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    required TResult Function(ServerAuthenticatesUser value)
        serverAuthenticatesUser,
    required TResult Function(ServerSendsFountainName value)
        serverSendsFountainName,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult? Function(ServerSendsFountainName value)? serverSendsFountainName,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult Function(ServerSendsFountainName value)? serverSendsFountainName,
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
    required TResult Function(@JsonKey(name: 'Jwt') String token)
        serverAuthenticatesUser,
    required TResult Function(
            @JsonKey(name: 'fountainName') String fountainName)
        serverSendsFountainName,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)
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
    TResult? Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult? Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    TResult Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    required TResult Function(ServerAuthenticatesUser value)
        serverAuthenticatesUser,
    required TResult Function(ServerSendsFountainName value)
        serverSendsFountainName,
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
    TResult? Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult? Function(ServerSendsFountainName value)? serverSendsFountainName,
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
    TResult Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult Function(ServerSendsFountainName value)? serverSendsFountainName,
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
    required TResult Function(@JsonKey(name: 'Jwt') String token)
        serverAuthenticatesUser,
    required TResult Function(
            @JsonKey(name: 'fountainName') String fountainName)
        serverSendsFountainName,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)
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
    TResult? Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult? Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    TResult Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    required TResult Function(ServerAuthenticatesUser value)
        serverAuthenticatesUser,
    required TResult Function(ServerSendsFountainName value)
        serverSendsFountainName,
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
    TResult? Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult? Function(ServerSendsFountainName value)? serverSendsFountainName,
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
    TResult Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult Function(ServerSendsFountainName value)? serverSendsFountainName,
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
abstract class _$$ServerAuthenticatesUserImplCopyWith<$Res> {
  factory _$$ServerAuthenticatesUserImplCopyWith(
          _$ServerAuthenticatesUserImpl value,
          $Res Function(_$ServerAuthenticatesUserImpl) then) =
      __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'Jwt') String token});
}

/// @nodoc
class __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerAuthenticatesUserImpl>
    implements _$$ServerAuthenticatesUserImplCopyWith<$Res> {
  __$$ServerAuthenticatesUserImplCopyWithImpl(
      _$ServerAuthenticatesUserImpl _value,
      $Res Function(_$ServerAuthenticatesUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$ServerAuthenticatesUserImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthenticatesUserImpl
    with DiagnosticableTreeMixin
    implements ServerAuthenticatesUser {
  _$ServerAuthenticatesUserImpl(
      {@JsonKey(name: 'Jwt') required this.token, final String? $type})
      : $type = $type ?? 'ServerAuthenticatesUser';

  factory _$ServerAuthenticatesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthenticatesUserImplFromJson(json);

  @override
  @JsonKey(name: 'Jwt')
  final String token;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverAuthenticatesUser(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverAuthenticatesUser'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthenticatesUserImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => __$$ServerAuthenticatesUserImplCopyWithImpl<
          _$ServerAuthenticatesUserImpl>(this, _$identity);

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
    required TResult Function(@JsonKey(name: 'Jwt') String token)
        serverAuthenticatesUser,
    required TResult Function(
            @JsonKey(name: 'fountainName') String fountainName)
        serverSendsFountainName,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)
        serverSendsHistory,
  }) {
    return serverAuthenticatesUser(token);
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
    TResult? Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult? Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
        serverSendsHistory,
  }) {
    return serverAuthenticatesUser?.call(token);
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
    TResult Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverAuthenticatesUser != null) {
      return serverAuthenticatesUser(token);
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
    required TResult Function(ServerAuthenticatesUser value)
        serverAuthenticatesUser,
    required TResult Function(ServerSendsFountainName value)
        serverSendsFountainName,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return serverAuthenticatesUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult? Function(ServerSendsFountainName value)? serverSendsFountainName,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return serverAuthenticatesUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult Function(ServerSendsFountainName value)? serverSendsFountainName,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverAuthenticatesUser != null) {
      return serverAuthenticatesUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthenticatesUserImplToJson(
      this,
    );
  }
}

abstract class ServerAuthenticatesUser implements ServerEvent {
  factory ServerAuthenticatesUser(
          {@JsonKey(name: 'Jwt') required final String token}) =
      _$ServerAuthenticatesUserImpl;

  factory ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =
      _$ServerAuthenticatesUserImpl.fromJson;

  @JsonKey(name: 'Jwt')
  String get token;
  @JsonKey(ignore: true)
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerSendsFountainNameImplCopyWith<$Res> {
  factory _$$ServerSendsFountainNameImplCopyWith(
          _$ServerSendsFountainNameImpl value,
          $Res Function(_$ServerSendsFountainNameImpl) then) =
      __$$ServerSendsFountainNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'fountainName') String fountainName});
}

/// @nodoc
class __$$ServerSendsFountainNameImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerSendsFountainNameImpl>
    implements _$$ServerSendsFountainNameImplCopyWith<$Res> {
  __$$ServerSendsFountainNameImplCopyWithImpl(
      _$ServerSendsFountainNameImpl _value,
      $Res Function(_$ServerSendsFountainNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fountainName = null,
  }) {
    return _then(_$ServerSendsFountainNameImpl(
      fountainName: null == fountainName
          ? _value.fountainName
          : fountainName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsFountainNameImpl
    with DiagnosticableTreeMixin
    implements ServerSendsFountainName {
  _$ServerSendsFountainNameImpl(
      {@JsonKey(name: 'fountainName') required this.fountainName,
      final String? $type})
      : $type = $type ?? 'ServerSendsFountainName';

  factory _$ServerSendsFountainNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsFountainNameImplFromJson(json);

  @override
  @JsonKey(name: 'fountainName')
  final String fountainName;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverSendsFountainName(fountainName: $fountainName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverSendsFountainName'))
      ..add(DiagnosticsProperty('fountainName', fountainName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsFountainNameImpl &&
            (identical(other.fountainName, fountainName) ||
                other.fountainName == fountainName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fountainName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsFountainNameImplCopyWith<_$ServerSendsFountainNameImpl>
      get copyWith => __$$ServerSendsFountainNameImplCopyWithImpl<
          _$ServerSendsFountainNameImpl>(this, _$identity);

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
    required TResult Function(@JsonKey(name: 'Jwt') String token)
        serverAuthenticatesUser,
    required TResult Function(
            @JsonKey(name: 'fountainName') String fountainName)
        serverSendsFountainName,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)
        serverSendsHistory,
  }) {
    return serverSendsFountainName(fountainName);
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
    TResult? Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult? Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
        serverSendsHistory,
  }) {
    return serverSendsFountainName?.call(fountainName);
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
    TResult Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
        serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverSendsFountainName != null) {
      return serverSendsFountainName(fountainName);
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
    required TResult Function(ServerAuthenticatesUser value)
        serverAuthenticatesUser,
    required TResult Function(ServerSendsFountainName value)
        serverSendsFountainName,
    required TResult Function(ServerSendsHistory value) serverSendsHistory,
  }) {
    return serverSendsFountainName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult? Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult? Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult? Function(ServerSendsFountainName value)? serverSendsFountainName,
    TResult? Function(ServerSendsHistory value)? serverSendsHistory,
  }) {
    return serverSendsFountainName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsCurrentFountainstate value)?
        serverSendsCurrentFountainstate,
    TResult Function(ServerConfirmRequestToTurnOn value)?
        ServerConfirmRequestToTurnOn,
    TResult Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult Function(ServerSendsFountainName value)? serverSendsFountainName,
    TResult Function(ServerSendsHistory value)? serverSendsHistory,
    required TResult orElse(),
  }) {
    if (serverSendsFountainName != null) {
      return serverSendsFountainName(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsFountainNameImplToJson(
      this,
    );
  }
}

abstract class ServerSendsFountainName implements ServerEvent {
  factory ServerSendsFountainName(
          {@JsonKey(name: 'fountainName') required final String fountainName}) =
      _$ServerSendsFountainNameImpl;

  factory ServerSendsFountainName.fromJson(Map<String, dynamic> json) =
      _$ServerSendsFountainNameImpl.fromJson;

  @JsonKey(name: 'fountainName')
  String get fountainName;
  @JsonKey(ignore: true)
  _$$ServerSendsFountainNameImplCopyWith<_$ServerSendsFountainNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerSendsHistoryImplCopyWith<$Res> {
  factory _$$ServerSendsHistoryImplCopyWith(_$ServerSendsHistoryImpl value,
          $Res Function(_$ServerSendsHistoryImpl) then) =
      __$$ServerSendsHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
      @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings});
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
              as List<Reading>,
      onTimeReadings: null == onTimeReadings
          ? _value._onTimeReadings
          : onTimeReadings // ignore: cast_nullable_to_non_nullable
              as List<Reading>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsHistoryImpl
    with DiagnosticableTreeMixin
    implements ServerSendsHistory {
  _$ServerSendsHistoryImpl(
      {@JsonKey(name: 'tempReadings') required final List<Reading> tempReadings,
      @JsonKey(name: 'onTimeReadings')
      required final List<Reading> onTimeReadings,
      final String? $type})
      : _tempReadings = tempReadings,
        _onTimeReadings = onTimeReadings,
        $type = $type ?? 'ServerSendsHistory';

  factory _$ServerSendsHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsHistoryImplFromJson(json);

  final List<Reading> _tempReadings;
  @override
  @JsonKey(name: 'tempReadings')
  List<Reading> get tempReadings {
    if (_tempReadings is EqualUnmodifiableListView) return _tempReadings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempReadings);
  }

  final List<Reading> _onTimeReadings;
  @override
  @JsonKey(name: 'onTimeReadings')
  List<Reading> get onTimeReadings {
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
    required TResult Function(@JsonKey(name: 'Jwt') String token)
        serverAuthenticatesUser,
    required TResult Function(
            @JsonKey(name: 'fountainName') String fountainName)
        serverSendsFountainName,
    required TResult Function(
            @JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)
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
    TResult? Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult? Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult? Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    TResult Function(@JsonKey(name: 'Jwt') String token)?
        serverAuthenticatesUser,
    TResult Function(@JsonKey(name: 'fountainName') String fountainName)?
        serverSendsFountainName,
    TResult Function(@JsonKey(name: 'tempReadings') List<Reading> tempReadings,
            @JsonKey(name: 'onTimeReadings') List<Reading> onTimeReadings)?
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
    required TResult Function(ServerAuthenticatesUser value)
        serverAuthenticatesUser,
    required TResult Function(ServerSendsFountainName value)
        serverSendsFountainName,
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
    TResult? Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult? Function(ServerSendsFountainName value)? serverSendsFountainName,
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
    TResult Function(ServerAuthenticatesUser value)? serverAuthenticatesUser,
    TResult Function(ServerSendsFountainName value)? serverSendsFountainName,
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
      {@JsonKey(name: 'tempReadings') required final List<Reading> tempReadings,
      @JsonKey(name: 'onTimeReadings')
      required final List<Reading> onTimeReadings}) = _$ServerSendsHistoryImpl;

  factory ServerSendsHistory.fromJson(Map<String, dynamic> json) =
      _$ServerSendsHistoryImpl.fromJson;

  @JsonKey(name: 'tempReadings')
  List<Reading> get tempReadings;
  @JsonKey(name: 'onTimeReadings')
  List<Reading> get onTimeReadings;
  @JsonKey(ignore: true)
  _$$ServerSendsHistoryImplCopyWith<_$ServerSendsHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
