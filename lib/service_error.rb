class ServiceError < StandardError

  attr_accessor :status_code, :message

  def initialize(msg, status_code)
    super(msg)

    @message = msg
    @status_code = status_code
  end

end