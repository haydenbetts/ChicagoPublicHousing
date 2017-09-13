class ChicagoPublicHousing::Housing

  attr_accessor :name, :address, :community, :property_type, :url, :wait_list_status

  # we will store all housing objects in class memor
  @@all = []

  # we initialize with only basic attributes
  # we give default values of nil because dealing w someone elses data and
  # don't want our whole program to break if something wrong happens
  def initialize(name=nil)
    @name = name
    #@address = address
    #@community = community
    #@property_type = property_type
    #@url = url
    #@wait_list_status = wait_list_status
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_from_nokogiri_object(nokogiri_object)
    self.new(
      nokogiri_object.css("a").text
      )
  end

  # TODO do I need a doc function?
#  def doc
    # TODO currently only getting one array object
#    @doc ||= ChicagoPublicHousing::Scraper.get_array_of_housing_rows[0]
#  end



end
