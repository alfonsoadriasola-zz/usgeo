class DataPoint < ActiveRecord::Base


  def map_url
    map_url =  %Q{
    http://maps.google.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=12&size=512x512&maptype=hybrid&markers=color:red|label:A|40.702147,-74.015794&sensor=false}
    address = asciiname.sub(/ /,"+") << ","<< admin1_code
    map_url=  map_url.sub("Brooklyn+Bridge,New+York,NY",address )
    map_url = map_url.sub("markers=color:blue|label:A|40.702147,-74.015794","markers=color:blue|label:A|#{latitude},#{longitude}")    
  end


end

