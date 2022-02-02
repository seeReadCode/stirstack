class ProjectsController < ApplicationController
  def new
    props = {
      project: {
        title: ''
      }
    }
    render inertia: 'Projects/Form', props: props
  end

  def edit
    project = Project.find(params[:id])
    render inertia: 'Projects/Form', props: {
      project: project.as_json
    }
  end

  def create
    project = Project.new project_params
    if project.save
      redirect_to project_path(project)
    else
      redirect_to new_project_path, inertia: { errors: project.errors }
    end
  end

  def update
    project = Project.includes(:items, :project).find(params[:id])
    if project.update(project_params)
      redirect_to project_path(project)
    else
      redirect_to edit_project_path(project), inertia: { errors: project.errors }
    end
  end

  def index
    props = {
      projects: Project.all.order('updated_at desc').map do |project|
        project.as_json(
          only: %i[id title]
        ).merge(
          edit_url: edit_project_path(project)
        )
      end,
      new_url: new_project_path
    }
    render inertia: 'Projects/Index', props: props
  end

  def show
    project = Project.find(params[:id])
    render inertia: 'Projects/Show', props: {
      project: project.as_json,
      index_url: projects_path
    }
  end

  private

  def project_params
    params.require(:project).permit(:title)
    # params.require(:project).permit(:title, todos_attributes: [:id, :title, :completed])
  end
end
