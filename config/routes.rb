Rails.application.routes.draw do

  root 'home#index'

  get 'flashcards', to: 'home#flashcards', as: 'flashcards'

end
