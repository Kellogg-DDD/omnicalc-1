class ApplicationController < ActionController::Base

  include ActionView::Helpers::NumberHelper

  def payment
    render({ :template => "/layouts/payment.html.erb" })
  end

  def payment_calculate 
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_principal").to_f
    @payment = (@apr/100*@principal)/(1 - (1 + @apr/100)**(-@years))
    @paymentMonthly = @payment/12
    @principalFormatted = number_to_currency(@principal)
    @aprFormatted = number_to_percentage(@apr)
    @paymentMonthlyFormatted = number_to_currency(@paymentMonthly)
    render({ :template => "/layouts/payment_results.html.erb" })
  end

  def random
    render({ :template => "/layouts/random.html.erb" })
  end

  def random_calculate
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @randomNum = rand(@min...@max)
    render({ :template => "/layouts/random_results.html.erb" })
  end

  def square
    render({ :template => "/layouts/square.html.erb" })
  end
  
  def square_calculate
    @number = params.fetch("number").to_f
    @squared = @number * @number
    render({ :template => "/layouts/square_results.html.erb" })
  end

  def square_root
    render({ :template => "/layouts/square_root.html.erb" })
  end

  def square_root_calculate
    @number2 = params.fetch("number").to_f
    @squareRoot = Math.sqrt(@number2)
    render({ :template => "/layouts/square_root_results.html.erb" })
  end

end
