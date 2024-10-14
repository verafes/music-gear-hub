class InstrumentsController < ApplicationController
  before_action :set_instrument, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /instruments or /instruments.json
  def index
    @instruments = Instrument.all.order("created_at desc")
  end

  # GET /instruments/1 or /instruments/1.json
  def show
    @instrument = Instrument.find(params[:id])
    @line_item = LineItem.new
  end

  # GET /instruments/new
  def new
    @instrument = current_user.instruments.build
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments or /instruments.json
  def create
    @instrument = current_user.instruments.build(instrument_params)

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to @instrument, notice: "Instrument was successfully created." }
        format.json { render :show, status: :created, location: @instrument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1 or /instruments/1.json
  def update
    puts "Instrument Params: #{instrument_params.inspect}"
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to @instrument, notice: "Instrument was successfully updated." }
        format.json { render :show, status: :ok, location: @instrument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1 or /instruments/1.json
  def destroy
    @instrument.destroy!

    respond_to do |format|
      format.html { redirect_to instruments_path, status: :see_other, notice: "Instrument was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instrument_params
      params.require(:instrument).permit(:name, :category, :description, :price_per_day, :available, :condition, :image)
    end
end
