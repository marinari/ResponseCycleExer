class ListingsController < ApplicationController
  
  def index
  end

  def send_email
    
    fn = params[:firstname]
    puts ">>>>"
    puts fn
    ln = params[:lastname]
    phnum = params[:user][:phone]
    puts phnum
    email = params[:user][:address]
    puts email 
    stdate = params[:user][:start_date]
    puts stdate
    eddate = params[:user][:end_date]
    puts eddate

    BookingMailer.new_inquiry(fn, ln, phnum, email, stdate, eddate).deliver
  end
  
end
