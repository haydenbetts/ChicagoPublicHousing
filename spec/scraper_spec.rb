require_relative "../config/environment.rb"
page = "fixtures/chi_public_housing.html"

describe "#get_page" do
  it "returns a Nokogiri html Document" do
    scraper = ChicagoPublicHousing::Scraper.new

    expect(scraper.get_page(page).class).to eq(Nokogiri::HTML::Document)

  end
end

  # the next test I want to run is on whether we are initializing name
  # properly

  describe "#make_housing" do
    it "makes the first entry in the @@all class var in the ChicagoPublicHousing::Housing
       class have the name we expect " do
       scraper = ChicagoPublicHousing::Scraper.new
       housing_object = ChicagoPublicHousing::Housing.new

       scraper.make_housing
       expect(housing_object.class.all[0].name).to eq("ABLA / Brooks Homes")
    end
end
