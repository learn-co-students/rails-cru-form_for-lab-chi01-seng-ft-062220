class GenresController < ApplicationController
    def show
        @genre = set_genre()
    end

    def new
    end

    def create
        @genre = Genre.new
        @genre.name = params[:genre][:name]
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = set_genre()
    end

    def update
        @genre = set_genre()
        @genre.update(post_params)
        redirect_to genre_path(@genre)
    end

    private

    def post_params
        params.require(:genre).permit(:name)
    end

    def set_genre
        Genre.find(params[:id])
    end
end