# coding: utf-8
class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save #/models/project.rbに関係している
      redirect_to projects_path
    else
      render 'new'
    end
  end

  #セキュリティ的にホームから来るものをフィルタリングする
  private
  def project_params
    params[:project].permit(:title)
  end
  
end
