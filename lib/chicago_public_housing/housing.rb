class ChicagoPublicHousing::Housing

  attr_accessor :name, :address, :community, :property_type, :url, :wait_list_status

  # we will store all housing objects in class memor
  @@all = []

  # we initialize with only basic attributes
  # we give default values of nil because dealing w someone elses data and
  # don't want our whole program to break if something wrong happens
  def initialize(name=nil, address=nil, community=nil, property_type=nil, url=nil, wait_list_status=nil )
    @name = name
    @address = address
    @community = community
    @property_type = property_type
    @url = url
    @wait_list_status = wait_list_status
  end
end
