require 'octopress-tex2img/version'
require 'octopress-ink'

module OctopressTex2img
  autoload :Tags,            'octopress-tex2img/tags'
end

Liquid::Template.register_tag('tex2img', OctopressTex2img::Tags)

Octopress::Ink.add_plugin({
  name:          "Octopress Tex2img",
  slug:          "octopress-tex2img",
  gem:           "octopress-tex2img",
  path:          File.expand_path(File.join(File.dirname(__FILE__), "..")),
  version:       OctopressTex2img::VERSION,
  description:   "Generate image from tex source file and insert into markdown",
  source_url:    "https://github.com/wantee/octopress-tex2img",
  website:       "https://github.com/wantee/octopress-tex2img"
})
