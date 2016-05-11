require "active_error/version"

module ActiveError
  def self.new(error_class_or_message = nil, message = nil, backtrace: caller)
    if error_class_or_message.is_a? Class
      error_class = error_class_or_message
    else
      error_class = StandardError
      message = error_class_or_message.to_s
    end

    exception = error_class.new(message)
    exception.set_backtrace(backtrace)
    exception
  end
end
