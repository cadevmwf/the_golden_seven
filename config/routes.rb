TheGoldenSeven::Application.routes.draw do
  
  delete 'lines/:id', :controller => 'lines', :action => 'destroy'
  
  put 'lines/:id', :controller => 'lines', :action => 'update'
  
  get 'lines/:id/edit', :controller => 'lines', :action => 'edit'
  
  post 'lines', :controller => 'lines', :action => 'create'
  
  get 'lines/new', :controller => 'lines', :action => 'new'
  
  get 'lines', :controller => 'lines', :action => 'index'
  
  get 'lines/:id', :controller => 'lines', :action => 'show'
  
end
