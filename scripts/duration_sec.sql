create view duration as
select
	duration_sec,
	views,
	engagement_rate
from youtube_video_analysis