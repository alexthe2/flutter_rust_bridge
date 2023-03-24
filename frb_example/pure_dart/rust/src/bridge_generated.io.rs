use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_get_app_settings_in_result(port_: i64) {
    wire_get_app_settings_in_result_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_get_vector_of_app_settings(port_: i64, count: usize) {
    wire_get_vector_of_app_settings_impl(port_, count)
}

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

// Section: wire structs

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
