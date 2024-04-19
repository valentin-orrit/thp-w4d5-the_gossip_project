require 'bundler'
Bundler.require

require_relative 'controller'

class Router
  # attr_accessor

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "welcome"

    while true
      puts "what do you want to do?"
      puts "1\. create a new gossip"
      puts "4\. quit"
      params = gets.chomp.to_i

      case params
      when 1
        puts "you chose to create a new gossip"
        @controller.create_gossip
      when 4
        puts "see ya!"
        break
      else 
        puts "wrong input"
      end
    end
  end
end

# Router.new.perform