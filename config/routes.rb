Rails.application.routes.draw do

  root 'home#index'

  get 'contact', to: 'home#contact', as: 'contact'
  get 'flashcards', to: 'home#flashcards', as: 'flashcards'
  get 'resume', to: 'home#resume', as: 'resume'

end
