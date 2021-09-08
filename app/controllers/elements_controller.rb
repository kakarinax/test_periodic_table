class ElementsController < ApplicationController
  before_action :set_element, only: %i[ show edit update destroy ]

  def all_elements
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
  end

  # GET /elements or /elements.json
  def index
    @elements = all_elements
  end

  # GET /elements/1 or /elements/1.json
  def show
    @element = Element.find(params[:id])
  end

  # GET /elements/new
  def new
    @element = Element.new
  end

  # GET /elements/1/edit
  def edit
  end

  # POST /elements or /elements.json
  def create
    @element = Element.new(element_params)

    respond_to do |format|
      if @element.save
        format.html { redirect_to @element, notice: "Element was successfully created." }
        format.json { render :show, status: :created, location: @element }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elements/1 or /elements/1.json
  def update
    respond_to do |format|
      if @element.update(element_params)
        format.html { redirect_to @element, notice: "Element was successfully updated." }
        format.json { render :show, status: :ok, location: @element }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elements/1 or /elements/1.json
  def destroy
    @element.destroy
    respond_to do |format|
      format.html { redirect_to elements_url, notice: "Element was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_element
      @element = Element.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def element_params
      params.require(:element).permit(:order, :name, :appearance, :atomic_mass, :boil, :category, :color, :density, :discovered_by, :melt, :molat_heat, :named_by, :number, :period, :phase, :source, :spectral_img, :summary, :symbol, :xpos, :ypos, :shells, :electron_configuration, :electron_configuration_semantic, :electron_affinity, :electronegativity_pauling, :ionization_energies)
    end
end
