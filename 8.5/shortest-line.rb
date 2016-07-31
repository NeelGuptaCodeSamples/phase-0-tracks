# IDEOLOGICAL GOAL:
#   Provide the user with a system that will aggregate different postings on social media in one place. It will *attempt* to use JSON files, but will probably simulate the data. 
#   The user will be able to perform these tasks:
#     - view already existing data in structures
#     - add a new location
#     - add a new social media platform
#     - look at individual posts, or groups by location
#     - create new, random content
#     - select content by time
#     - update content from a website

# Three tables:
#   1 > Social Media
#     - id
#     - name of social media
#     - type of content available 
#   2 > Location
#     - id
#     - name
#     - square feet
#     - total # of hits
#   3 > Hits
#     - id
#     - username
#     - timestamp 
#     - content size
#     - FOREIGN KEY: location_id
#     - FOREIGN KEY: social_media_id

#################################################

# require gems
require 'sqlite3'
require 'faker'

# social media table
social_media_db = "soc_med.sqlite"
File.delete(social_media_db) if File.exists?social_media_db

# create database
sm_DB = SQLite3::Database.new(social_media_db)
# sm_DB.execute()

# location table
location_db = "location.sqlite"
File.delete(location_db) if File.exists?location_db

# create database
location_DB = SQLite3::Database.new(location_db)
# sm_DB.execute()

# hits table
hits_db = "hits.sqlite"
File.delete(hits_db) if File.exists?hits_db

# create database
hits_DB = SQLite3::Database.new(hits_db)
# hits_DB.execute()








