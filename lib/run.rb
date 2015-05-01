require 'net/http'
require 'openssl'
require 'json'

# Setup environment.
@api_key = "AIzaSyAtcvFapM83OIxjJ4YQeP4EzZIYkNZolmk"
@referer = "192.168.0.1"
# @username = "mttwrnr"

def api_path(path)
  # Create URI.
  uri = URI.parse("https://www.googleapis.com/books/v1/volumes/#{path}")
  # Create API request.
  request = Net::HTTP.new(uri.host, uri.port)
  request.use_ssl = true
  request.verify_mode = OpenSSL::SSL::VERIFY_NONE
  response = request.get(uri.request_uri, {"Referer" => "#{@referer}"})
  # Parse response if any.
  return response.body
end

# volumes?userIp=192.168.0.1&&key=
 

# Get "Uploads" playlist ID for username
results = api_path("channels?q=isbn%3A0316346624&key=#{@api_key}")
puts results
# @uploads_playlist_id = results["items"][0]["contentDetails"]["relatedPlaylists"]["uploads"]
 
# # Get "Uploads" playlist items.
# results = api_path("playlistItems?part=snippet&maxResults=50&playlistId=#{@uploads_playlist_id}&key=#{@api_key}")
# playlist_items = results["items"]
# while results["nextPageToken"]
#   # Add additional items if results are paged.
#   results = api_path("playlistItems?part=snippet&maxResults=50&pageToken=#{results["nextPageToken"]}&playlistId=#{@uploads_playlist_id}&key=#{@api_key}")
#   playlist_items += results["items"]
# end
# # Get videos with statistics for playlist items.
# videos = []
# playlist_items.each_slice(10) do |items|
#   video_ids = items.collect {|item| item["snippet"]["resourceId"]["videoId"] }
#   results = api_path("videos?part=snippet,statistics,contentDetails&id=#{video_ids.join(",")}&key=#{@api_key}")
#   videos += results["items"]
# end
# jj videos
 
# # Get playlists for username.
# results = api_path("channels?part=snippet,contentDetails,statistics,status&maxResults=50&forUsername=#{@username}&key=#{@api_key}")
# @channel_id = results["items"][0]["id"]
# results = api_path("playlists?part=snippet&maxResults=50&channelId=#{@channel_id}&key=#{@api_key}")
# playlists = results["items"]
# jj playlists
