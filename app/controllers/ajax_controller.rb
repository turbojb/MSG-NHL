class AjaxController < ApplicationController
  
  layout "application"

  def enter 
    #puts request.remote_addr
    #params[:entry][:user_ip] = request.remote_ip

    #if verified_request?

    @entry = Entry.new(params[:entry]) 

      respond_to do |format|
        if @entry.save
          format.js 
        else
          @entry.errors
          format.js
        end
      end

   
  end


  
end
