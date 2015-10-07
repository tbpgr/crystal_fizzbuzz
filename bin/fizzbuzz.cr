require "../src/fizzbuzz"
require "option_parser"

begin
  OptionParser.parse! do |parser|
    parser.banner = "Usage: fizzbuzz limit"
    parser.on("-v", "--version", "Show version") { puts Fizzbuzz::VERSION; exit 0 }
    parser.on("-h", "--help", "Show this help") { puts parser; exit 0 }
  end

  ARGV.first?.try do |arg|
    STDOUT << Fizzbuzz::Executor.new(arg.to_i).fizzbuzz.join(",") + "\n"
  end
rescue e
  STDERR.puts e
  exit 1
end

