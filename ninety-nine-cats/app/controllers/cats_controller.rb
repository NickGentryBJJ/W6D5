class CatsController < ApplicationController

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            render json: @cat
        else
            render json: @cat.errors.full_messages
        end
    end

    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def update
        #find the cat
        #modify the cat
        #render the cat
        @cat = Cat.find(params[:id])
        @cat.update(cat_params)
        if @cat.save
            render json: @cat
        else
            render json: @cat.errors.full_messages
        end 
    end

    def new
        @cat = Cat.new
        render :new
    end

    def edit
        @cat = Cat.find(params[:id])
        render :edit
    end

    private
    def cat_params
        params.permit(:birth_date, :color, :name, :sex, :description)
    end
end
