use super::*;
// Section: wire functions

#[wasm_bindgen]
pub fn wire_get_app_settings_in_result(port_: MessagePort) {
    wire_get_app_settings_in_result_impl(port_)
}

#[wasm_bindgen]
pub fn wire_get_vector_of_app_settings(port_: MessagePort, count: usize) {
    wire_get_vector_of_app_settings_impl(port_, count)
}

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

// Section: impl Wire2Api for JsValue

impl Wire2Api<usize> for JsValue {
    fn wire2api(self) -> usize {
        self.unchecked_into_f64() as _
    }
}
