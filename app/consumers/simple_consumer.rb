class SimpleConsumer
  include Hutch::Consumer
  consume 'routing.*'

  def process(message)
    logger.info "Message received! #{message}"
  end

end
