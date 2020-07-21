class SongsController < ApplicationController
#index
def index
    @songs = Song.all 
end
#show
def show
    @song = Song.find(params[:id])
    @genre = Genre.all
    @artist = Artist.all
end    
#new
def new
    @song = Song.create
end    
#edit
def edit
    @song = Song.find(params[:id])
end     
#update
def update 
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
end    
#create
def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
end    
#destroy
def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
end    

private 
#song_params
def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
end    
end
