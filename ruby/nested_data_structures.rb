## NESTED DATA STRUCTURES
# MUSIC PROFILE - SOUNDCLOUD

#PROFILE NAME/ID#
  #USER INFO
    #LOCATION
    #GENRE
    #CONTACT
    #FOLLOWERS
    #FOLLOWING
    #TRACKS
  #PROFILE CONTENT
    #RECENTLY REPOSTED TRACKS
      #
      #
      #
    #LIKES
      #
      #
    #PLAYLISTS
      #1
      #2
      #3
    #TRACKS

soundcloud_profile = {
  username: "",
  user_info: {
    location: "San Diego", 
    user_genre: "nu-disco", 
    contact_info: "xyz", 
    followers: 245, 
    following: 360, 
    tracks: 0
    },
  repost_content: [
    "repost 1",
    "repost 2",
    "repost 3"
    ],
  likes: [
    "like_1",
    "like_2",
    "like_3"
    ],
  playlists: {
    playlist_1: [
      "one song",
      "two songs",
      "three songs"
      ],
    playlist_2: "Chill",
    playlist_3: "Friday"
    },
  tracks: [
    "track_1",
    "track_2"
    ] 
}

p "User Genre: #{soundcloud_profile[:user_info][:user_genre]}"
p "Repost #2: #{soundcloud_profile[:repost_content][2]}"
p "Playlist #1, Track #1: #{soundcloud_profile[:playlists][:playlist_1][1]}"
p "Track #1: #{soundcloud_profile[:tracks][1]}"