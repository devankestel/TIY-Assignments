class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  def new
  end
  def create
    person = Person.create(name: params[:name], subject: params[:subject], github_account: params[:github_account])
    redirect_to '/people'
  end
end
