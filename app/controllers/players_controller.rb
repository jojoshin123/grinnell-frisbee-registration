class PlayersController < ApplicationController
    def newAction
        @CaptainList = Captain.all
        @Player = Player.new
    end

    def roster
        @img = selectRandomImage
        newAction
    end

    def create
        # Get id from selected Captain
        cap = Captain.find_by_name(player_params[:captain])

        @Player = Player.new(name: player_params[:name], captain_id: cap.id)
        if @Player.save
            flash[:success] = "Player " + @Player.name + " was successfully saved to " + cap.name + "'s roster!"
        else
            flash[:danger]= "Player failed to save; please try again"
        end
        redirect_to '/roster'
    end

    def destroy
        playerID = params[:id]
        playerName = Player.find_by(id: params[:id]).name
        Player.destroy(playerID)
        flash[:success]= "Player " + playerName + " was successfully deleted!"
        redirect_to current_captain
    end


    private
        # selectRandomImage defines an array of all images in the app/assets/images directory and selects a random element
        def selectRandomImage
            imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]
            return imgs.sample
        end

        # strong params for form
        def player_params
            params.require(:player).permit(:captain, :name)
        end
  
end
