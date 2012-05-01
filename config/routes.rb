TheGoldenSeven::Application.routes.draw do
  
  get 'lines/new', :controller => 'lines', :action => 'new'
  
  get 'lines', :controller => 'lines', :action => 'index'
  
end
