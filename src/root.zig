//! pidgn_template - Standalone Template Engine from the Pidgn Web Framework
//!
//! A comptime Mustache-like template engine with HTML escaping, conditionals,
//! loops, partials, pipes, and named yield blocks.

const engine = @import("engine.zig");

pub const template = engine.template;
pub const templateWithPartials = engine.templateWithPartials;
pub const parse = engine.parse;
pub const Segment = engine.Segment;
pub const html_escape = @import("html_escape.zig");

// i18n hook — pidgn.zig installs a translator here before each render. See
// `engine.TranslateFn` for the callback signature.
pub const TranslateFn = engine.TranslateFn;
pub const setTranslator = engine.setTranslator;
pub const setLocale = engine.setLocale;
pub const clearI18n = engine.clearI18n;

test {
    _ = engine;
    _ = html_escape;
}
