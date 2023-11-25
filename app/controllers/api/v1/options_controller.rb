class Api::V1::OptionsController < ApplicationController

    def index
        @options = Option.all
        render json: @options
    end

    def show
        @option = Option.find(params[:id])
        render json: @option
    end

    def create
        @option = Option.new(option_params)
        if @option.save
            render json: @option
        else
            render json: {error: 'Error creating option'}
        end
    end

    def destroy
        @option = Option.find(params[:id])
        @option.destroy
    end

    private

    def option_params
        params.require(:option).permit(:value1, :value2, :value3, :value4, :quiz_id)
    end
end
