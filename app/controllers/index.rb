get '/' do
  @users = User.includes(:followers, :followings)
  erb :index
end