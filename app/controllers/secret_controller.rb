class SecretController < ApplicationController
  http_basic_authenticate_with :name => "kerhoff", :password => "kerhoff" 
  def index
  end
end
