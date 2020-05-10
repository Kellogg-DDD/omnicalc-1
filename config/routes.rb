Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "square" })

  get("/square/new/", { :controller => "application", :action => "square" })
  get("/square/results/", { :controller => "application", :action => "square_calculate" })

  get("/square_root/new/", { :controller => "application", :action => "square_root" })
  get("/square_root/results/", { :controller => "application", :action => "square_root_calculate" })

  get("/payment/new/", { :controller => "application", :action => "payment" })
  get("/payment/results/", { :controller => "application", :action => "payment_calculate" })

  get("/random/new/", { :controller => "application", :action => "random" })
  get("/random/results/", { :controller => "application", :action => "random_calculate" })

  # Write your routes above this line
  # =================================

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
