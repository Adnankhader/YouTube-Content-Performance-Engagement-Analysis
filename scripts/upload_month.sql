create view upload_month as
select
	month(publish_date) month_number,
	upload_month,
	count(*) number_of_videos,
	avg(views) average_views,
	avg(likes) average_likes,
	avg(comments) average_comments,
	avg(engagement_rate) as average_engagement
from youtube_video_analysis
group by upload_month,month(publish_date)
