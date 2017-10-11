# Prefix Verb   URI Pattern                                                         Controller#Action
#                 users GET    /users(.:format)                                                    users#index
#                       POST   /users(.:format)                                                    users#create
#              new_user GET    /users/new(.:format)                                                users#new
#             edit_user GET    /users/:id/edit(.:format)                                           users#edit
#                  user GET    /users/:id(.:format)                                                users#show
#                       PATCH  /users/:id(.:format)                                                users#update
#                       PUT    /users/:id(.:format)                                                users#update
#                       DELETE /users/:id(.:format)                                                users#destroy
# quiz_question_answers GET    /quizzes/:quiz_id/questions/:question_id/answers(.:format)          answers#index
#                       POST   /quizzes/:quiz_id/questions/:question_id/answers(.:format)          answers#create
# new_quiz_question_answer GET    /quizzes/:quiz_id/questions/:question_id/answers/new(.:format)      answers#new
# edit_quiz_question_answer GET    /quizzes/:quiz_id/questions/:question_id/answers/:id/edit(.:format) answers#edit
#  quiz_question_answer GET    /quizzes/:quiz_id/questions/:question_id/answers/:id(.:format)      answers#show
#                       PATCH  /quizzes/:quiz_id/questions/:question_id/answers/:id(.:format)      answers#update
#                       PUT    /quizzes/:quiz_id/questions/:question_id/answers/:id(.:format)      answers#update
#                       DELETE /quizzes/:quiz_id/questions/:question_id/answers/:id(.:format)      answers#destroy
#        quiz_questions GET    /quizzes/:quiz_id/questions(.:format)                               questions#index
#                       POST   /quizzes/:quiz_id/questions(.:format)                               questions#create
#     new_quiz_question GET    /quizzes/:quiz_id/questions/new(.:format)                           questions#new
#    edit_quiz_question GET    /quizzes/:quiz_id/questions/:id/edit(.:format)                      questions#edit
#         quiz_question GET    /quizzes/:quiz_id/questions/:id(.:format)                           questions#show
#                       PATCH  /quizzes/:quiz_id/questions/:id(.:format)                           questions#update
#                       PUT    /quizzes/:quiz_id/questions/:id(.:format)                           questions#update
#                       DELETE /quizzes/:quiz_id/questions/:id(.:format)                           questions#destroy
#               quizzes GET    /quizzes(.:format)                                                  quizzes#index
#                       POST   /quizzes(.:format)                                                  quizzes#create
#              new_quiz GET    /quizzes/new(.:format)                                              quizzes#new
#             edit_quiz GET    /quizzes/:id/edit(.:format)                                         quizzes#edit
#                  quiz GET    /quizzes/:id(.:format)                                              quizzes#show
#                       PATCH  /quizzes/:id(.:format)                                              quizzes#update
#                       PUT    /quizzes/:id(.:format)                                              quizzes#update
#                       DELETE /quizzes/:id(.:format)                                              quizzes#destroy





Rails.application.routes.draw do
  get 'sessions/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'

  post '/quizzes/:id', to: 'guess#create', as: :guess
  resources :users


  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end

  root 'sessions#new'

end
