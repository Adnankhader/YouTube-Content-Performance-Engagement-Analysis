/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

create view channel_performance as 
select y.channel_name,
s.subscribers,
count(video_id) number_of_videos_uploaded,
sum(views) total_views,
avg(views) average_views_per_video,
avg(y.views_per_day) as average_views_per_day,
sum(likes) total_likes,
avg(likes) average_likes_per_video,
sum(comments) total_comments,
avg(comments) average_comments_per_video,
avg(duration_sec) average_video_duration,
avg(engagement_rate) average_engagement_percentage
from youtube_video_analysis y
left join youtube_channel_subsctibers s
on y.channel_name=s.channel_name
group by y.channel_name,
s.subscribers
