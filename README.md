# fluent-plugin-rabbitmq-log-parser

Fluentd Parser Plugin for RabbitMQ log.

## Installation

```sh
$ git clone https://github.com/krdlab/fluent-plugin-rabbitmq-log-parser && cd fluent-plugin-rabbitmq-log-parser
$ gem build fluent-plugin-rabbitmq-log-parser.gemspec
$ sudo td-agent-gem install fluent-plugin-rabbitmq-log-parser.gem
```

## Configuration

```
<source>
  type tail
  path /var/log/rabbitmq/rabbit@hostname.log
  format multiline_rabbitmq_log
  tag rabbitmq.log
</source>
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
