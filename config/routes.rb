TheGoldenSeven::Application.routes.draw do
  
  post 'lines', :controller => 'lines', :action => 'create'
  
  get 'lines/new', :controller => 'lines', :action => 'new'
  
  get 'lines', :controller => 'lines', :action => 'index'
  
end
