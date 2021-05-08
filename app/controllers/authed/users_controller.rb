module Authed
  class UsersController < AuthedController
    before_action :set_user, only: %i[update]

    # GET /users/1/edit
    def edit
      @user = current_user
      current_user.weights.build unless current_user.weights.present?
    end

    # PATCH/PUT /users/1 or /users/1.json
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to dieta_path, notice: 'User was successfully updated.' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:height, weights_attributes: [:value])
    end
  end
end
