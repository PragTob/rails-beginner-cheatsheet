require 'pdfkit'

module RailsBeginnerCheatSheet
  #
  # Command to generate a PDF using given options.
  #
  class PDFCommand
    def initialize(options)
      @options = options
    end

    def run
      contents = read_source(@options.source)
      kit = PDFKit.new(contents, page_size: @options.format,
                                 orientation: @options.orientation)
      kit.stylesheets += [css_path('print.css'), css_path('pdf.css')]
      kit.to_file(@options.dest)
    end

    private

    def read_source(path)
      fail "Source file doesn't exist: #{path}" unless File.exist? path

      begin
        contents = File.new(path, 'rb').read
      rescue
        raise "Unable to read from source file: #{path}"
      end
      contents
    end

    def css_basedir
      File.join(File.dirname(__FILE__), '..', '_site', 'stylesheets')
    end

    def css_path(basename)
      File.join(css_basedir, basename)
    end
  end
end
