class DonationController < ApplicationController
  def new
  end
  
  
  def create
    @donation = Donation.new 
    Stripe::Charge.create({
  amount: @donation.amount * 2000, # convert to cents
  currency: 'usd',
  source: params[stripe_token],
  description: Donation
})

@donation.save

    flash[:success] = 'Thank you for your donation!'
    redirect_to root_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    render :new
  end
  private
  def donation_parms 
    params.require(:donation.permit(:first_name, :last_name, :email, :amount))
  end
end


