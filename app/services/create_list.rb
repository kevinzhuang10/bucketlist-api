class CreateList
  def initialize(name:, user_id:)
    @name = name
    @user_id = user_id
  end

  def call
    list = List.create(name: name, user: user)
    Result.new(status: :ok, payload: list)
  end

  private

  attr_reader :name, :user_id

  def user
    User.find(user_id)
  end
end