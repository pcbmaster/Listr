class CollectionsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = Collection.all
  end

  def show
  end

  def new
    @list = Collection.new
  end

  def edit
  end

  def create
    @list = Collection.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'Collection was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'Collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'Collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_list
      @list = Collection.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :description)
    end
end
