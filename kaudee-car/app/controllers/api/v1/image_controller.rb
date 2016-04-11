module Api
  module V1
    class ImageController < CommonController

      def index
      	@images = @Base.all
      	if params.has_key?(:car_id)
      		@images.where("car_id = :arg", {arg: params[:car_id]})
      	end
      	render json: @images
      end
      def show
        @image = @Base.find(params[:id])
        render json: @image
      end

      private
      def set_global
        @title = 'Image'
        @prefix = 'image'
        @Base = Image
      end

      def model_params
        params.permit(:car_id, :img)
      end

    end
  end
end
