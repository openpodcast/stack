-- Grant metbase user access to the metabase database
CREATE USER IF NOT EXISTS 'metabase'@'%' IDENTIFIED BY 'metabaseSuperSecret';
CREATE DATABASE IF NOT EXISTS metabase;
GRANT ALL PRIVILEGES ON metabase.* TO 'metabase'@'%';
GRANT SELECT ON openpodcast.* TO 'metabase'@'%';

