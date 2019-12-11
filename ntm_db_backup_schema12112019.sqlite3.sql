BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "gtfs_shapes" (
	"shape_id"	text,
	"shape_pt_lat"	double precision,
	"shape_pt_lon"	double precision,
	"shape_pt_sequence"	int,
	"shape_dist_traveled"	double precision,
	"shape_code"	VARCHAR,
	"sup_detour_flag"	VARCHAR,
	"oa_tpat_itn_expected"	VARCHAR,
	"oa_tpat_has_all_itns"	VARCHAR,
	"booking_id"	VARCHAR,
	"oa_tpat_itn_count"	VARCHAR,
	"route_id"	VARCHAR,
	"tpat_id"	VARCHAR
);
CREATE TABLE IF NOT EXISTS "gtfs_stop_times" (
	"trip_id"	text,
	"arrival_time"	text,
	"departure_time"	text,
	"stop_id"	text,
	"stop_sequence"	int,
	"stop_headsign"	text,
	"pickup_type"	int,
	"drop_off_type"	int,
	"shape_dist_traveled"	double precision,
	"timepoint"	int,
	"arrival_time_seconds"	int,
	"departure_time_seconds"	int,
	"continuous_drop_off"	VARCHAR,
	"continuous_pickup"	VARCHAR,
	"drop_off_service_area_radius"	VARCHAR,
	"pickup_service_area_radius"	VARCHAR,
	"end_service_area_radius"	VARCHAR,
	"end_service_area_id"	VARCHAR,
	"pickup_area_id"	VARCHAR,
	"start_service_area_radius"	VARCHAR,
	"start_service_area_id"	VARCHAR,
	"drop_off_area_id"	VARCHAR,
	"checkpoint_id"	VARCHAR,
	"last_stop_on_trip"	VARCHAR,
	"note_id"	VARCHAR,
	"track"	VARCHAR,
	"geo_node_id"	VARCHAR,
	"seq"	VARCHAR,
	"distm"	VARCHAR,
	"comment"	VARCHAR,
	"shape_id"	VARCHAR,
	"stop_is_skipped"	VARCHAR,
	"stop_distance"	VARCHAR,
	"sup_est_delay"	VARCHAR,
	"area_id"	VARCHAR,
	"continuous_stops"	VARCHAR,
	"is_depart"	VARCHAR,
	"trip_direction"	VARCHAR,
	"timepoint_place_dscr"	VARCHAR,
	"ppat_id"	VARCHAR,
	"trip_index"	VARCHAR,
	"trip_route"	VARCHAR,
	"timepoint_place"	VARCHAR,
	"map_letter"	VARCHAR,
	"position_in_block"	VARCHAR,
	"stop_headsign_short"	VARCHAR,
	"stop_is_last"	VARCHAR,
	"service_area_radius"	VARCHAR,
	"bikes_allowed"	VARCHAR,
	"notice"	VARCHAR,
	"center_boarding"	VARCHAR,
	"south_boarding"	VARCHAR
);
CREATE TABLE IF NOT EXISTS "gtfs_transfers" (
	"from_stop_id"	text,
	"to_stop_id"	text,
	"transfer_type"	int,
	"min_transfer_time"	int,
	"from_route_id"	text,
	"to_route_id"	text,
	"service_id"	text,
	"min_walk_time"	TEXT,
	"min_wheelchair_time"	TEXT,
	"suggested_buffer_time"	TEXT,
	"wheelchair_transfer"	TEXT,
	"from_trip_id"	TEXT,
	"to_trip_id"	TEXT,
	"ï»¿from_stop_id"	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_fare_attributes" (
	"fare_id"	text,
	"price"	double precision,
	"currency_type"	text,
	"payment_method"	int,
	"transfers"	int,
	"transfer_duration"	int,
	"agency_id"	text,
	"youth_price"	TEXT,
	"senior_price"	TEXT,
	"ï»¿""fare_id"""	TEXT,
	"ï»¿fare_id"	TEXT,
	"fare_period_id"	VARCHAR,
	"descriptions"	VARCHAR
);
CREATE TABLE IF NOT EXISTS "gtfs_fare_rules" (
	"fare_id"	text,
	"route_id"	text,
	"origin_id"	text,
	"destination_id"	text,
	"contains_id"	text,
	"service_id"	text,
	"agency_id"	TEXT,
	"ï»¿""fare_id"""	TEXT,
	"ï»¿fare_id"	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_calendar_dates" (
	"service_id"	text,
	"date"	date,
	"exception_type"	int,
	"holiday_name"	TEXT,
	"ï»¿service_id"	TEXT,
	"exception_note"	TEXT,
	"schedule_type"	TEXT,
	"ï»¿""service_id"""	TEXT,
	"holiday"	VARCHAR
);
CREATE TABLE IF NOT EXISTS "gtfs_calendar" (
	"service_id"	text,
	"monday"	int,
	"tuesday"	int,
	"wednesday"	int,
	"thursday"	int,
	"friday"	int,
	"saturday"	int,
	"sunday"	int,
	"start_date"	date,
	"end_date"	date,
	"service_name"	TEXT,
	"ï»¿service_id"	TEXT,
	"events_and_status"	TEXT,
	"operating_days"	TEXT,
	"duty"	TEXT,
	"ï»¿""service_id"""	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_feed_info" (
	"feed_publisher_name"	text,
	"feed_publisher_url"	text,
	"feed_timezone"	text,
	"feed_lang"	text,
	"feed_version"	text,
	"feed_start_date"	text,
	"feed_end_date"	text,
	"feed_id"	TEXT,
	"feed_contact_email"	TEXT,
	"feed_contact_url"	TEXT,
	"feed_license"	TEXT,
	"ï»¿feed_id"	TEXT,
	"sign_id"	TEXT,
	"version_id"	TEXT,
	"ï»¿feed_publisher_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_trips" (
	"route_id"	text,
	"service_id"	text,
	"trip_id"	text,
	"trip_headsign"	text,
	"direction_id"	int,
	"block_id"	text,
	"shape_id"	text,
	"trip_short_name"	text,
	"trip_type"	text,
	"wheelchair_accessible"	TEXT,
	"bikes_allowed"	TEXT,
	"drt_max_travel_time"	TEXT,
	"drt_avg_travel_time"	TEXT,
	"drt_advance_book_min"	TEXT,
	"drt_pickup_message"	TEXT,
	"drt_drop_off_message"	TEXT,
	"continuous_pickup_message"	TEXT,
	"continuous_drop_off_message"	TEXT,
	"route_short_name"	TEXT,
	"fare_id"	TEXT,
	"block_name"	TEXT,
	"ext_trip_short_name"	TEXT,
	"ext_block_id"	TEXT,
	"ext_grid_id"	TEXT,
	"exceptional"	TEXT,
	"ext_atp_index"	TEXT,
	"trip_footnote"	TEXT,
	"trip_route_type"	TEXT,
	"route_pattern_id"	TEXT,
	"peak_offpeak"	TEXT,
	"ï»¿route_id"	TEXT,
	"original_trip_id"	TEXT,
	"scheduled_trip_id"	TEXT,
	"trip_bikes_allowed"	TEXT,
	"blockname"	TEXT,
	"direction_text"	TEXT,
	"direction_name"	TEXT,
	"shape_code"	TEXT,
	"trip_sort"	TEXT,
	"direction"	TEXT,
	"schd_trip_id"	TEXT,
	"trip_destination"	TEXT,
	"trip_route_name"	TEXT,
	"pub_dir_id"	TEXT,
	"rm_block_id"	TEXT,
	"ots_trip_short_name"	TEXT,
	"block_service_id"	TEXT,
	"dir_abbr"	TEXT,
	"sup_service_mod"	TEXT,
	"display_code"	TEXT,
	"trip_serial_number"	TEXT,
	"trip_headsign_short"	TEXT,
	"block"	TEXT,
	"apc_trip_id"	TEXT,
	"trip_index"	TEXT,
	"trp_time_end"	TEXT,
	"trp_place_end"	TEXT,
	"trp_place_end_descr"	TEXT,
	"trp_trip_ST"	TEXT,
	"trp_block"	TEXT,
	"trp_operating_days"	TEXT,
	"ï»¿""route_id"""	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_routes" (
	"route_id"	text,
	"agency_id"	text,
	"route_short_name"	text DEFAULT '',
	"route_long_name"	text DEFAULT '',
	"route_desc"	text,
	"route_type"	int,
	"route_url"	text,
	"route_color"	text,
	"route_text_color"	text,
	"route_sort_order"	TEXT,
	"min_headway_minutes"	TEXT,
	"eligibility_restricted"	TEXT,
	"direction0_name"	TEXT,
	"direction1_name"	TEXT,
	"route_fare_class"	TEXT,
	"line_id"	TEXT,
	"listed_route"	TEXT,
	"ï»¿route_id"	TEXT,
	"continuous_stops"	TEXT,
	"ï»¿agency_id"	TEXT,
	"route_branding_url"	TEXT,
	"service_id"	TEXT,
	"route_service_name"	TEXT,
	"bikes_allowed"	TEXT,
	"route_pattern1"	TEXT,
	"route_pattern2"	TEXT,
	"ï»¿""route_id"""	TEXT,
	"displayable"	TEXT,
	"route_group"	VARCHAR,
	"route_bikes_allowed"	VARCHAR
);
CREATE TABLE IF NOT EXISTS "gtfs_stops" (
	"stop_id"	text,
	"stop_name"	text,
	"stop_desc"	text,
	"stop_lat"	double precision,
	"stop_lon"	double precision,
	"zone_id"	text,
	"stop_url"	text,
	"stop_code"	text,
	"stop_street"	text,
	"stop_city"	text,
	"stop_region"	text,
	"stop_postcode"	text,
	"stop_country"	text,
	"location_type"	int,
	"parent_station"	text,
	"stop_timezone"	text,
	"wheelchair_boarding"	int,
	"direction"	text,
	"position"	text,
	"level_id"	TEXT,
	"platform_code"	TEXT,
	"tts_stop_name"	TEXT,
	"bt_id"	TEXT,
	"city_name"	TEXT,
	"direction_id"	TEXT,
	"ext_id"	TEXT,
	"ext_userfield1"	TEXT,
	"stop_associated_place"	TEXT,
	"platform_name"	TEXT,
	"stop_address"	TEXT,
	"municipality"	TEXT,
	"on_street"	TEXT,
	"at_street"	TEXT,
	"vehicle_type"	TEXT,
	"ï»¿stop_id"	TEXT,
	"wheelchair_accesible"	TEXT,
	"geo_node_id"	TEXT,
	"agency_id"	TEXT,
	"jurisdiction_id"	TEXT,
	"relative_position"	TEXT,
	"cardinal_direction"	TEXT,
	"primary_street"	TEXT,
	"address_range"	TEXT,
	"cross_location"	TEXT,
	"timepoint"	TEXT,
	"corner_placement"	TEXT,
	"stop_position"	TEXT,
	"heading"	TEXT,
	"stop_serial_number"	TEXT,
	"is_trans_ctr"	TEXT,
	"at_trans_ctr"	TEXT,
	"intersection_code"	TEXT,
	"stop_place"	TEXT,
	"reference_place"	TEXT,
	"stop_name_short"	TEXT,
	"zip"	TEXT,
	"district"	TEXT,
	"ï»¿""stop_id"""	TEXT,
	"to_from"	TEXT,
	"schedules"	TEXT,
	"stop_alias"	TEXT,
	"tpis_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_agency" (
	"agency_id"	text,
	"agency_name"	text,
	"agency_url"	text,
	"agency_timezone"	text,
	"agency_lang"	text,
	"agency_phone"	text,
	"agency_fare_url"	text,
	"agency_email"	TEXT,
	"bikes_policy_url"	TEXT,
	"agency_primary"	TEXT,
	"ï»¿agency_id"	TEXT,
	"agency_branding_url"	TEXT,
	"checkin_duration"	TEXT,
	"bike_policy_url"	TEXT,
	"ï»¿agency_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "gtfs_transfer_types" (
	"transfer_type"	int,
	"description"	text,
	PRIMARY KEY("transfer_type")
);
CREATE TABLE IF NOT EXISTS "gtfs_frequencies" (
	"trip_id"	text,
	"start_time"	text,
	"end_time"	text,
	"headway_secs"	int,
	"exact_times"	int,
	"start_time_seconds"	int,
	"end_time_seconds"	int
);
CREATE TABLE IF NOT EXISTS "gtfs_payment_methods" (
	"payment_method"	int,
	"description"	text,
	PRIMARY KEY("payment_method")
);
CREATE TABLE IF NOT EXISTS "service_combinations" (
	"combination_id"	int,
	"service_id"	text
);
CREATE TABLE IF NOT EXISTS "service_combo_ids" (
	"combination_id"	serial
);
CREATE TABLE IF NOT EXISTS "gtfs_pickup_dropoff_types" (
	"type_id"	int,
	"description"	text,
	PRIMARY KEY("type_id")
);
CREATE TABLE IF NOT EXISTS "gtfs_directions" (
	"direction_id"	int,
	"description"	text,
	PRIMARY KEY("direction_id")
);
CREATE TABLE IF NOT EXISTS "gtfs_route_types" (
	"route_type"	int,
	"description"	text,
	PRIMARY KEY("route_type")
);
CREATE TABLE IF NOT EXISTS "gtfs_wheelchair_boardings" (
	"wheelchair_boarding"	int,
	"description"	text,
	PRIMARY KEY("wheelchair_boarding")
);
CREATE TABLE IF NOT EXISTS "gtfs_location_types" (
	"location_type"	int,
	"description"	text,
	PRIMARY KEY("location_type")
);
CREATE TABLE IF NOT EXISTS "GTFS_Spec_Short" (
	"File_Name"	TEXT,
	"Field_Name"	TEXT,
	"Type"	TEXT,
	"Required"	TEXT
);
CREATE TABLE IF NOT EXISTS "ntd_agency_info_detail_2019" (
	"agency_name"	TEXT,
	"agency_info"	TEXT
);
CREATE TABLE IF NOT EXISTS "ntd_agency_info_10252019C" (
	"agency_name"	TEXT,
	"agency_address"	TEXT
);
CREATE TABLE IF NOT EXISTS "auth_user__old" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"first_name"	varchar(30) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"last_name"	varchar(150) NOT NULL
);
CREATE TABLE IF NOT EXISTS "auth_user_old" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"first_name"	varchar(30) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"last_name"	varchar(150) NOT NULL
);
CREATE TABLE IF NOT EXISTS "ntm_ntd" (
	"id"	INTEGER,
	"ntd_agency_name"	TEXT,
	"ntd_agency_website"	TEXT,
	"ntd_agency_id"	INTEGER,
	"ntd_agency_id5"	INTEGER
);
CREATE TABLE IF NOT EXISTS "ntm_ragtfs" (
	"ntd_id"	TEXT,
	"gtfs_url"	TEXT
);
CREATE TABLE IF NOT EXISTS "ntd_agency_lut" (
	"ntd_id"	TEXT,
	"agency_name"	TEXT
);
CREATE TABLE IF NOT EXISTS "ntm_ntdtftl" (
	"id"	INTEGER,
	"ntd_agency_name"	TEXT,
	"ntd_agency_website"	TEXT,
	"ntd_agency_id"	TEXT,
	"ntd_agency_id5"	TEXT,
	"ntd_agencyname4tf"	TEXT,
	"ntd_agencyname4tl"	TEXT
);
CREATE TABLE IF NOT EXISTS "tf_matched_11182019" (
	"Transitfeeds_Agency_Name"	TEXT,
	"NTD_ID_Matched_TF"	TEXT
);
CREATE TABLE IF NOT EXISTS "tl_matched_11182019" (
	"agency_match_name"	TEXT,
	"agency_match_tl"	TEXT,
	"Ratio"	INTEGER,
	"Checked"	INTEGER,
	"ntd_id"	TEXT
);
CREATE TABLE IF NOT EXISTS "tf_agency_name_url_112919105532" (
	"tf_file_name"	TEXT,
	"tf_agency_url"	TEXT,
	"ntd_id"	TEXT
);
CREATE TABLE IF NOT EXISTS "tftl_agency_name_url_11292019A" (
	"tftl_file_name"	TEXT,
	"tftl_agency_name"	TEXT,
	"tftl_agency_url"	TEXT,
	"ntd_id"	TEXT,
	"ntd_id2"	TEXT,
	"ntd_id3"	TEXT
);
CREATE TABLE IF NOT EXISTS "ntm_transitfeeds" (
	"agency_name"	TEXT,
	"gtfs_url"	TEXT,
	"date_check"	TEXT,
	"ntd_id"	TEXT,
	"ntd_id2"	TEXT,
	"ntd_id3"	TEXT
);
CREATE TABLE IF NOT EXISTS "ntm_transitland" (
	"agency_name"	TEXT,
	"gtfs_url"	TEXT,
	"date_check"	TEXT,
	"ntd_id"	TEXT,
	"agency_name_nm"	TEXT,
	"agency_tl"	TEXT,
	"ntd_id2"	TEXT,
	"ntd_id3"	TEXT
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
CREATE TABLE IF NOT EXISTS "ntm_person" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar(130) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"job_title"	varchar(30) NOT NULL,
	"bio"	text NOT NULL
);
CREATE TABLE IF NOT EXISTS "ntm_ntmagency" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"ntm_agency_name"	varchar(255) NOT NULL,
	"ntm_agency_website"	varchar(200) NOT NULL,
	"ntm_agency_address"	varchar(2024) NOT NULL,
	"ntm_agency_id"	varchar(12) NOT NULL,
	"ntm_agency_id5"	varchar(5) NOT NULL
);
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"first_name"	varchar(30) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"last_name"	varchar(150) NOT NULL
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"action_time"	datetime NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_flag"	smallint unsigned NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type__old"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user__old"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission__old"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user__old"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user__old"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission__old"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar(80) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL
);
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
COMMIT;
