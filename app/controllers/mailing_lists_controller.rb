class MailingListsController < ApplicationController
  load_and_authorize_resource
  skip_load_resource :only => [:create]

  # GET /mailing_lists
  def index
    @mailing_lists = MailingList.all
  end

  # GET /mailing_lists/1
  def show
    @subscriptions = @mailing_list.subscriptions.page(params[:page]).per(params[:per]||10)
  end

  # GET /mailing_lists/new
  def new
    @mailing_list = MailingList.new
  end

  def import
    if request.patch?
      res = @mailing_list.import(params[:mailing_list][:csv_file])

      if res[:status].eql?(:error)
        flash[:error] = res[:message]
      else
        redirect_to @mailing_list, :notice => "Subscribers are importing"
      end
    end
  end

  # GET /mailing_lists/1/edit
  def edit
  end

  # POST /mailing_lists
  def create
    @mailing_list = MailingList.new(mailing_list_params)

    if @mailing_list.save
      redirect_to @mailing_list, notice: 'Mailing list was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mailing_lists/1
  def update
    if @mailing_list.update(mailing_list_params)
      redirect_to @mailing_list, notice: 'Mailing list was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mailing_lists/1
  def destroy
    @mailing_list.destroy
    redirect_to mailing_lists_url, notice: 'Mailing list was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_mailing_list
    @mailing_list = MailingList.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def mailing_list_params
    params[:mailing_list].permit(:name)
  end
end
