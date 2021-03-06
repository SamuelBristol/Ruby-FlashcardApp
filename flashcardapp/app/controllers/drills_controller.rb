class DrillsController < ApplicationController
  before_action :set_drill, only: [:show, :edit, :update, :destroy]

  # GET /drills
  # GET /drills.json
  def index
    @drills = Drill.order(:name).page(params[:page]).per(5)
  end

  # GET /drills/1
  # GET /drills/1.json
  def show
  end

  # GET /drills/new
  def new
    @drill = Drill.new
  end

  # GET /drills/1/edit
  def edit
    @drillcard_ids = @drill.flashcards.select(:id)
    @flashcards = Flashcard.where('id NOT IN (?)', @drillcard_ids)
  end

  # POST /drills
  # POST /drills.json
  def create
    @drill = Drill.new(drill_params)

    respond_to do |format|
      if @drill.save
        format.html { redirect_to @drill, notice: 'Drill was successfully created.' }
        format.json { render :show, status: :created, location: @drill }
      else
        format.html { render :new }
        format.json { render json: @drill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drills/1
  # PATCH/PUT /drills/1.json
  def update
    respond_to do |format|
      if @drill.update(drill_params)
        format.html { redirect_to @drill, notice: 'Drill was successfully updated.' }
        format.json { render :show, status: :ok, location: @drill }
      else
        format.html { render :edit }
        format.json { render json: @drill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drills/1
  # DELETE /drills/1.json
  def destroy
    @drill.destroy
    respond_to do |format|
      format.html { redirect_to drills_url, notice: 'Drill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drill
      @drill = Drill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drill_params
      params.require(:drill).permit(:name, :flashcard_id)
    end
end
