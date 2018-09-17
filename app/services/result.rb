class Result
  def initialize(status:, payload:)
    @status = status
    @payload = payload
  end

  def success?
    status == :ok
  end

  def failure?
    status != :ok
  end

  attr_reader :status, :payload
end