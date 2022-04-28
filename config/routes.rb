Rails.application.routes.draw do
    root 'learn_student#index', as: 'week'
    get 'week/new' => 'learn_student#new', as: 'new_week'
    get 'week/:id' => 'learn_student#show', as: 'week'
    post 'week' => 'learn_student#create'
end
