# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mustache` gem.
# Please instead update this file by running `bin/tapioca gem mustache`.

class Mustache
  def initialize(options = T.unsafe(nil)); end

  def [](key); end
  def []=(key, value); end
  def compiled?; end
  def context; end
  def escape(value); end
  def escapeHTML(str); end
  def initialize_settings; end
  def partial(name); end
  def path; end
  def raise_on_context_miss=(boolean); end
  def raise_on_context_miss?; end
  def render(data = T.unsafe(nil), ctx = T.unsafe(nil)); end
  def render_file(name, context = T.unsafe(nil)); end
  def template; end
  def template=(template); end
  def template_extension; end
  def template_extension=(template_extension); end
  def template_file; end
  def template_file=(template_file); end
  def template_name; end
  def template_name=(template_name); end
  def template_path; end
  def template_path=(path); end

  private

  def templateify(obj); end

  class << self
    def classify(underscored); end
    def compiled?; end
    def const_from_file(name); end
    def inheritable_config_for(attr_name, default); end
    def inherited(subclass); end
    def initialize_settings; end
    def partial(name); end
    def path; end
    def path=(path); end
    def raise_on_context_miss=(boolean); end
    def raise_on_context_miss?; end
    def render(*args); end
    def render_file(name, context = T.unsafe(nil)); end
    def rescued_const_get(name); end
    def template; end
    def template=(template); end
    def template_extension; end
    def template_extension=(template_extension); end
    def template_file; end
    def template_file=(template_file); end
    def template_name; end
    def template_name=(template_name); end
    def template_path; end
    def template_path=(path); end
    def templateify(obj, options = T.unsafe(nil)); end
    def underscore(classified = T.unsafe(nil)); end
    def view_class(name); end
    def view_namespace; end
    def view_namespace=(namespace); end
    def view_path; end
    def view_path=(path); end
  end
end

class Mustache::Context
  def initialize(mustache); end

  def [](name); end
  def []=(name, value); end
  def current; end
  def escape(value); end
  def fetch(name, default = T.unsafe(nil)); end
  def find(obj, key, default = T.unsafe(nil)); end
  def has_key?(key); end
  def mustache_in_stack; end
  def partial(name, indentation = T.unsafe(nil)); end
  def pop; end
  def push(new_obj); end
  def template_for_partial(partial); end

  private

  def find_in_hash(obj, key, default); end
end

class Mustache::ContextMiss < ::RuntimeError; end
module Mustache::Enumerable; end

class Mustache::Generator
  def initialize(options = T.unsafe(nil)); end

  def compile(exp); end

  private

  def compile!(exp); end
  def ev(s); end
  def on_etag(name, offset); end
  def on_fetch(names); end
  def on_inverted_section(name, offset, content, raw, delims); end
  def on_partial(name, offset, indentation); end
  def on_section(name, offset, content, raw, delims); end
  def on_utag(name, offset); end
  def str(s); end
end

class Mustache::Parser
  def initialize(options = T.unsafe(nil)); end

  def compile(template); end
  def ctag; end
  def ctag=(value); end
  def otag; end
  def otag=(value); end

  private

  def content_tags(type, current_ctag_regex); end
  def dispatch_based_on_type(type, content, fetch, padding, pre_match_position); end
  def error(message, pos = T.unsafe(nil)); end
  def find_closing_tag(scanner, current_ctag_regex); end
  def offset; end
  def position; end
  def regexp(thing); end
  def scan_tag_(content, fetch, padding, pre_match_position); end
  def scan_tag_!(content, fetch, padding, pre_match_position); end
  def scan_tag_=(content, fetch, padding, pre_match_position); end
  def scan_tag_block(content, fetch, padding, pre_match_position); end
  def scan_tag_close(content, fetch, padding, pre_match_position); end
  def scan_tag_comment(content, fetch, padding, pre_match_position); end
  def scan_tag_delimiter(content, fetch, padding, pre_match_position); end
  def scan_tag_inverted(content, fetch, padding, pre_match_position); end
  def scan_tag_open_partial(content, fetch, padding, pre_match_position); end
  def scan_tag_unescaped(content, fetch, padding, pre_match_position); end
  def scan_tags; end
  def scan_text; end
  def scan_until_exclusive(regexp); end

  class << self
    def add_type(*types, &block); end
    def valid_types; end
  end
end

Mustache::Parser::ALLOWED_CONTENT = T.let(T.unsafe(nil), Regexp)
Mustache::Parser::ANY_CONTENT = T.let(T.unsafe(nil), Array)
Mustache::Parser::SKIP_WHITESPACE = T.let(T.unsafe(nil), Array)

class Mustache::Parser::SyntaxError < ::StandardError
  def initialize(message, position); end

  def to_s; end
end

Mustache::Parser::VALID_TYPES = T.let(T.unsafe(nil), Array)

class Mustache::Template
  def initialize(source, options = T.unsafe(nil)); end

  def compile(src = T.unsafe(nil)); end
  def partials; end
  def render(context); end
  def sections; end
  def source; end
  def tags; end
  def to_s(src = T.unsafe(nil)); end
  def tokens(src = T.unsafe(nil)); end

  class << self
    def recursor(toks, section, &block); end
  end
end

module Mustache::Utils; end

class Mustache::Utils::String
  def initialize(string); end

  def classify; end
  def underscore(view_namespace); end
end
