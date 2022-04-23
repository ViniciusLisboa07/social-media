Rails.application.routes.draw do
  root "home#index"

  get "home" => "home#index"

  route :login do
    create as: "login", bare: true
  end
end
