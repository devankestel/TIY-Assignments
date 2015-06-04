class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  def new
    @action = "create"
  end
  def create
    person = Person.create(name: params[:name], subject: params[:subject], github_account: params[:github_account])
    redirect_to '/people'
  end
  def edit
    @person = Person.find(params[:id])
    @action = "#{params[:id]}/update"
    render :new
  end
  def update
    person = Person.find(params[:id]).update(name: params[:name], subject: params[:subject], github_account: params[:github_account])
    redirect_to '/people'
  end
  def destroy
    person = Person.find(params[:id]).destroy
    redirect_to '/people'
  end
end
