class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  
	def get_links
		require 'rubygems'
		require 'mechanize'
		agent=Mechanize.new{|agent| agent.user_agent_alias="Mac Safari"}
		page=agent.get('https://www.wikipedia.org/')
		pp page
	end
end