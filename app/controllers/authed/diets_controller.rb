module Authed
  class DietsController < AuthedController
    before_action :set_diet, only: %i[edit update]

    # GET /diets/new
    def new
      @diet = Diet.new
    end

    # GET /diets/1/edit
    def edit; end

    # POST /diets or /diets.json
    def create
      @diet = Diet.new(diet_params)
      @diet.user_id = current_user.id

      respond_to do |format|
        if @diet.save
          format.html { redirect_to dieta_path, notice: 'Diet was successfully created.' }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /diets/1 or /diets/1.json
    def update
      respond_to do |format|
        if @diet.update(diet_params)
          format.html { redirect_to dieta_path, notice: 'Diet was successfully updated.' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = Diet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diet_params
      params.require(:diet).permit(:start_at, :finish_at, :ideal_weight,
                                   diet_items_attributes: %i[id meal schedule description _destroy])
    end
  end
end
