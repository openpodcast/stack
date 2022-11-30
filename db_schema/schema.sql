CREATE DATABASE IF NOT EXISTS openpodcast;
USE openpodcast;

DROP TABLE IF EXISTS events;
CREATE TABLE events (
  account_id INTEGER NOT NULL,
  ev_userhash CHAR(64) AS (SHA2(CONCAT_WS("",JSON_UNQUOTE(ev_raw->"$.ip"),JSON_UNQUOTE(ev_raw->'$."user-agent"')), 256)) STORED,
  ev_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ev_raw JSON,
  PRIMARY KEY (account_id, ev_timestamp)
);

DROP TABLE IF EXISTS spotifyPodcastDetailedStreams;
CREATE TABLE spotifyPodcastDetailedStreams (
  account_id INTEGER NOT NULL,
  sps_date DATE NOT NULL,
  sps_starts INTEGER NOT NULL,
  sps_streams INTEGER NOT NULL,
  PRIMARY KEY (account_id, sps_date)
);

DROP TABLE IF EXISTS spotifyEpisodeDetailedStreams;
CREATE TABLE spotifyEpisodeDetailedStreams (
  account_id INTEGER NOT NULL,
  episode_id VARCHAR(128) NOT NULL,
  sps_date DATE NOT NULL,
  sps_starts INTEGER NOT NULL,
  sps_streams INTEGER NOT NULL,
  PRIMARY KEY (account_id, episode_id, sps_date)
);

DROP TABLE IF EXISTS spotifyPodcastListeners;
CREATE TABLE spotifyPodcastListeners (
  account_id INTEGER NOT NULL,
  spl_date DATE NOT NULL,
  spl_count INTEGER NOT NULL,
  PRIMARY KEY (account_id, spl_date)
);

DROP TABLE IF EXISTS spotifyPodcastFollowers;
CREATE TABLE spotifyPodcastFollowers (
  account_id INTEGER NOT NULL,
  spf_date DATE NOT NULL,
  spf_count INTEGER NOT NULL,
  PRIMARY KEY (account_id, spf_date)
);

DROP TABLE IF EXISTS spotifyEpisodeListeners;
CREATE TABLE spotifyEpisodeListeners (
  account_id INTEGER NOT NULL,
  episode_id VARCHAR(128) NOT NULL,
  spl_date DATE NOT NULL,
  spl_count INTEGER NOT NULL,
  PRIMARY KEY (account_id, episode_id, spl_date)
);

DROP TABLE IF EXISTS spotifyEpisodeAggregate;
CREATE TABLE spotifyEpisodeAggregate (
  account_id INTEGER NOT NULL,
  episode_id VARCHAR(128) NOT NULL,
  spa_date DATE NOT NULL,
  spa_facet CHAR(8) NOT NULL,
  spa_facet_type ENUM ('age','age_sum','country') NOT NULL, 
  spa_gender_not_specified INTEGER NOT NULL,
  spa_gender_female INTEGER NOT NULL,
  spa_gender_male INTEGER NOT NULL,
  spa_gender_non_binary INTEGER NOT NULL,
  PRIMARY KEY (account_id, episode_id, spa_date, spa_facet_type, spa_facet)
);

DROP TABLE IF EXISTS spotifyPodcastAggregate;
CREATE TABLE spotifyPodcastAggregate (
  account_id INTEGER NOT NULL,
  spa_date DATE NOT NULL,
  spa_facet CHAR(8) NOT NULL,
  spa_facet_type ENUM ('age','age_sum','country') NOT NULL, 
  spa_gender_not_specified INTEGER NOT NULL,
  spa_gender_female INTEGER NOT NULL,
  spa_gender_male INTEGER NOT NULL,
  spa_gender_non_binary INTEGER NOT NULL,
  PRIMARY KEY (account_id, spa_date, spa_facet_type, spa_facet)
);

DROP TABLE IF EXISTS spotifyEpisodePerformance;
CREATE TABLE spotifyEpisodePerformance (
  account_id INTEGER NOT NULL,
  episode_id VARCHAR(128) NOT NULL,
  spp_median_percentage TINYINT unsigned NOT NULL DEFAULT '0',
  spp_median_seconds MEDIUMINT unsigned NOT NULL DEFAULT '0',
  spp_percentile_25 TINYINT unsigned NOT NULL DEFAULT '0',
  spp_percentile_50 TINYINT unsigned NOT NULL DEFAULT '0',
  spp_percentile_75 TINYINT unsigned NOT NULL DEFAULT '0',
  spp_percentile_100 TINYINT unsigned NOT NULL DEFAULT '0',
  spp_sample_rate MEDIUMINT unsigned NOT NULL DEFAULT '0',
  spp_sample_max INTEGER unsigned NOT NULL DEFAULT '0',
  spp_sample_seconds INTEGER unsigned NOT NULL DEFAULT '0',
  -- detailed samples stored as json to reduce rows in DB
  -- otherwise we would add e.g. 3000 rows for just one episode  
  spp_samples JSON NOT NULL,
  PRIMARY KEY (account_id, episode_id)
);

