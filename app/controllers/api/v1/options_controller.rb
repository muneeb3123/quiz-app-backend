class Api::V1::OptionsController < ApplicationController

    def index
        @options = Option.all
        render json: @options
    end
end
