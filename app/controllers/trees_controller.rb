class TreesController < ApplicationController

    def index 
        @trees = Tree.all
        render json: @trees
    end

    def show 
        @tree = Tree.find(params[:id])
        render json: @tree
       
    end
    
    def create
        Tree.create(
            height: params[:height],
            age: params[:age]
        )
        render json: @trees
    end

    def update
        tree = Tree.find(params[:id])
        tree.update(
            height: params[:height],
            age: params[:age]
        )
        render json: tree
    end

    def destroy 
        tree = Tree.find(params[:id])
        tree.update(
            height: params[:height],
            age: params[:age])
            render json: {message: "tree deleted sucessully"}
    end

    
end
