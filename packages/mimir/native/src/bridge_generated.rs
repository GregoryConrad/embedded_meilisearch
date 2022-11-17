#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.1.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;

// Section: imports

// Section: wire functions

fn wire_enforce_binding_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "enforce_binding",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(enforce_binding()),
    )
}
fn wire_ensure_instance_initialized_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "ensure_instance_initialized",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            move |task_callback| ensure_instance_initialized(api_instance_dir)
        },
    )
}
fn wire_ensure_index_initialized_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "ensure_index_initialized",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            move |task_callback| ensure_index_initialized(api_instance_dir, api_index_name)
        },
    )
}
fn wire_add_documents_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
    json_documents: impl Wire2Api<Vec<String>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "add_documents",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            let api_json_documents = json_documents.wire2api();
            move |task_callback| add_documents(api_instance_dir, api_index_name, api_json_documents)
        },
    )
}
fn wire_delete_documents_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
    document_ids: impl Wire2Api<Vec<String>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "delete_documents",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            let api_document_ids = document_ids.wire2api();
            move |task_callback| {
                delete_documents(api_instance_dir, api_index_name, api_document_ids)
            }
        },
    )
}
fn wire_delete_all_documents_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "delete_all_documents",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            move |task_callback| delete_all_documents(api_instance_dir, api_index_name)
        },
    )
}
fn wire_set_documents_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
    json_documents: impl Wire2Api<Vec<String>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_documents",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            let api_json_documents = json_documents.wire2api();
            move |task_callback| set_documents(api_instance_dir, api_index_name, api_json_documents)
        },
    )
}
fn wire_get_document_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
    document_id: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_document",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            let api_document_id = document_id.wire2api();
            move |task_callback| get_document(api_instance_dir, api_index_name, api_document_id)
        },
    )
}
fn wire_get_all_documents_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_all_documents",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            move |task_callback| get_all_documents(api_instance_dir, api_index_name)
        },
    )
}
fn wire_search_documents_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
    query: impl Wire2Api<Option<String>> + UnwindSafe,
    limit: impl Wire2Api<Option<u32>> + UnwindSafe,
    sort_criteria: impl Wire2Api<Option<Vec<SortBy>>> + UnwindSafe,
    filter: impl Wire2Api<Filter> + UnwindSafe,
    matching_strategy: impl Wire2Api<TermsMatchingStrategy> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "search_documents",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            let api_query = query.wire2api();
            let api_limit = limit.wire2api();
            let api_sort_criteria = sort_criteria.wire2api();
            let api_filter = filter.wire2api();
            let api_matching_strategy = matching_strategy.wire2api();
            move |task_callback| {
                search_documents(
                    api_instance_dir,
                    api_index_name,
                    api_query,
                    api_limit,
                    api_sort_criteria,
                    api_filter,
                    api_matching_strategy,
                )
            }
        },
    )
}
fn wire_get_settings_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_settings",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            move |task_callback| get_settings(api_instance_dir, api_index_name)
        },
    )
}
fn wire_set_settings_impl(
    port_: MessagePort,
    instance_dir: impl Wire2Api<String> + UnwindSafe,
    index_name: impl Wire2Api<String> + UnwindSafe,
    settings: impl Wire2Api<MimirIndexSettings> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_settings",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_instance_dir = instance_dir.wire2api();
            let api_index_name = index_name.wire2api();
            let api_settings = settings.wire2api();
            move |task_callback| set_settings(api_instance_dir, api_index_name, api_settings)
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}

impl Wire2Api<u32> for *mut u32 {
    fn wire2api(self) -> u32 {
        unsafe { *support::box_from_leak_ptr(self) }
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<TermsMatchingStrategy> for i32 {
    fn wire2api(self) -> TermsMatchingStrategy {
        match self {
            0 => TermsMatchingStrategy::Last,
            1 => TermsMatchingStrategy::First,
            2 => TermsMatchingStrategy::Frequency,
            3 => TermsMatchingStrategy::Size,
            4 => TermsMatchingStrategy::Any,
            5 => TermsMatchingStrategy::All,
            _ => unreachable!("Invalid variant for TermsMatchingStrategy: {}", self),
        }
    }
}
impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for MimirIndexSettings {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.searchable_fields.into_dart(),
            self.filterable_fields.into_dart(),
            self.sortable_fields.into_dart(),
            self.ranking_rules.into_dart(),
            self.stop_words.into_dart(),
            self.synonyms.into_dart(),
            self.typos_enabled.into_dart(),
            self.min_word_size_for_one_typo.into_dart(),
            self.min_word_size_for_two_typos.into_dart(),
            self.disallow_typos_on_words.into_dart(),
            self.disallow_typos_on_fields.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for MimirIndexSettings {}

impl support::IntoDart for Synonyms {
    fn into_dart(self) -> support::DartAbi {
        vec![self.word.into_dart(), self.synonyms.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Synonyms {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;