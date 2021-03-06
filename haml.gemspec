# Note that Haml's gem-compilation process requires access to the filesystem.
# This means that it cannot be automatically run by e.g. GitHub's gem system.
# However, a build server automatically packages the master branch
# every time it's pushed to; this is made available as the haml-edge gem.
HAML_GEMSPEC = Gem::Specification.new do |spec|
  spec.rubyforge_project = 'haml'
  spec.name = 'haml'
  spec.summary = "An elegant, structured XHTML/XML templating engine.\nComes with Sass, a similar CSS templating engine."
  spec.version = '2.3.x'
  spec.authors = ['Nathan Weizenbaum', 'Hampton Catlin']
  spec.email = 'haml@googlegroups.com'
  spec.description = <<-END
      Haml (HTML Abstraction Markup Language) is a layer on top of XHTML or XML
      that's designed to express the structure of XHTML or XML documents
      in a non-repetitive, elegant, easy way,
      using indentation rather than closing tags
      and allowing Ruby to be embedded with ease.
      It was originally envisioned as a plugin for Ruby on Rails,
      but it can function as a stand-alone templating engine.
    END

  spec.add_development_dependency 'yard', '>= 0.5.3'
  spec.add_development_dependency 'maruku', '>= 0.5.9'

  # We need the revision file to exist,
  # so we just create it if it doesn't.
  # It'll usually just get overwritten, though.
  File.open('REVISION', 'w') { |f| f.puts "(unknown)" } unless File.exist?('REVISION')
  spec.executables = ['haml', 'html2haml', 'sass', 'css2sass']
  spec.files = [
    "rails/init.rb",
    "lib/haml",
    "lib/haml/buffer.rb",
    "lib/haml/engine.rb",
    "lib/haml/error.rb",
    "lib/haml/exec.rb",
    "lib/haml/filters.rb",
    "lib/haml/helpers",
    "lib/haml/helpers/action_view_extensions.rb",
    "lib/haml/helpers/action_view_mods.rb",
    "lib/haml/helpers/xss_mods.rb",
    "lib/haml/helpers.rb",
    "lib/haml/html",
    "lib/haml/html/erb.rb",
    "lib/haml/html.rb",
    "lib/haml/precompiler.rb",
    "lib/haml/shared.rb",
    "lib/haml/template",
    "lib/haml/template/patch.rb",
    "lib/haml/template/plugin.rb",
    "lib/haml/template.rb",
    "lib/haml/util.rb",
    "lib/haml/version.rb",
    "lib/haml.rb",
    "lib/sass",
    "lib/sass/callbacks.rb",
    "lib/sass/css.rb",
    "lib/sass/engine.rb",
    "lib/sass/environment.rb",
    "lib/sass/error.rb",
    "lib/sass/files.rb",
    "lib/sass/plugin",
    "lib/sass/plugin/merb.rb",
    "lib/sass/plugin/rack.rb",
    "lib/sass/plugin/rails.rb",
    "lib/sass/plugin.rb",
    "lib/sass/repl.rb",
    "lib/sass/script",
    "lib/sass/script/bool.rb",
    "lib/sass/script/color.rb",
    "lib/sass/script/funcall.rb",
    "lib/sass/script/functions.rb",
    "lib/sass/script/lexer.rb",
    "lib/sass/script/literal.rb",
    "lib/sass/script/node.rb",
    "lib/sass/script/number.rb",
    "lib/sass/script/operation.rb",
    "lib/sass/script/parser.rb",
    "lib/sass/script/string.rb",
    "lib/sass/script/unary_operation.rb",
    "lib/sass/script/variable.rb",
    "lib/sass/script.rb",
    "lib/sass/tree",
    "lib/sass/tree/comment_node.rb",
    "lib/sass/tree/debug_node.rb",
    "lib/sass/tree/directive_node.rb",
    "lib/sass/tree/for_node.rb",
    "lib/sass/tree/if_node.rb",
    "lib/sass/tree/import_node.rb",
    "lib/sass/tree/mixin_def_node.rb",
    "lib/sass/tree/mixin_node.rb",
    "lib/sass/tree/node.rb",
    "lib/sass/tree/prop_node.rb",
    "lib/sass/tree/root_node.rb",
    "lib/sass/tree/rule_node.rb",
    "lib/sass/tree/variable_node.rb",
    "lib/sass/tree/while_node.rb",
    "lib/sass.rb",
    "bin/css2sass",
    "bin/haml",
    "bin/html2haml",
    "bin/sass",
    "test/benchmark.rb",
    "test/haml",
    "test/haml/engine_test.rb",
    "test/haml/erb",
    "test/haml/erb/_av_partial_1.erb",
    "test/haml/erb/_av_partial_2.erb",
    "test/haml/erb/action_view.erb",
    "test/haml/erb/standard.erb",
    "test/haml/helper_test.rb",
    "test/haml/html2haml",
    "test/haml/html2haml/erb_tests.rb",
    "test/haml/html2haml_test.rb",
    "test/haml/markaby",
    "test/haml/markaby/standard.mab",
    "test/haml/mocks",
    "test/haml/mocks/article.rb",
    "test/haml/results",
    "test/haml/results/content_for_layout.xhtml",
    "test/haml/results/eval_suppressed.xhtml",
    "test/haml/results/filters.xhtml",
    "test/haml/results/helpers.xhtml",
    "test/haml/results/helpful.xhtml",
    "test/haml/results/just_stuff.xhtml",
    "test/haml/results/list.xhtml",
    "test/haml/results/nuke_inner_whitespace.xhtml",
    "test/haml/results/nuke_outer_whitespace.xhtml",
    "test/haml/results/original_engine.xhtml",
    "test/haml/results/partial_layout.xhtml",
    "test/haml/results/partials.xhtml",
    "test/haml/results/render_layout.xhtml",
    "test/haml/results/silent_script.xhtml",
    "test/haml/results/standard.xhtml",
    "test/haml/results/tag_parsing.xhtml",
    "test/haml/results/very_basic.xhtml",
    "test/haml/results/whitespace_handling.xhtml",
    "test/haml/spec",
    "test/haml/spec_test.rb",
    "test/haml/template_test.rb",
    "test/haml/templates",
    "test/haml/templates/_av_partial_1.haml",
    "test/haml/templates/_av_partial_1_ugly.haml",
    "test/haml/templates/_av_partial_2.haml",
    "test/haml/templates/_av_partial_2_ugly.haml",
    "test/haml/templates/_layout.erb",
    "test/haml/templates/_layout_for_partial.haml",
    "test/haml/templates/_partial.haml",
    "test/haml/templates/_text_area.haml",
    "test/haml/templates/action_view.haml",
    "test/haml/templates/action_view_ugly.haml",
    "test/haml/templates/breakage.haml",
    "test/haml/templates/content_for_layout.haml",
    "test/haml/templates/eval_suppressed.haml",
    "test/haml/templates/filters.haml",
    "test/haml/templates/helpers.haml",
    "test/haml/templates/helpful.haml",
    "test/haml/templates/just_stuff.haml",
    "test/haml/templates/list.haml",
    "test/haml/templates/nuke_inner_whitespace.haml",
    "test/haml/templates/nuke_outer_whitespace.haml",
    "test/haml/templates/original_engine.haml",
    "test/haml/templates/partial_layout.haml",
    "test/haml/templates/partialize.haml",
    "test/haml/templates/partials.haml",
    "test/haml/templates/render_layout.haml",
    "test/haml/templates/silent_script.haml",
    "test/haml/templates/standard.haml",
    "test/haml/templates/standard_ugly.haml",
    "test/haml/templates/tag_parsing.haml",
    "test/haml/templates/very_basic.haml",
    "test/haml/templates/whitespace_handling.haml",
    "test/haml/util_test.rb",
    "test/linked_rails.rb",
    "test/sass",
    "test/sass/callbacks_test.rb",
    "test/sass/css2sass_test.rb",
    "test/sass/data",
    "test/sass/data/hsl-rgb.txt",
    "test/sass/engine_test.rb",
    "test/sass/functions_test.rb",
    "test/sass/more_results",
    "test/sass/more_results/more1.css",
    "test/sass/more_results/more1_with_line_comments.css",
    "test/sass/more_results/more_import.css",
    "test/sass/more_templates",
    "test/sass/more_templates/_more_partial.sass",
    "test/sass/more_templates/more1.sass",
    "test/sass/more_templates/more_import.sass",
    "test/sass/plugin_test.rb",
    "test/sass/results",
    "test/sass/results/alt.css",
    "test/sass/results/basic.css",
    "test/sass/results/compact.css",
    "test/sass/results/complex.css",
    "test/sass/results/compressed.css",
    "test/sass/results/expanded.css",
    "test/sass/results/import.css",
    "test/sass/results/line_numbers.css",
    "test/sass/results/mixins.css",
    "test/sass/results/multiline.css",
    "test/sass/results/nested.css",
    "test/sass/results/options.css",
    "test/sass/results/parent_ref.css",
    "test/sass/results/script.css",
    "test/sass/results/subdir",
    "test/sass/results/subdir/nested_subdir",
    "test/sass/results/subdir/nested_subdir/nested_subdir.css",
    "test/sass/results/subdir/subdir.css",
    "test/sass/results/units.css",
    "test/sass/script_test.rb",
    "test/sass/templates",
    "test/sass/templates/_partial.sass",
    "test/sass/templates/alt.sass",
    "test/sass/templates/basic.sass",
    "test/sass/templates/bork1.sass",
    "test/sass/templates/bork2.sass",
    "test/sass/templates/bork3.sass",
    "test/sass/templates/bork4.sass",
    "test/sass/templates/compact.sass",
    "test/sass/templates/complex.sass",
    "test/sass/templates/compressed.sass",
    "test/sass/templates/expanded.sass",
    "test/sass/templates/import.sass",
    "test/sass/templates/importee.sass",
    "test/sass/templates/line_numbers.sass",
    "test/sass/templates/mixin_bork.sass",
    "test/sass/templates/mixins.sass",
    "test/sass/templates/multiline.sass",
    "test/sass/templates/nested.sass",
    "test/sass/templates/nested_bork1.sass",
    "test/sass/templates/nested_bork2.sass",
    "test/sass/templates/nested_bork3.sass",
    "test/sass/templates/nested_bork4.sass",
    "test/sass/templates/nested_mixin_bork.sass",
    "test/sass/templates/options.sass",
    "test/sass/templates/parent_ref.sass",
    "test/sass/templates/script.sass",
    "test/sass/templates/subdir",
    "test/sass/templates/subdir/nested_subdir",
    "test/sass/templates/subdir/nested_subdir/_nested_partial.sass",
    "test/sass/templates/subdir/nested_subdir/nested_subdir.sass",
    "test/sass/templates/subdir/subdir.sass",
    "test/sass/templates/units.sass",
    "test/sass/to_sass_test.rb",
    "test/test_helper.rb",
    "extra/haml-mode.el",
    "extra/sass-mode.el",
    "extra/update_watch.rb",
    "Rakefile",
    "init.rb",
    ".yardopts",
    "CONTRIBUTING",
    "MIT-LICENSE",
    "README.md",
    "REVISION",
    "VERSION",
    "VERSION_NAME"
  ]
  spec.homepage = 'http://haml-lang.com/'
  spec.has_rdoc = true
  spec.rdoc_options += [
    '--title', 'Haml',
    '--main', 'README.rdoc',
    '--exclude', 'lib/haml/buffer.rb',
    '--line-numbers',
    '--inline-source'
   ]
  spec.test_files = [
    "test/haml/engine_test.rb",
    "test/haml/helper_test.rb",
    "test/haml/html2haml_test.rb",
    "test/haml/spec_test.rb",
    "test/haml/template_test.rb",
    "test/haml/util_test.rb",
    "test/sass/callbacks_test.rb",
    "test/sass/css2sass_test.rb",
    "test/sass/engine_test.rb",
    "test/sass/functions_test.rb",
    "test/sass/plugin_test.rb",
    "test/sass/script_test.rb",
    "test/sass/to_sass_test.rb"
  ]
end
