class MapController < ActionController::Base
  layout "map"
  def list
    @Base = Car
    @fields = 'cars.*'
    @models = @Base.select(@fields).where(delyn: "no")

    if params.has_key?(:user_id)
      @models = @models.where(user_id: params[:user_id])
    end
    
    if params.has_key?(:pricea) and params.has_key?(:priceb)
    @min = params[:pricea].scan(/\d+/).first
    @max = params[:priceb].scan(/\d+/).first
    @models = @models.where("price >= ? and price <= ?", @min, @max)
    end

  if params.has_key?(:brand)
    @models.where(brand: params[:brand])
  end
  
    if params.has_key?(:model)
    @models.where(model: params[:model])
  end
  
    if params.has_key?(:newold)
    @models.where(newold: params[:newold])
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

    @hash = Gmaps4rails.build_markers(@models) do |car, marker|
      marker.lat car.latitude
      marker.lng car.longitude
      marker.picture ({
        "url" => "/mg_house.png",
        "width" => 15,
        "height" => 15 
      })
      marker.infowindow "<a href='kaudee:/api/v1/car/%d'>%s</a>"%[car.id, car.carname]
    end
  end

  def show
    @cars = Car.find(params[:id])
    @hash = Gmaps4rails.build_markers(@cars) do |car, marker|
      marker.lat car.latitude
      marker.lng car.longitude
      marker.infowindow car.carname
    end
  end

  def new
  end
  def ios
  end

end
