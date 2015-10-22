class DrillingsController < ApplicationController
  before_action :set_drill, only: [:new, :destroy]
  before_action :set_flashcard, only: [:new, :destroy]
  
  def create
    @drill.flashcards << @flashcard
    redirect_to edit_drill_path(@drill)
  end

  def destroy
    @drill.flashcards.destroy(params[:flashcard_id])
    redirect_to edit_drill_path(@drill)
  end
  
  private
    def set_drill
      @drill = Drill.find(params[:drill_id])
    end

    def set_flashcard
      @flashcard = Flashcard.find(params[:flashcard_id])
    end
    
    def drill_params
      params.require(:drill).permit(:name, :drill_id, :flashcard_id)
    end
end
