module Api
  module V1
    class ImageController < CommonController

      def index
      	@images = @Base.all
      	if params.has_key?(:room_id)
      		@images.where("room_id = :arg", {arg: params[:room_id]})
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
        params.permit(:room_id, :img)
      end

    end
  end
end
