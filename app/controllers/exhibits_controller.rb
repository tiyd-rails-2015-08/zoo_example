class ExhibitsController < ApplicationController
  before_action :set_exhibit, only: [:show, :edit, :update, :destroy]

  # GET /exhibits
  def index
    @exhibits = Exhibit.all
  end

  # GET /exhibits/1
  def show
  end

  # GET /exhibits/new
  def new
    @exhibit = Exhibit.new
    @exhibit.animals.build
  end

  # GET /exhibits/1/edit
  def edit
    @exhibit.animals.build
  end

  # POST /exhibits
  def create
    @exhibit = Exhibit.new(exhibit_params)

    if @exhibit.save
      redirect_to @exhibit, notice: 'Exhibit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /exhibits/1
  def update
    if @exhibit.update(exhibit_params)
      redirect_to @exhibit, notice: 'Exhibit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /exhibits/1
  def destroy
    @exhibit.destroy
    redirect_to exhibits_url, notice: 'Exhibit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibit
      @exhibit = Exhibit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exhibit_params
      params.require(:exhibit).permit(:name, :climate, :year_opened,
          animals_attributes: [:id, :name, :country, :number, :_destroy])
    end
end
