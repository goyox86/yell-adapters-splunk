# encoding: utf-8

module Yell #:nodoc:
  module Adapters #:nodoc:
    class Splunk < Yell::Adapters::File

      FORMAT_MAP = {
        level: "L",       # Level, e.g. 'INFO', 'WARN'
        date: "d",        # ISO8601 Timestamp
        hostname: "h",    # Hostname
        pid: "p",         # PID
        progname: "P",    # Progname
        thread_id: "t",   # Thread ID
        file: "F",        # Path with filename where the logger was called
        method: "M",      # Method name where the logger was called
        line: "n",        # Line number
        message: "m"      # The actual message
      }

      setup do |options|
        options[:format] = FORMAT_MAP.map { |k, v| "#{k}=\%#{v}" }.join(',')
      end
    end

    register(:splunk, Yell::Adapters::Splunk)
  end
end