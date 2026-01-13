create view best_upload_day as
select
upload_day,
count(*) number_of_videos,
avg(views) average_views,
avg(likes) average_likes,
avg(comments) average_comments,
avg(engagement_rate) as average_engagement
from youtube_video_analysis
group by upload_day