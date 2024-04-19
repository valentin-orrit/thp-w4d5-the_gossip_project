require 'bundler'
Bundler.require

class View
  def create_gossip
    puts "what's your name?"
    @author = gets.chomp

    puts "what's your gossip?"
    @content = gets.chomp

    return params = {author: @author, content: @content}
  end
end