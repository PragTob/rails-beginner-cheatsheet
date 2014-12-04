require 'optparse'

#
# Site namespace.
#
module RailsBeginnerCheatSheet
  DEFAULT_PDF_OPTIONS = {
    source: './_site/index.html',
    dest: './RailsBeginnerCheatSheet.pdf',
    format: 'Letter',
    orientation: 'Landscape'
  }

  #
  # Options for creating a PDF from a file.
  #
  class PDFOptions
    def initialize(args, defaults = nil)
      @options = defaults || DEFAULT_PDF_OPTIONS
      parse_options(args)
    end

    def source
      @options[:source]
    end

    def dest
      @options[:dest]
    end

    def format
      @options[:format]
    end

    def orientation
      @options[:orientation]
    end

    private

    def parse_options(args)
      OptionParser.new do |opts|
        opts.banner = 'Usage: makepdf [options]'

        [
          ['-s', '--source PATH', 'Source path', :source],
          ['-d', '--dest PATH', 'Destination path', :dest],
          ['-f', '--format SIZE', 'Page format', :format],
          ['-o', '--orientation VALUE', 'Page orientation', :orientation]
        ].each do |short, long, desc, sym|
          opts.on(short, long, desc) { |v| @options[sym] = v }
        end

      end.parse(args)
    end
  end
end
