class ImageController < CommonController
  
  def new
  end

  def show
  end

  private
  def set_global
    @title = 'Image'
    @prefix = 'image'
    @Base = Image
  end

  def model_params
    params.permit(
      :market_id,
      :img
    )
  end
end
