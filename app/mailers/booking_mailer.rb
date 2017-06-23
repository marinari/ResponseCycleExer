class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_inquiry.subject
  #

  def new_inquiry(fn, ln, phnum, email, stdate, eddate)
    @greeting = "Hi"
    @adm_user = "Johnny"

    @cust_name = "#{fn} + #{ln}"
    @startdate = stdate
    @enddate = eddate
    @phnum = phnum
    @emadd = email

    mail to: "arianna.marin@coxautoinc.com",
         subject: "New Booking Request from"
  end
end
