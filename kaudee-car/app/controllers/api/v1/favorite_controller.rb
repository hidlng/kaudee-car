require 'will_paginate/array'

module Api
  module V1
    class FavoriteController < CommonAPIController
      before_filter :restrict_access

      def index
        @selector = 'favorites.id, 
          favorites.user_id, favorites.room_id,
          roomname, roomname_lao,
          city, district, address, address_lao,
	  cellphone,
          rooms.tel, 
          rooms.email,
          detail_lao, detail_eng, 
          latitude, longitude, delyn,
	  deposit, deposit_unit,
	  rent, rent_unit,
	  rstruct, rcount, bcount,
	  bform, bfloor,
	  parea, aarea, options,
	  mexpenses, livedays, parkingyn, elevatoryn,
	  poolyn
	  '
        @models = Room.select(@selector).joins(:favorite)
        if params.has_key?(:user_id)
          @user_id = params[:user_id]
          @models = @models.where("favorites.user_id = #{@user_id}")
        end

        if params.has_key?(:room_ids)
          @room_ids = params[:room_ids]
          @models = @models.where("favorites.room_id in ( #{@room_ids} )")
        else
          @models = paginate @models, per_page:10
        end

        def append_img(model)
          model.image = img_urls(model.room_id)
          if model.image.nil?
            model.image = []
          end
          return model
        end

        @models = @models.map {|model| append_img(model)}
        
        render json: @models
      end

      def destroy
        if params.has_key?(:user_id) and params.has_key?(:room_id)
          @models = Favorite.where("user_id = #{params[:user_id]} and room_id = #{params[:room_id]}")
          @models.delete_all
            render json: {message: 'Resource Deleted'}
        else
          if @model.destroy
            render json: {message: 'Resource Deleted'}
          else
            render json: {message: 'Error occured'}, status:500
          end
        end
      end
      
      private
      def img_urls(roomid)
        return Image.select("id, img").where("room_id = :arg", {arg:roomid})
      end

      def set_global
        @title = 'Favorite'
        @prefix = 'favorite'
        @Base = Favorite
      end

      def model_params
        params.permit(
          :user_id,
          :room_id 
        )
      end

      def restrict_access
        apikey = User.find_by_access_token(params[:apikey])
        head :unauthorized unless apikey
      end
    end
  end
end
