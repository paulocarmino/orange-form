Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'forms/index'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'forms/show'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'forms/update'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'forms/create'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'forms/destroy'
    end
  end

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end