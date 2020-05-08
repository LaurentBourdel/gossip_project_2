class WelcomeController < ApplicationController
  def first_name
    @all_gossips= Gossip.all
  end
end
