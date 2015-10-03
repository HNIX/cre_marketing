class MailTemplatesController < ApplicationController
  load_and_authorize_resource
  skip_load_resource :only => [:create, :new]

  # before_action :set_template, only: [:show, :edit, :update, :destroy]

  # GET /templates
  def index
    @templates = MailTemplate.all
  end

  # GET /templates/1
  def show
  end

  # GET /templates/new
  def new
    @template = MailTemplate.new
  end

  # GET /templates/1/edit
  def edit
  end

  # POST /templates
  def create
    @template = MailTemplate.new(template_params)

    if @template.save
      redirect_to @template, notice: 'Template was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /templates/1
  def update
    if @template.update(template_params)
      redirect_to @template, notice: 'Template was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /templates/1
  def destroy
    @template.destroy
    redirect_to templates_url, notice: 'Template was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_template
    @template = MailTemplate.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def template_params
    params[:mail_template].permit(:html, :name)
  end

end
