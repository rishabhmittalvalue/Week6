class CompaniesController < ApplicationController
  def index
    render({ :template => "companies/index" })
  end
end
