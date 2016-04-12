Authentication::Engine.routes.draw do
  devise_for :users,
    class_name: 'User', module: :devise, path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      confirmation: 'verification',
      unlock: 'unblock',
      registration: 'register',
      sign_up: 'signup'
    }
end
