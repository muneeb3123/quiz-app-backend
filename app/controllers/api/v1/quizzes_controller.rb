class Api::V1::QuizzesController < ApplicationController

    def index
        @quizzes = Quiz.all
        render json: @quizzes
    end

    def show
        @quiz = Quiz.find(params[:id])
        render json: @quiz
    end

    def create
        @quiz = Quiz.new(quiz_params)
        if @quiz.save
            render json: @quiz
        else
            render json: {error: 'Error creating quiz'}
        end
    end

    def destroy
        @quiz = Quiz.find(params[:id])
        @quiz.destroy
    end

    private

    def quiz_params
        params.require(:quiz).permit(:question, :answer, :subject_id)
    end
end
