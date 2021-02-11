class StaticPagesController < ApplicationController
  def home
    imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]
    @img = imgs.sample
  end

  def contact
    imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]
    @img = imgs.sample
  end

  def about
    imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]
    @img = imgs.sample
  end
end
