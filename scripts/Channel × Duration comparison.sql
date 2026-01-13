create view channel_distribution as

with classification_by_length as (
select
case 
	when duration_sec<180
		then 'Short Length'
	when duration_sec<720
		then 'Medium Length'
	else 'Long Length'
end as video_length,
*
from youtube_video_analysis
)
select 
channel_name,
video_length,
count(*) number_of_videos,
avg(views) average_views,
avg(engagement_rate) average_engagement
from classification_by_length
group by channel_name,
video_length
