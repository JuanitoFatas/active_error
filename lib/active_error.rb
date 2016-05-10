require "active_error/version"

module ActiveError
  def self.new(error_class_or_message=nil, message = nil, backtrace: caller)
    if error_class_or_message.is_a? Class
      error_class = error_class_or_message
      error_msg = message
    else
      error_class =  StandardError
      error_msg = error_class_or_message.to_s
    end

    exception = error_class.new(error_msg)
    exception.set_backtrace(backtrace)
    exception
  end
end
