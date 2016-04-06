class MapController < ActionController::Base
  layout "map"
  def list
    @Base = Room
    @fields = 'rooms.*'
    @models = @Base.select(@fields).where(delyn: "no")

    if params.has_key?(:user_id)
      @models = @models.where(user_id: params[:user_id])
    end
    
    if params.has_key?(:deposit_base) and params.has_key?(:deposit_range)
      @min = params[:deposit_base].to_i - params[:deposit_range].to_i
      @max = params[:deposit_base].to_i + params[:deposit_range].to_i
      @models = @models.where("deposit >= ? and deposit <= ?", @min, @max)
    end

    if params.has_key?(:rent_base) and params.has_key?(:rent_range)
      @min = params[:rent_base].to_i - params[:rent_range].to_i
      @max = params[:rent_base].to_i + params[:rent_range].to_i
      @models = @models.where("rent >= ? and rent <= ?", @min, @max)
    end

    if params.has_key?(:rstruct)
      @models.where(rsturct: params[:rstruct])
    end

    if params.has_key?(:city)
      @city = params[:city]

      @finded = City.where("cityname like :arg or city_lao like :arg", {arg: "%#{@city}%"})
      @cities ||= []
      @finded.map { |c| @cities << c[:cityname] }
      @finded.map { |c| @cities << c[:city_lao] }
      @str_city = @cities.map { |c| "'#{c}'" } .join(",")
      @info = @str_city

      @models = @models.where("city like :arg or city in (#{@str_city})", {arg: "%#{@city}%"})
    end

    if params.has_key?(:district)
      @district = params[:district]
      @finded = District.where("districtname like :arg or district_lao like :arg", {arg: "%#{@district}%"})
      @dists ||= []
      @finded.map { |d| @dists << d[:districtname] }
      @finded.map { |d| @dists << d[:district_lao] }
      @str_dist = @dists.map { |d| "'#{d}'" } .join(",")
      @info = @str_dist
      @models = @models.where("district like :arg or district in (#{@str_dist})", {arg: "%#{@district}%"})
    end

    if params.has_key?(:bounds)
      @bounds = JSON(params[:bounds])
      @models = @models.where("latitude >= :swlat and latitude <= :nelat and longitude >= :swlng and longitude <= :nelng", 
          {
            swlat: @bounds[0],
            nelat: @bounds[2],
            swlng: @bounds[1],
            nelng: @bounds[3]
          })
    end

    if params.has_key?(:lat)
      @lat = params[:lat]
      if @lat.to_s.strip.length == 0
        @models = @modes.where("latitude + 0.1 >= :wlat and latitude - 0.1 <= elat", {wlat: @lat, elat: @lat})
      end
    end
    if params.has_key?(:lng)
      @lng = params[:lng]
      if @lng.to_s.strip.length == 0
        @models = @modes.where("longitude + 0.1 >= :nlng and longitude - 0.1 <= slng", {nlng: @lng, slng: @lng})
      end
    end

    @hash = Gmaps4rails.build_markers(@models) do |room, marker|
      marker.lat room.latitude
      marker.lng room.longitude
      marker.picture ({
        "url" => "/mg_house.png",
        "width" => 15,
        "height" => 15 
      })
      marker.infowindow "<a href='kaodee:/api/v1/room/%d'>%s</a>"%[room.id, room.roomname]
    end
  end

  def show
    @rooms = Room.find(params[:id])
    @hash = Gmaps4rails.build_markers(@rooms) do |room, marker|
      marker.lat room.latitude
      marker.lng room.longitude
      marker.infowindow room.roomname
    end
  end

  def new
  end
  def ios
  end

end
