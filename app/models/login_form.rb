class LoginForm
  include ActiveModel::Model

  attr_accessor :username, :password

  validates_presence_of :username, :password
  validate :authentic_user

  def authentic_user
    user = User.find_by(:username => @username)
    if user == nil
      @errors.add("username and password", "were entered incorrectly")
    elsif user.authenticate(@password) == false
      @errors.add("username and password", "were entered incorrectly")
    end
  end

  def user_id
    User.find_by(:username => @username).id
  end

end
