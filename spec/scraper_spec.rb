require_relative "../config/environment.rb"

describe "#get_page" do
  it "returns a Nokogiri html Document" do
    scraper = ChicagoPublicHousing::Scraper.new

    expect(scraper.get_page.class).to eq(Nokogiri::HTML::Document)

  end
end
