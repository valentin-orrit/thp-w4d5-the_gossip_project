require 'bundler'
Bundler.require

require_relative 'gossip'
require_relative 'view'

class Controller

  def create_gossip 
    @view = View.new
    params = @view.create_gossip
    @gossip = Gossip.new(params[:author], params[:content])
    @gossip.save
  end
end