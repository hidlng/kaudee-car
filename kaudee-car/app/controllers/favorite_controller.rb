class FavoriteController < CommonController
  private
  def set_global
    @title = 'Favorite'
    @prefix = 'favorite'  
    @Base = Favorite
  end

  def model_params
    params.permit(
      :user_id, 
      :market_id 
    )
  end
end
