// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.72.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class FlutterRustBridgeExampleSingleBlockTest {
  Future<ApplicationSettings> getAppSettingsInResult({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetAppSettingsInResultConstMeta;

  Future<List<ApplicationSettings>> getVectorOfAppSettings({required int count, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetVectorOfAppSettingsConstMeta;
}

class ApplicationEnv {
  final List<ApplicationEnvVar> vars;

  const ApplicationEnv({
    required this.vars,
  });
}

class ApplicationEnvVar {
  final String field0;
  final bool field1;

  const ApplicationEnvVar({
    required this.field0,
    required this.field1,
  });
}

enum ApplicationMode {
  Standalone,
  Embedded,
}

class ApplicationSettings {
  final String name;
  final String version;
  final ApplicationMode mode;
  final ApplicationEnv env;
  final ApplicationEnv? envOptional;

  const ApplicationSettings({
    required this.name,
    required this.version,
    required this.mode,
    required this.env,
    this.envOptional,
  });
}

class FlutterRustBridgeExampleSingleBlockTestImpl implements FlutterRustBridgeExampleSingleBlockTest {
  final FlutterRustBridgeExampleSingleBlockTestPlatform _platform;
  factory FlutterRustBridgeExampleSingleBlockTestImpl(ExternalLibrary dylib) =>
      FlutterRustBridgeExampleSingleBlockTestImpl.raw(FlutterRustBridgeExampleSingleBlockTestPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory FlutterRustBridgeExampleSingleBlockTestImpl.wasm(FutureOr<WasmModule> module) =>
      FlutterRustBridgeExampleSingleBlockTestImpl(module as ExternalLibrary);
  FlutterRustBridgeExampleSingleBlockTestImpl.raw(this._platform);
  Future<ApplicationSettings> getAppSettingsInResult({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_app_settings_in_result(port_),
      parseSuccessData: _wire2api_application_settings,
      constMeta: kGetAppSettingsInResultConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetAppSettingsInResultConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "get_app_settings_in_result",
        argNames: [],
      );

  Future<List<ApplicationSettings>> getVectorOfAppSettings({required int count, dynamic hint}) {
    var arg0 = api2wire_usize(count);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_vector_of_app_settings(port_, arg0),
      parseSuccessData: _wire2api_list_application_settings,
      constMeta: kGetVectorOfAppSettingsConstMeta,
      argValues: [count],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetVectorOfAppSettingsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "get_vector_of_app_settings",
        argNames: ["count"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  ApplicationEnv _wire2api_application_env(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1) throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return ApplicationEnv(
      vars: _wire2api_list_application_env_var(arr[0]),
    );
  }

  ApplicationEnvVar _wire2api_application_env_var(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2) throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return ApplicationEnvVar(
      field0: _wire2api_String(arr[0]),
      field1: _wire2api_bool(arr[1]),
    );
  }

  ApplicationMode _wire2api_application_mode(dynamic raw) {
    return ApplicationMode.values[raw];
  }

  ApplicationSettings _wire2api_application_settings(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 5) throw Exception('unexpected arr length: expect 5 but see ${arr.length}');
    return ApplicationSettings(
      name: _wire2api_String(arr[0]),
      version: _wire2api_String(arr[1]),
      mode: _wire2api_application_mode(arr[2]),
      env: _wire2api_box_application_env(arr[3]),
      envOptional: _wire2api_opt_box_autoadd_application_env(arr[4]),
    );
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  ApplicationEnv _wire2api_box_application_env(dynamic raw) {
    return _wire2api_application_env(raw);
  }

  ApplicationEnv _wire2api_box_autoadd_application_env(dynamic raw) {
    return _wire2api_application_env(raw);
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  List<ApplicationEnvVar> _wire2api_list_application_env_var(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_application_env_var).toList();
  }

  List<ApplicationSettings> _wire2api_list_application_settings(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_application_settings).toList();
  }

  ApplicationEnv? _wire2api_opt_box_autoadd_application_env(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_application_env(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

@protected
int api2wire_usize(int raw) {
  return raw;
}
// Section: finalizer

class FlutterRustBridgeExampleSingleBlockTestPlatform
    extends FlutterRustBridgeBase<FlutterRustBridgeExampleSingleBlockTestWire> {
  FlutterRustBridgeExampleSingleBlockTestPlatform(ffi.DynamicLibrary dylib)
      : super(FlutterRustBridgeExampleSingleBlockTestWire(dylib));

// Section: api2wire

// Section: finalizer

// Section: api_fill_to_wire
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class FlutterRustBridgeExampleSingleBlockTestWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterRustBridgeExampleSingleBlockTestWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterRustBridgeExampleSingleBlockTestWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>('get_dart_object');
  late final _get_dart_object = _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>('drop_dart_object');
  late final _drop_dart_object = _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr = _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>('new_dart_opaque');
  late final _new_dart_opaque = _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>('init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_get_app_settings_in_result(
    int port_,
  ) {
    return _wire_get_app_settings_in_result(
      port_,
    );
  }

  late final _wire_get_app_settings_in_resultPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_get_app_settings_in_result');
  late final _wire_get_app_settings_in_result = _wire_get_app_settings_in_resultPtr.asFunction<void Function(int)>();

  void wire_get_vector_of_app_settings(
    int port_,
    int count,
  ) {
    return _wire_get_vector_of_app_settings(
      port_,
      count,
    );
  }

  late final _wire_get_vector_of_app_settingsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.UintPtr)>>('wire_get_vector_of_app_settings');
  late final _wire_get_vector_of_app_settings =
      _wire_get_vector_of_app_settingsPtr.asFunction<void Function(int, int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>('free_WireSyncReturn');
  late final _free_WireSyncReturn = _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
