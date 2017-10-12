class WelcomeController < ApplicationController
  def index

  end

  def contact_form
     if !params[:name].nil?
	  	c = ContactForm.new(:name => params[:name], :email => params[:email], :message => params[:message], :tel => params[:tel])
	  	c.deliver
  	  redirect_to root_path
  	end
  end
end
