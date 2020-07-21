class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    
    def show
        @song = set_song()
    end

    def new
    end

    def create
        @song = Song.new
        @song.name = params[:song][:name]
        @song.artist_id = params[:song][:artist_id]
        @song.genre_id = params[:song][:genre_id]
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = set_song()
    end

    def update
        @song = set_song()
        @song.update(post_params)
        redirect_to song_path(@song)
    end

    private

    def post_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def set_song
        Song.find(params[:id])
    end
end