/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.
===============================================================================
*/
create view date_range as
select
channel_name,
min(cast(publish_date as date)) oldest_video,
max(cast(publish_date as date)) newest_video,
datediff(year,min(publish_date),max(publish_date)) years_active
from youtube_video_analysis
group by channel_name