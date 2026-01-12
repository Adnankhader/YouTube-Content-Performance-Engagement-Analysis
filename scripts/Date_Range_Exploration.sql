/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.
===============================================================================
*/

select
channel_name,
min(publish_date) oldest_video,
max(publish_date) newest_video,
datediff(year,min(publish_date),max(publish_date)) years_active
from youtube_video_analysis
group by channel_name
