require 'octopress-tex2img/version'
require 'octopress-ink'

Octopress::Ink.add_plugin({
  name:          "Octopress Tex2img",
  slug:          "octopress-tex2img",
  gem:           "octopress-tex2img",
  path:          File.expand_path(File.join(File.dirname(__FILE__), "..")),
  version:       OctopressTex2img::VERSION,
  description:   "",                                # What does your theme/plugin do?
  source_url:    "https://github.com/wantee/octopress-tex2img", # <- Update info
  website:       "https://github.com/wantee/octopress-tex2img"                                 # Optional project website
})
