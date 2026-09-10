create database youtubecreatordb;
USE youTubecreatordb;
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;
1) Total number of videos
SELECT COUNT(*) AS total_videos
FROM youtube_creator_data;

2. Overall channel performance
SELECT Top 10 
    SUM(views) AS total_views,
    SUM(likes) AS total_likes,
    SUM(comments) AS total_comments,
    SUM(watch_hours) AS total_watch_hours,
    SUM(subscribers_gained) AS total_subscribers_gained
FROM youtube_creator_data;

3. Top 10 videos by views
SELECT Top 10 
video_id,title,category,views,likes,comments
FROM youtube_creator_data 
ORDER BY views DESC

4) Top 10 videos by subscribers gained
SELECT Top 10 
video_id, title,category,subscribers_gained
FROM youtube_creator_data
ORDER BY subscribers_gained DESC

5) Average CTR and retention
SELECT
ROUND(AVG(ctr_pct), 2) AS average_ctr,
ROUND(AVG(retention_pct), 2) AS average_retention
FROM youtube_creator_data;

6) Performance by category
SELECT
category,COUNT(*) AS total_videos,
SUM(views) AS total_views,
ROUND(AVG(views), 2) AS average_views,
ROUND(AVG(ctr_pct), 2) AS average_ctr,
ROUND(AVG(retention_pct), 2) AS average_retention,
SUM(subscribers_gained) AS total_subscribers_gained
FROM youtube_creator_data
GROUP BY category
ORDER BY total_views DESC;

7) Best upload hours based on average views
SELECT upload_hour,
COUNT(*) AS videos_uploaded,ROUND(AVG(views), 2) AS average_views
FROM youtube_creator_data
GROUP BY upload_hour
ORDER BY average_views DESC;

8) Top 10 videos by engagement rate
SELECT Top 10 
video_id,title,views,likes,comments,ROUND(((likes + comments) * 100.0 / NULLIF(views, 0)),2) AS engagement_rate
FROM youtube_creator_data
ORDER BY engagement_rate DESC

9) Top 10 videos by audience retention
SELECT Top 10 video_id, title, retention_pct, views
FROM youtube_creator_data
ORDER BY retention_pct DESC

10) Top performing videos based on views and subscribers gained
SELECT Top 10 
video_id, title, category, views, subscribers_gained, ctr_pct, retention_pct
FROM youtube_creator_data
ORDER BY views DESC, subscribers_gained DESC
