class PostgresConfig
  include Command

  def initialize(receiver, params = nil)
    @receiver = receiver
    @params = params
  end

  def execute
    receiver.generate(:scaffold, "person name:string")
    receiver.route "root to: 'people#index'"
  end

  private

  attr_reader :receiver, :params
end
