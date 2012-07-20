TheGoldenSeven::Application.routes.draw do
  root :to => 'Lines#index'
  
  delete 'lines/:id', :controller => 'lines', :action => 'destroy', :as => 'train_line'
  
  put 'lines/:id', :controller => 'lines', :action => 'update'
  
  get 'lines/:id/edit', :controller => 'lines', :action => 'edit', :as => 'edit_train_line'
  
  post 'lines', :controller => 'lines', :action => 'create', :as => 'train_lines'
  
  get 'lines/new', :controller => 'lines', :action => 'new', :as => 'new_train_line'
  
  get 'lines', :controller => 'lines', :action => 'index'
  
  get 'lines/:id', :controller => 'lines', :action => 'show'
  
end
