require_relative "../config/environment.rb"
page = "fixtures/chi_public_housing.html"

describe "#get_page" do
  it "returns a Nokogiri html Document" do
    scraper = ChicagoPublicHousing::Scraper.new

    expect(scraper.get_page(page).class).to eq(Nokogiri::HTML::Document)

  end
end

## maybe test get_array_of_housing_rows to see if it actually returns
## the array of nokogiri_objects I am interested in?
## this one also takes a long time to run?
describe "#get_array_of_housing_rows" do
  it "returns an array of nokogiri_objects, this first of which
     contains the text: ABLA / Brooks Homes" do
     scraper = ChicagoPublicHousing::Scraper.new

     housing_array = scraper.get_array_of_housing_rows
     expect(housing_array[0].css("a").text).to eq("ABLA / Brooks Homes")
  end
end


  ## TODO currently return nil
  ## TODO his text take a long time to run...
  describe "#make_housing" do
    it "makes the first entry in the @@all class var in the ChicagoPublicHousing::Housing
       class have the name we expect " do
       scraper = ChicagoPublicHousing::Scraper.new
       housing_object = ChicagoPublicHousing::Housing.new

       scraper.make_housing
       expect(housing_object.class.all[0].name).to eq("ABLA / Brooks Homes")
    end
end
