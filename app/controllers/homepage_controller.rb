class HomepageController < ApplicationController

  def index
    videos = [
      { link: "https://www.youtube.com/watch?v=5hWJN4J-nyI", duration: 60*60*8 + 60*47 + 56 },
      { link: "https://www.youtube.com/watch?v=hke9xRWiVZw", duration: 60*60*9 + 60*3 + 42 },
      { link: "https://www.youtube.com/watch?v=GBrh2bXrwZg", duration: 60*60*10 + 60*49 + 49 },
      { link: "https://www.youtube.com/watch?v=16TlrcW3eGI", duration: 60*60*8 + 60*45 + 16 }
    ]
  
    random_video = videos.sample
    random_time = rand(random_video[:duration])
  
    @acim_youtube_link = "#{random_video[:link]}&t=#{random_time}s"
  end
  
end
