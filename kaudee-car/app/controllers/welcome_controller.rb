class WelcomeController < ApplicationController
  #layout "application", except: [:policy, :password]

  def index
    @cars = Car.count
    @users = User.count
  end

  def policy
  end

  def password
  end

  def test
  end
end
