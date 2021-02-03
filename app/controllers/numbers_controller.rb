class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @monkey = Array.new

    5.times do
      tiger = rand(1...100)

      @monkey.push(tiger)
    end

    render({ :template => "lottery_stuff/ohno.html.erb"})
  end
end
