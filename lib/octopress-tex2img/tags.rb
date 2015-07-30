# tex2img
# 
# usage {% tex2img path_to_tex args-to-img-tag %}
# 

require 'octopress-image-tag'

module OctopressTex2img
  class Tags < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @texpath, *params = markup.strip.split(/\s/)
      @imgtag = Octopress::Tags::ImageTag::Tag.new(tag_name, params.join(" "), tokens)
    end

    def render(context)
      attributes = @imgtag.image(context)
      site = context.registers[:site]
      pngpath = File.join(site.source, attributes['src'])
      @texpath = File.join(site.source, @texpath)
      if !File.exists?(@texpath)
        raise ArgumentError.new("texfile[#{@texpath}] does not exist!")
      end

      if !File.exists?(pngpath) || File.stat(@texpath).mtime > File.stat(pngpath).mtime
        puts "Generating #{pngpath} from #{@texpath}"
        texdir = File.dirname(@texpath)
        pngdir = File.dirname(pngpath)
        FileUtils.mkdir_p(pngdir)
        base = @texpath.sub(/.tex$/, '')
        pdf = @texpath.sub(/.tex$/, '.pdf')
      	system "xelatex -output-directory=#{texdir} --interaction=nonstopmode #{base} >/dev/null"
      	system "convert -density 300 #{pdf} -quality 90 #{pngpath}"
        if File.exists?(pngpath)
          site.static_files << Jekyll::StaticFile.new(site,
                  site.source, File.dirname(attributes['src']),
                  File.basename(pngpath))
        end

      	FileUtils.rm_f("#{base}.aux")
      	FileUtils.rm_f("#{base}.log")
      	FileUtils.rm_f("#{base}.pdf")
      end
      @imgtag.render(context)
    end
  end
end

