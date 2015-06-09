# Created by Leiyang Guo
# With minimal assistance and advice with James Maher
# Searchusers controller
# This file contains the controller for Searchusers in view folder
class SearchusersController < ApplicationController
  # GET /searchusers
  # GET /searchusers.json
  
  # Define Searchusers/index.html.erb actions
  def index
    # Set showResult to false upon first time click search to hide search header
    @showResult = false
    
    # Shows result if something is been searched
    if !(params[:q].blank?)
      @showResult = true#code
    end
    
    # Check database for a matching user
    @search = Login.joins('LEFT OUTER JOIN users ON users.login_id = logins.id').search(params[:q])
    
    #uncomment code below if searchable attribute is FUNCTIONAL
    #@search = Login.joins('LEFT OUTER JOIN users ON users.login_id = logins.id').where('users.searchable = true').search(params[:q])
    
    @searchusers = @search.result
  end
  
  # Call back to index action and render on index.html.erb
  def search
    index
    render :index
  end
end