class User < Application
  default from: "rajkoti05.com"

  def welcome_email(user)
    mail(to: 'rajkoti05@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
