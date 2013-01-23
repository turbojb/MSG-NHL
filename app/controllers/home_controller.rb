class HomeController < ApplicationController
  def main
  	@oauth = Koala::Facebook::OAuth.new(MSGNhl::Application.config.fb_app_id, MSGNhl::Application.config.fb_app_secret, MSGNhl::Application.config.this_domain)

    

    if params[:signed_request]
      @signed_request = @oauth.parse_signed_request(params[:signed_request])
      new_oauth_token = @oauth.parse_signed_request(params[:signed_request])["oauth_token"]
      @graph = Koala::Facebook::GraphAPI.new(new_oauth_token)
    else 
      @signed_request = false
    end

  	respond_to do |format|
      format.html # index.html.erb
    end
  end
end