DROP TABLE IF EXISTS spotifyPodcastMetadata;
CREATE TABLE spotifyPodcastMetadata (
  account_id INTEGER NOT NULL,
  spm_date DATE NOT NULL,
  spm_total_episodes INTEGER NOT NULL,
  spm_starts INTEGER NOT NULL,
  spm_streams INTEGER NOT NULL,
  spm_listeners INTEGER NOT NULL,
  spm_followers INTEGER NOT NULL,
  PRIMARY KEY (account_id, spm_date)
);

DROP TABLE IF EXISTS spotifyEpisodeMetadata;
CREATE TABLE spotifyEpisodeMetadata (
  account_id INTEGER NOT NULL,
  episode_id VARCHAR(128) NOT NULL,
  ep_name VARCHAR(2048) NOT NULL,
  ep_url VARCHAR(2048),
  ep_artwork_url VARCHAR(2048),
  ep_release_date DATE,
  ep_description TEXT,
  ep_explicit BOOLEAN,
  ep_duration INTEGER,
  ep_language VARCHAR(100),
  -- no clue what sparkLine is (was always empty)
  ep_spark_line JSON,
  ep_has_video BOOLEAN,
  PRIMARY KEY (account_id, episode_id)
);

DROP TABLE IF EXISTS spotifyEpisodeMetadataHistory;
CREATE TABLE spotifyEpisodeMetadataHistory (
  account_id INTEGER NOT NULL,
  episode_id VARCHAR(128) NOT NULL,
  epm_date DATE NOT NULL,
  epm_starts INTEGER NOT NULL,
  epm_streams INTEGER NOT NULL,
  epm_listeners INTEGER NOT NULL,
  PRIMARY KEY (account_id, episode_id, epm_date)
);

DROP TABLE IF EXISTS appleEpisodeMetadata;
CREATE TABLE appleEpisodeMetadata (
  account_id INTEGER NOT NULL,
  episode_id BIGINT NOT NULL,
  ep_name VARCHAR(2048) NOT NULL,
  ep_collection_name VARCHAR(255) NOT NULL,
  ep_release_datetime DATETIME NOT NULL,
  ep_release_date DATE NOT NULL,
  ep_guid VARCHAR(64) NOT NULL,
  ep_number INTEGER,
  ep_type VARCHAR(255) NOT NULL,
  PRIMARY KEY (account_id, episode_id)
);

DROP TABLE IF EXISTS appleEpisodeDetails;
CREATE TABLE appleEpisodeDetails (
  account_id INTEGER NOT NULL,
  episode_id BIGINT NOT NULL,
  aed_playscount INTEGER NOT NULL,
  aed_totaltimelistened BIGINT NOT NULL,
  aed_uniqueengagedlistenerscount INTEGER NOT NULL,
  aed_uniquelistenerscount INTEGER NOT NULL,
  aed_engagedplayscount INTEGER NOT NULL,
  aed_play_histogram JSON,
  aed_play_top_cities JSON,
  aed_play_top_countries JSON,
  aed_histogram_max_listeners INTEGER,
  aed_quarter1_median_listeners INTEGER,
  aed_quarter2_median_listeners INTEGER,
  aed_quarter3_median_listeners INTEGER,
  aed_quarter4_median_listeners INTEGER,
  PRIMARY KEY (account_id, episode_id)
);

-- listeners values per day and per episode coming from the apple trends api
DROP TABLE IF EXISTS appleTrendsEpisodeListeners;
CREATE TABLE appleTrendsEpisodeListeners (
  account_id INTEGER NOT NULL,
  episode_id BIGINT NOT NULL,
  atl_date DATE NOT NULL,
  atl_playscount INTEGER NOT NULL,
  atl_totaltimelistened BIGINT NOT NULL,
  atl_uniqueengagedlistenerscount INTEGER NOT NULL,
  atl_uniquelistenerscount INTEGER NOT NULL,
  PRIMARY KEY (account_id, episode_id, atl_date)
);

-- listeners values per day and per podcast coming from the apple trends api
DROP TABLE IF EXISTS appleTrendsPodcastListeners;
CREATE TABLE appleTrendsEpisodePodcastListeners (
  account_id INTEGER NOT NULL,
  atl_date DATE NOT NULL,
  atl_playscount INTEGER NOT NULL,
  atl_totaltimelistened BIGINT NOT NULL,
  atl_uniqueengagedlistenerscount INTEGER NOT NULL,
  atl_uniquelistenerscount INTEGER NOT NULL,
  PRIMARY KEY (account_id, atl_date)
);

-- followers, gained/lost values per day
DROP TABLE IF EXISTS appleTrendsPodcastFollowers;
CREATE TABLE appleTrendsEpisodePodcastFollowers (
  account_id INTEGER NOT NULL,
  atf_date DATE NOT NULL,
  atf_totalfollowers INTEGER NOT NULL,
  atf_gained INTEGER NOT NULL,
  atf_lost INTEGER NOT NULL,
  PRIMARY KEY (account_id, atf_date)
);