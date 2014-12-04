require 'rake'
require_relative 'lib/pdf_options'
require_relative 'lib/pdf_command'

namespace :cheatsheet do
  task :create_pdf do
    2.times { ARGV.shift }
    sh 'jekyll build'
    options = RailsBeginnerCheatSheet::PDFOptions.new(ARGV)
    begin
      RailsBeginnerCheatSheet::PDFCommand.new(options).run
      puts "Created #{options.dest} from #{options.source}"
    rescue e
      abort(e.message)
    end
  end
end
