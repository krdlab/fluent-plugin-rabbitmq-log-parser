module Fluent
  class RabbitMQLogParser < Parser
    Plugin.register_parser("multiline_rabbitmq_log", self)

    def initialize
      @firstline_regexp = Regexp.new("=(?<level>[^ ]+) REPORT==== (?<logtime>[^ \\n]+) ===\\n")
      @regexp = Regexp.new("=(?<level>[^ ]+) REPORT==== (?<logtime>[^ \\n]+) ===\\n(?<message>.+)\\n", Regexp::MULTILINE)
      @parser = Fluent::TextParser::RegexpParser.new(@regexp)
    end

    def configure(conf)
      super
    end

    def has_firstline?
      true
    end

    def firstline?(text)
      @firstline_regexp.match(text)
    end

    def parse(text, &block)
      @parser.call(text, &block)
    end
  end
end
