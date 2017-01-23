class SimpleConsumer
  include Hutch::Consumer
  consume '*'

  def process(message)
  end

end
