module Api
  module V1
    class ImageController < CommonController

      def index
      	@images = @Base.all
      	if params.has_key?(:data_id,:gubun)
      		@images.where("data_id = :arg and gubun = :gubun", {arg: params[:data_id],gubun: params[:gubun]})
      	end
      	render json: @images
      end
      def show
        @image = @Base.find(params[:id],params[:gubun])
        render json: @image
      end

      private
      def set_global
        @title = 'Image'
        @prefix = 'image'
        @Base = Image
      end

      def model_params
        params.permit(:data_id, :img,:gubun)
      end

    end
  end
end
