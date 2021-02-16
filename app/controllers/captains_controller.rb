class CaptainsController < ApplicationController
    def index
        cap_list = Captain.all
        @caps = cap_list
    end
end
