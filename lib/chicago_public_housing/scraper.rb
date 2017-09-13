class ChicagoPublicHousing::Scraper

  #make_housing which will initialize objects with
  # basic information about every public housing project in chicago
  # I should be able to, say, test the length of a hash

  # here is the url

  def self.get_page(url="http://www.thecha.org/residents/public-housing/find-public-housing/")
    Nokogiri::HTML(open(url))
  end

  # this should return an array of html elements that each have basic info
  # on chicago public housing

  def self.get_array_of_housing_rows

    # something is wrong with the syntax here
    #housing = get_page.xpath("//@class['list-view-desc']")
    housing = get_page.css("div.list-view-desc")

  end

  # calls ChicagoPublicHousing::Housing.new_from_index_page(r)
  def make_housing
    self.class.get_array_of_housing_rows.each do |r|
      ChicagoPublicHousing::Housing.new_from_nokogiri_object(r)
    end
  end

end
