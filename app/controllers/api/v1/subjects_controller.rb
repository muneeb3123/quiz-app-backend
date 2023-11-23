class Api::V1::SubjectsController < ApplicationController

    def index
        @subjects = Subject.all
        render json: @subjects
    end

    def show
        @subject = Subject.find(params[:id])
        render json: {message: "hy"}
    end

    def create
        @subject = Subject.new(subject_params)
        if @subject.save
            render json: {status: 'SUCCESS', message: 'Saved subject', data: @subject}, status: :ok
        else
            render json: {message: 'Subject not saved', data: @subject.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        @subject = Subject.find(params[:id])
        @subject.destroy
        render json: {message: 'Subject deleted'}, status: :ok
    end
end

private

def subject_params
    params.require(:subject).permit(:sub_name, :sub_img);
end