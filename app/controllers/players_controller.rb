class PlayersController < ApplicationController
    def newAction
        @CaptainList = Captain.all
        @Player = Player.new
    end

    def roster
        @img = selectRandomImage
        newAction

        # @Player = Player.new(name:"John")
    end

    private
  # selectRandomImage defines an array of all images in the app/assets/images directory and selects a random element
  def selectRandomImage
    imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]
    return imgs.sample
  end
end
