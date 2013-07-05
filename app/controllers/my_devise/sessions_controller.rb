class MyDevise::SessionsController < Devise::SessionsController
  add_crumb 'Авторизация на сайте'
end