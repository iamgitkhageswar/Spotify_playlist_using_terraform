resource "spotify_playlist" "Bollywood" {
  name = "Bindas bollywood"

  tracks = [
    "2KeUpfBTRy7RTHEdGUmOZU"
  ]
}

data "spotify_search_track" "ariana_grande" {
  artist = "ariana grande"
}

resource "spotify_playlist" "ariana_grande" {
  name = "My Ariana Grande Playlist"
  tracks = [
    for track in data.spotify_search_track.ariana_grande.tracks : track.id
  ]
}
