# Created by Leiyang Guo
# With minimal assistance and advice with James Maher
# Searchadmins controller
# This file contains the controller for Searchadmins in view folder
class SearchadminsController < ApplicationController

  # GET /searchadmins
  # GET /searchadmins.json
  
  # Define Searchadmins/index.html.erb actions
  def index
    # Set showResult to false upon first time click search to hide search header
    @showResult = false
    
    # Shows result if something is been searched
    if !(params[:q].blank?)
      @showResult = true#code
    end
    
    # Check database for a match
    @search = Login.search(params[:q])
    @searchadmin = @search.result
    @search.build_condition if @search.conditions.empty?
    
    # Session variable store saved list
    session[:sResult] = Array.new
  end
  
  # Define Searchadmins/add.html.erb actions
  def add
    @objectIds = session[:sResult]
  end
end