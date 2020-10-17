class DiceController < ApplicationController

  def diceRoll
    
    @numDice = params.fetch("numDice")
    @numFaces = params.fetch("numFaces")

    @rollArray = Array.new

    @numDice.to_i.times do    
      @rollArray.push(rand(@numFaces.to_i) + 1)
    end

    render({ :template => "dice_templates/flexRoll.html.erb" })

  end
end
