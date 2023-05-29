// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.77.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class EmbeddedMilliPlatform extends FlutterRustBridgeBase<EmbeddedMilliWire> {
  EmbeddedMilliPlatform(ffi.DynamicLibrary dylib)
      : super(EmbeddedMilliWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_Filter> api2wire_box_autoadd_filter(Filter raw) {
    final ptr = inner.new_box_autoadd_filter_0();
    _api_fill_to_wire_filter(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_MimirIndexSettings>
      api2wire_box_autoadd_mimir_index_settings(MimirIndexSettings raw) {
    final ptr = inner.new_box_autoadd_mimir_index_settings_0();
    _api_fill_to_wire_mimir_index_settings(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_box_autoadd_terms_matching_strategy(
      TermsMatchingStrategy raw) {
    return inner.new_box_autoadd_terms_matching_strategy_0(
        api2wire_terms_matching_strategy(raw));
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_box_autoadd_u32(int raw) {
    return inner.new_box_autoadd_u32_0(api2wire_u32(raw));
  }

  @protected
  ffi.Pointer<wire_Filter> api2wire_box_filter(Filter raw) {
    final ptr = inner.new_box_filter_0();
    _api_fill_to_wire_filter(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_list_filter> api2wire_list_filter(List<Filter> raw) {
    final ans = inner.new_list_filter_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_filter(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_sort_by> api2wire_list_sort_by(List<SortBy> raw) {
    final ans = inner.new_list_sort_by_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_sort_by(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_synonyms> api2wire_list_synonyms(List<Synonyms> raw) {
    final ans = inner.new_list_synonyms_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_synonyms(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_opt_StringList(List<String>? raw) {
    return raw == null ? ffi.nullptr : api2wire_StringList(raw);
  }

  @protected
  ffi.Pointer<wire_Filter> api2wire_opt_box_autoadd_filter(Filter? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_filter(raw);
  }

  @protected
  ffi.Pointer<ffi.Int32> api2wire_opt_box_autoadd_terms_matching_strategy(
      TermsMatchingStrategy? raw) {
    return raw == null
        ? ffi.nullptr
        : api2wire_box_autoadd_terms_matching_strategy(raw);
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_opt_box_autoadd_u32(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_u32(raw);
  }

  @protected
  ffi.Pointer<wire_list_sort_by> api2wire_opt_list_sort_by(List<SortBy>? raw) {
    return raw == null ? ffi.nullptr : api2wire_list_sort_by(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_filter(
      Filter apiObj, ffi.Pointer<wire_Filter> wireObj) {
    _api_fill_to_wire_filter(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_mimir_index_settings(
      MimirIndexSettings apiObj, ffi.Pointer<wire_MimirIndexSettings> wireObj) {
    _api_fill_to_wire_mimir_index_settings(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_filter(
      Filter apiObj, ffi.Pointer<wire_Filter> wireObj) {
    _api_fill_to_wire_filter(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_filter(Filter apiObj, wire_Filter wireObj) {
    if (apiObj is Filter_Or) {
      var pre_field0 = api2wire_list_filter(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_Filter_Or();
      wireObj.kind.ref.Or.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is Filter_And) {
      var pre_field0 = api2wire_list_filter(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_Filter_And();
      wireObj.kind.ref.And.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is Filter_Not) {
      var pre_field0 = api2wire_box_filter(apiObj.field0);
      wireObj.tag = 2;
      wireObj.kind = inner.inflate_Filter_Not();
      wireObj.kind.ref.Not.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is Filter_Exists) {
      var pre_field = api2wire_String(apiObj.field);
      wireObj.tag = 3;
      wireObj.kind = inner.inflate_Filter_Exists();
      wireObj.kind.ref.Exists.ref.field = pre_field;
      return;
    }
    if (apiObj is Filter_InValues) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_values = api2wire_StringList(apiObj.values);
      wireObj.tag = 4;
      wireObj.kind = inner.inflate_Filter_InValues();
      wireObj.kind.ref.InValues.ref.field = pre_field;
      wireObj.kind.ref.InValues.ref.values = pre_values;
      return;
    }
    if (apiObj is Filter_GreaterThan) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_value = api2wire_String(apiObj.value);
      wireObj.tag = 5;
      wireObj.kind = inner.inflate_Filter_GreaterThan();
      wireObj.kind.ref.GreaterThan.ref.field = pre_field;
      wireObj.kind.ref.GreaterThan.ref.value = pre_value;
      return;
    }
    if (apiObj is Filter_GreaterThanOrEqual) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_value = api2wire_String(apiObj.value);
      wireObj.tag = 6;
      wireObj.kind = inner.inflate_Filter_GreaterThanOrEqual();
      wireObj.kind.ref.GreaterThanOrEqual.ref.field = pre_field;
      wireObj.kind.ref.GreaterThanOrEqual.ref.value = pre_value;
      return;
    }
    if (apiObj is Filter_Equal) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_value = api2wire_String(apiObj.value);
      wireObj.tag = 7;
      wireObj.kind = inner.inflate_Filter_Equal();
      wireObj.kind.ref.Equal.ref.field = pre_field;
      wireObj.kind.ref.Equal.ref.value = pre_value;
      return;
    }
    if (apiObj is Filter_NotEqual) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_value = api2wire_String(apiObj.value);
      wireObj.tag = 8;
      wireObj.kind = inner.inflate_Filter_NotEqual();
      wireObj.kind.ref.NotEqual.ref.field = pre_field;
      wireObj.kind.ref.NotEqual.ref.value = pre_value;
      return;
    }
    if (apiObj is Filter_LessThan) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_value = api2wire_String(apiObj.value);
      wireObj.tag = 9;
      wireObj.kind = inner.inflate_Filter_LessThan();
      wireObj.kind.ref.LessThan.ref.field = pre_field;
      wireObj.kind.ref.LessThan.ref.value = pre_value;
      return;
    }
    if (apiObj is Filter_LessThanOrEqual) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_value = api2wire_String(apiObj.value);
      wireObj.tag = 10;
      wireObj.kind = inner.inflate_Filter_LessThanOrEqual();
      wireObj.kind.ref.LessThanOrEqual.ref.field = pre_field;
      wireObj.kind.ref.LessThanOrEqual.ref.value = pre_value;
      return;
    }
    if (apiObj is Filter_Between) {
      var pre_field = api2wire_String(apiObj.field);
      var pre_from = api2wire_String(apiObj.from);
      var pre_to = api2wire_String(apiObj.to);
      wireObj.tag = 11;
      wireObj.kind = inner.inflate_Filter_Between();
      wireObj.kind.ref.Between.ref.field = pre_field;
      wireObj.kind.ref.Between.ref.from = pre_from;
      wireObj.kind.ref.Between.ref.to = pre_to;
      return;
    }
  }

  void _api_fill_to_wire_mimir_index_settings(
      MimirIndexSettings apiObj, wire_MimirIndexSettings wireObj) {
    wireObj.primary_key = api2wire_opt_String(apiObj.primaryKey);
    wireObj.searchable_fields =
        api2wire_opt_StringList(apiObj.searchableFields);
    wireObj.filterable_fields = api2wire_StringList(apiObj.filterableFields);
    wireObj.sortable_fields = api2wire_StringList(apiObj.sortableFields);
    wireObj.ranking_rules = api2wire_StringList(apiObj.rankingRules);
    wireObj.stop_words = api2wire_StringList(apiObj.stopWords);
    wireObj.synonyms = api2wire_list_synonyms(apiObj.synonyms);
    wireObj.typos_enabled = api2wire_bool(apiObj.typosEnabled);
    wireObj.min_word_size_for_one_typo =
        api2wire_u8(apiObj.minWordSizeForOneTypo);
    wireObj.min_word_size_for_two_typos =
        api2wire_u8(apiObj.minWordSizeForTwoTypos);
    wireObj.disallow_typos_on_words =
        api2wire_StringList(apiObj.disallowTyposOnWords);
    wireObj.disallow_typos_on_fields =
        api2wire_StringList(apiObj.disallowTyposOnFields);
  }

  void _api_fill_to_wire_opt_box_autoadd_filter(
      Filter? apiObj, ffi.Pointer<wire_Filter> wireObj) {
    if (apiObj != null) _api_fill_to_wire_box_autoadd_filter(apiObj, wireObj);
  }

  void _api_fill_to_wire_sort_by(SortBy apiObj, wire_SortBy wireObj) {
    if (apiObj is SortBy_Asc) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_SortBy_Asc();
      wireObj.kind.ref.Asc.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is SortBy_Desc) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_SortBy_Desc();
      wireObj.kind.ref.Desc.ref.field0 = pre_field0;
      return;
    }
  }

  void _api_fill_to_wire_synonyms(Synonyms apiObj, wire_Synonyms wireObj) {
    wireObj.word = api2wire_String(apiObj.word);
    wireObj.synonyms = api2wire_StringList(apiObj.synonyms);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class EmbeddedMilliWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  EmbeddedMilliWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  EmbeddedMilliWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_ensure_instance_initialized(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> tmp_dir,
  ) {
    return _wire_ensure_instance_initialized(
      port_,
      instance_dir,
      tmp_dir,
    );
  }

  late final _wire_ensure_instance_initializedPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_ensure_instance_initialized');
  late final _wire_ensure_instance_initialized =
      _wire_ensure_instance_initializedPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_ensure_index_initialized(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_ensure_index_initialized(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_ensure_index_initializedPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_ensure_index_initialized');
  late final _wire_ensure_index_initialized =
      _wire_ensure_index_initializedPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_add_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_StringList> documents,
  ) {
    return _wire_add_documents(
      port_,
      instance_dir,
      index_name,
      documents,
    );
  }

  late final _wire_add_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_StringList>)>>('wire_add_documents');
  late final _wire_add_documents = _wire_add_documentsPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_StringList>)>();

  void wire_delete_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_StringList> document_ids,
  ) {
    return _wire_delete_documents(
      port_,
      instance_dir,
      index_name,
      document_ids,
    );
  }

  late final _wire_delete_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_StringList>)>>('wire_delete_documents');
  late final _wire_delete_documents = _wire_delete_documentsPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_StringList>)>();

  void wire_delete_all_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_delete_all_documents(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_delete_all_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_delete_all_documents');
  late final _wire_delete_all_documents =
      _wire_delete_all_documentsPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_set_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_StringList> documents,
  ) {
    return _wire_set_documents(
      port_,
      instance_dir,
      index_name,
      documents,
    );
  }

  late final _wire_set_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_StringList>)>>('wire_set_documents');
  late final _wire_set_documents = _wire_set_documentsPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_StringList>)>();

  void wire_get_document(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_uint_8_list> document_id,
  ) {
    return _wire_get_document(
      port_,
      instance_dir,
      index_name,
      document_id,
    );
  }

  late final _wire_get_documentPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_document');
  late final _wire_get_document = _wire_get_documentPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_all_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_get_all_documents(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_get_all_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_all_documents');
  late final _wire_get_all_documents = _wire_get_all_documentsPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_search_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_uint_8_list> query,
    ffi.Pointer<ffi.Uint32> limit,
    ffi.Pointer<ffi.Uint32> offset,
    ffi.Pointer<wire_list_sort_by> sort_criteria,
    ffi.Pointer<wire_Filter> filter,
    ffi.Pointer<ffi.Int32> matching_strategy,
  ) {
    return _wire_search_documents(
      port_,
      instance_dir,
      index_name,
      query,
      limit,
      offset,
      sort_criteria,
      filter,
      matching_strategy,
    );
  }

  late final _wire_search_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<ffi.Uint32>,
              ffi.Pointer<ffi.Uint32>,
              ffi.Pointer<wire_list_sort_by>,
              ffi.Pointer<wire_Filter>,
              ffi.Pointer<ffi.Int32>)>>('wire_search_documents');
  late final _wire_search_documents = _wire_search_documentsPtr.asFunction<
      void Function(
          int,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<ffi.Uint32>,
          ffi.Pointer<ffi.Uint32>,
          ffi.Pointer<wire_list_sort_by>,
          ffi.Pointer<wire_Filter>,
          ffi.Pointer<ffi.Int32>)>();

  void wire_number_of_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_number_of_documents(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_number_of_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_number_of_documents');
  late final _wire_number_of_documents =
      _wire_number_of_documentsPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_settings(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_get_settings(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_get_settingsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_settings');
  late final _wire_get_settings = _wire_get_settingsPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_set_settings(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_MimirIndexSettings> settings,
  ) {
    return _wire_set_settings(
      port_,
      instance_dir,
      index_name,
      settings,
    );
  }

  late final _wire_set_settingsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_MimirIndexSettings>)>>('wire_set_settings');
  late final _wire_set_settings = _wire_set_settingsPtr.asFunction<
      void Function(
          int,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_MimirIndexSettings>)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>(
      'new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr
      .asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<wire_Filter> new_box_autoadd_filter_0() {
    return _new_box_autoadd_filter_0();
  }

  late final _new_box_autoadd_filter_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Filter> Function()>>(
          'new_box_autoadd_filter_0');
  late final _new_box_autoadd_filter_0 = _new_box_autoadd_filter_0Ptr
      .asFunction<ffi.Pointer<wire_Filter> Function()>();

  ffi.Pointer<wire_MimirIndexSettings>
      new_box_autoadd_mimir_index_settings_0() {
    return _new_box_autoadd_mimir_index_settings_0();
  }

  late final _new_box_autoadd_mimir_index_settings_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_MimirIndexSettings> Function()>>(
      'new_box_autoadd_mimir_index_settings_0');
  late final _new_box_autoadd_mimir_index_settings_0 =
      _new_box_autoadd_mimir_index_settings_0Ptr
          .asFunction<ffi.Pointer<wire_MimirIndexSettings> Function()>();

  ffi.Pointer<ffi.Int32> new_box_autoadd_terms_matching_strategy_0(
    int value,
  ) {
    return _new_box_autoadd_terms_matching_strategy_0(
      value,
    );
  }

  late final _new_box_autoadd_terms_matching_strategy_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int32> Function(ffi.Int32)>>(
          'new_box_autoadd_terms_matching_strategy_0');
  late final _new_box_autoadd_terms_matching_strategy_0 =
      _new_box_autoadd_terms_matching_strategy_0Ptr
          .asFunction<ffi.Pointer<ffi.Int32> Function(int)>();

  ffi.Pointer<ffi.Uint32> new_box_autoadd_u32_0(
    int value,
  ) {
    return _new_box_autoadd_u32_0(
      value,
    );
  }

  late final _new_box_autoadd_u32_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint32> Function(ffi.Uint32)>>(
          'new_box_autoadd_u32_0');
  late final _new_box_autoadd_u32_0 = _new_box_autoadd_u32_0Ptr
      .asFunction<ffi.Pointer<ffi.Uint32> Function(int)>();

  ffi.Pointer<wire_Filter> new_box_filter_0() {
    return _new_box_filter_0();
  }

  late final _new_box_filter_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Filter> Function()>>(
          'new_box_filter_0');
  late final _new_box_filter_0 =
      _new_box_filter_0Ptr.asFunction<ffi.Pointer<wire_Filter> Function()>();

  ffi.Pointer<wire_list_filter> new_list_filter_0(
    int len,
  ) {
    return _new_list_filter_0(
      len,
    );
  }

  late final _new_list_filter_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_filter> Function(
              ffi.Int32)>>('new_list_filter_0');
  late final _new_list_filter_0 = _new_list_filter_0Ptr
      .asFunction<ffi.Pointer<wire_list_filter> Function(int)>();

  ffi.Pointer<wire_list_sort_by> new_list_sort_by_0(
    int len,
  ) {
    return _new_list_sort_by_0(
      len,
    );
  }

  late final _new_list_sort_by_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_sort_by> Function(
              ffi.Int32)>>('new_list_sort_by_0');
  late final _new_list_sort_by_0 = _new_list_sort_by_0Ptr
      .asFunction<ffi.Pointer<wire_list_sort_by> Function(int)>();

  ffi.Pointer<wire_list_synonyms> new_list_synonyms_0(
    int len,
  ) {
    return _new_list_synonyms_0(
      len,
    );
  }

  late final _new_list_synonyms_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_synonyms> Function(
              ffi.Int32)>>('new_list_synonyms_0');
  late final _new_list_synonyms_0 = _new_list_synonyms_0Ptr
      .asFunction<ffi.Pointer<wire_list_synonyms> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<FilterKind> inflate_Filter_Or() {
    return _inflate_Filter_Or();
  }

  late final _inflate_Filter_OrPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_Or');
  late final _inflate_Filter_Or =
      _inflate_Filter_OrPtr.asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_And() {
    return _inflate_Filter_And();
  }

  late final _inflate_Filter_AndPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_And');
  late final _inflate_Filter_And =
      _inflate_Filter_AndPtr.asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_Not() {
    return _inflate_Filter_Not();
  }

  late final _inflate_Filter_NotPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_Not');
  late final _inflate_Filter_Not =
      _inflate_Filter_NotPtr.asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_Exists() {
    return _inflate_Filter_Exists();
  }

  late final _inflate_Filter_ExistsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_Exists');
  late final _inflate_Filter_Exists = _inflate_Filter_ExistsPtr
      .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_InValues() {
    return _inflate_Filter_InValues();
  }

  late final _inflate_Filter_InValuesPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_InValues');
  late final _inflate_Filter_InValues = _inflate_Filter_InValuesPtr
      .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_GreaterThan() {
    return _inflate_Filter_GreaterThan();
  }

  late final _inflate_Filter_GreaterThanPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_GreaterThan');
  late final _inflate_Filter_GreaterThan = _inflate_Filter_GreaterThanPtr
      .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_GreaterThanOrEqual() {
    return _inflate_Filter_GreaterThanOrEqual();
  }

  late final _inflate_Filter_GreaterThanOrEqualPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_GreaterThanOrEqual');
  late final _inflate_Filter_GreaterThanOrEqual =
      _inflate_Filter_GreaterThanOrEqualPtr
          .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_Equal() {
    return _inflate_Filter_Equal();
  }

  late final _inflate_Filter_EqualPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_Equal');
  late final _inflate_Filter_Equal =
      _inflate_Filter_EqualPtr.asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_NotEqual() {
    return _inflate_Filter_NotEqual();
  }

  late final _inflate_Filter_NotEqualPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_NotEqual');
  late final _inflate_Filter_NotEqual = _inflate_Filter_NotEqualPtr
      .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_LessThan() {
    return _inflate_Filter_LessThan();
  }

  late final _inflate_Filter_LessThanPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_LessThan');
  late final _inflate_Filter_LessThan = _inflate_Filter_LessThanPtr
      .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_LessThanOrEqual() {
    return _inflate_Filter_LessThanOrEqual();
  }

  late final _inflate_Filter_LessThanOrEqualPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_LessThanOrEqual');
  late final _inflate_Filter_LessThanOrEqual =
      _inflate_Filter_LessThanOrEqualPtr
          .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<FilterKind> inflate_Filter_Between() {
    return _inflate_Filter_Between();
  }

  late final _inflate_Filter_BetweenPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<FilterKind> Function()>>(
          'inflate_Filter_Between');
  late final _inflate_Filter_Between = _inflate_Filter_BetweenPtr
      .asFunction<ffi.Pointer<FilterKind> Function()>();

  ffi.Pointer<SortByKind> inflate_SortBy_Asc() {
    return _inflate_SortBy_Asc();
  }

  late final _inflate_SortBy_AscPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<SortByKind> Function()>>(
          'inflate_SortBy_Asc');
  late final _inflate_SortBy_Asc =
      _inflate_SortBy_AscPtr.asFunction<ffi.Pointer<SortByKind> Function()>();

  ffi.Pointer<SortByKind> inflate_SortBy_Desc() {
    return _inflate_SortBy_Desc();
  }

  late final _inflate_SortBy_DescPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<SortByKind> Function()>>(
          'inflate_SortBy_Desc');
  late final _inflate_SortBy_Desc =
      _inflate_SortBy_DescPtr.asFunction<ffi.Pointer<SortByKind> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_SortBy_Asc extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

final class wire_SortBy_Desc extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

final class SortByKind extends ffi.Union {
  external ffi.Pointer<wire_SortBy_Asc> Asc;

  external ffi.Pointer<wire_SortBy_Desc> Desc;
}

final class wire_SortBy extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<SortByKind> kind;
}

final class wire_list_sort_by extends ffi.Struct {
  external ffi.Pointer<wire_SortBy> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_list_filter extends ffi.Struct {
  external ffi.Pointer<wire_Filter> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_Filter extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<FilterKind> kind;
}

final class FilterKind extends ffi.Union {
  external ffi.Pointer<wire_Filter_Or> Or;

  external ffi.Pointer<wire_Filter_And> And;

  external ffi.Pointer<wire_Filter_Not> Not;

  external ffi.Pointer<wire_Filter_Exists> Exists;

  external ffi.Pointer<wire_Filter_InValues> InValues;

  external ffi.Pointer<wire_Filter_GreaterThan> GreaterThan;

  external ffi.Pointer<wire_Filter_GreaterThanOrEqual> GreaterThanOrEqual;

  external ffi.Pointer<wire_Filter_Equal> Equal;

  external ffi.Pointer<wire_Filter_NotEqual> NotEqual;

  external ffi.Pointer<wire_Filter_LessThan> LessThan;

  external ffi.Pointer<wire_Filter_LessThanOrEqual> LessThanOrEqual;

  external ffi.Pointer<wire_Filter_Between> Between;
}

final class wire_Filter_Or extends ffi.Struct {
  external ffi.Pointer<wire_list_filter> field0;
}

final class wire_Filter_And extends ffi.Struct {
  external ffi.Pointer<wire_list_filter> field0;
}

final class wire_Filter_Not extends ffi.Struct {
  external ffi.Pointer<wire_Filter> field0;
}

final class wire_Filter_Exists extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;
}

final class wire_Filter_InValues extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_StringList> values;
}

final class wire_Filter_GreaterThan extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> value;
}

final class wire_Filter_GreaterThanOrEqual extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> value;
}

final class wire_Filter_Equal extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> value;
}

final class wire_Filter_NotEqual extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> value;
}

final class wire_Filter_LessThan extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> value;
}

final class wire_Filter_LessThanOrEqual extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> value;
}

final class wire_Filter_Between extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field;

  external ffi.Pointer<wire_uint_8_list> from;

  external ffi.Pointer<wire_uint_8_list> to;
}

final class wire_Synonyms extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> word;

  external ffi.Pointer<wire_StringList> synonyms;
}

final class wire_list_synonyms extends ffi.Struct {
  external ffi.Pointer<wire_Synonyms> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_MimirIndexSettings extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> primary_key;

  external ffi.Pointer<wire_StringList> searchable_fields;

  external ffi.Pointer<wire_StringList> filterable_fields;

  external ffi.Pointer<wire_StringList> sortable_fields;

  external ffi.Pointer<wire_StringList> ranking_rules;

  external ffi.Pointer<wire_StringList> stop_words;

  external ffi.Pointer<wire_list_synonyms> synonyms;

  @ffi.Bool()
  external bool typos_enabled;

  @ffi.Uint8()
  external int min_word_size_for_one_typo;

  @ffi.Uint8()
  external int min_word_size_for_two_typos;

  external ffi.Pointer<wire_StringList> disallow_typos_on_words;

  external ffi.Pointer<wire_StringList> disallow_typos_on_fields;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
