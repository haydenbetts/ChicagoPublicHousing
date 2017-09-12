class ChicagoPublicHousing::CLI

  def call
    # call scraper function #make_housing which will initialize objects with
    # basic information about every public housing project in chicago
    puts "Welcome to Chicago Public Housing"
    # call #start
  end

  def start
    # #puts a list of zip codes of all public housing objects.

    puts "Which zip codes are you interested in?"
    # input = gets.strip.to_i

    # print_housing(input). print_housing is CLI instance method which
    # will structure and print basic data about all housing objects

    puts ""
    puts "What public housing would you like more information on?"
    #input = gets.strip

    # Housing.find_and_populate_by_name will search class variable @@all for
    # Housing.find_and_populate_by_name will determine whether the house instance
    # we have searched for
    # a) exists
    # b) is fully populated with all details. If not, call
    # Housing.fully_populate. This will scrape rest of data, assign to attributes?
    # house = ChicagoPublicHousing::Housing.find_by_name(input)

    # print_house(house). Print_house will return all information about housing
    # project in a structured manner

    puts ""
    puts "Would you like to see another restaurant? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    else
      puts ""
      puts "Thankyou! Have a great day!"
      exit
    end
  end

  def print_house(house)
  end

  def print_housing(housing)

    end
  end
end
