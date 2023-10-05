class HomepageController < ApplicationController
  def index
    video1_time = 60*60*8 + 60*47 + 56
    video2_time = 60*60*9 + 60*3 + 42
    video3_time = 60*60*10 + 60*49 + 49
    video4_time = 60*60*8 + 60*45 + 16


    video1_link = "https://www.youtube.com/watch?v=5hWJN4J-nyI"
    video2_link = "https://www.youtube.com/watch?v=hke9xRWiVZw"
    video3_link = "https://www.youtube.com/watch?v=GBrh2bXrwZg"
    video4_link = "https://www.youtube.com/watch?v=16TlrcW3eGI"


    collection = [ [video1_link, video1_time], [video2_link, video2_time], [video3_link, video3_time], [video4_link, video4_time] ] 

    random_video = collection[ rand(4) ]

    random_time = rand( random_video[1] )

    @acim_youtube_link = random_video[0] + "&t=" + random_time.to_s + "s"
  end
end
