class ArtistsController < ApplicationController
    def show
        @artist = set_artist()
    end

    def new
    end

    def create
        @artist = Artist.new
        @artist.name = params[:artist][:name]
        @artist.bio = params[:artist][:bio]
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = set_artist()
    end

    def update
        @artist = set_artist()
        @artist.update(post_params)
        redirect_to artist_path(@artist)
    end

    private

    def post_params
        params.require(:artist).permit(:name, :bio)
    end

    def set_artist
        Artist.find(params[:id])
    end
end