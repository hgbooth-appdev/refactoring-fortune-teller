class HoroscopeController < ApplicationController

  def horoscopes
    all_zodiacs = Zodiac.list
    cur = params.fetch("the_sign").to_sym
    @sign = params.fetch("the_sign").capitalize

    this_zodiac = all_zodiacs.fetch(cur)
    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "horoscope_templates/horoscope.html.erb" })
  end

end