class StaticPagesController < ApplicationController

  def home
    @img = selectRandomImage
  end

  def contact
    @img = selectRandomImage
  end

  def about
    @img = selectRandomImage
  end

  private
  def selectRandomImage
    imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]
    return imgs.sample
  end

end
