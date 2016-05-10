require "active_error/version"

module ActiveError
  def self.new(error, message = nil, backtrace: caller)
    exception = error.new(message)
    exception.set_backtrace(backtrace)
    exception
  end
end
