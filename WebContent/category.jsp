<style>
.c-omni-searchbox_wrapper {
	position: relative
}

.c-omni-searchbox_wrapper+.c-omni-searchbox_wrapper {
	margin-top: 10px
}

.c-omni-searchbox_wrapper--disabled {
	opacity: .3
}

.c-omni-searchboxes-container {
	background: #fff;
	padding: 0 10px 10px;
	margin-bottom: 10px
}

.c-omni-searchbox__icon {
	font-size: 16px;
	position: absolute;
	top: 50%;
	left: 5px;
	width: 30px;
	transform: translateY(-50%)
}

.c-omni-searchbox {
	width: 100%;
	font-family: inherit;
	font-size: inherit;
	line-height: 1.4;
	padding: 6px 20px 5px 30px;
	color: inherit;
	border-radius: 2px;
	border: 1px solid #b4b4be;
	cursor: pointer;
	outline: 0;
	-moz-appearance: none;
	appearance: none;
	-webkit-appearance: none;
	background: #fff
}

.c-omni-searchbox:active, .c-omni-searchbox:focus {
	border-color: #787887
}

.c-omni-searchbox--default {
	height: 45px
}

.c-omni-searchbox--small {
	height: 40px
}

.c-omni-searchbox--large {
	height: 50px
}

.c-omni-searchbox__button {
	line-height: 1.7;
	height: 100%;
	padding: 0 5px;
	border-radius: 2px;
	background: #f0f0f5;
	transform: translateZ(0);
	transition: transform .2s ease;
	display: table
}

.c-omni-searchbox__button--minimized {
	transform: translate3d(65%, 0, 0)
}

.c-omni-searchbox__button-container {
	cursor: pointer;
	position: absolute;
	right: 5px;
	height: 70%;
	top: 50%;
	transform: translate3d(0, -50%, 0);
	overflow: hidden
}

.c-omni-searchbox__button i {
	color: #787887;
	font-size: 16px
}

.c-omni-searchbox__button__text {
	top: 1px
}

.c-omni-searchbox__button__text, .c-omni-searchbox__button i {
	position: relative;
	display: table-cell;
	vertical-align: middle
}

.c-omni-searchbox__spinner-container {
	position: absolute;
	top: 10px;
	left: 28px;
	height: 0
}

.c-omni-clear {
	cursor: pointer;
	position: absolute;
	right: 5px;
	height: 70%;
	top: 50%;
	transform: translate3d(0, -50%, 0);
	font-size: 22px;
	color: #787886
}

.c-spinner, .c-spinner:after {
	border-radius: 50%;
	width: 20px;
	height: 20px
}

.c-spinner {
	font-size: 10px;
	position: relative;
	text-indent: -9999em;
	border: 2px solid hsla(0, 0%, 100%, .2);
	border-left-color: #000;
	transform: translateZ(0);
	-webkit-animation: circular_spin 1.1s linear infinite;
	animation: circular_spin 1.1s linear infinite
}

@
-webkit-keyframes circular_spin { 0%{
	transform: rotate(0deg)
}

to {
	transform: rotate(1turn)
}

}
@
keyframes circular_spin { 0%{
	transform: rotate(0deg)
}

to {
	transform: rotate(1turn)
}

}
@
-webkit-keyframes placeholder-shimmer { 0%{
	background-position: -468px 0
}

to {
	background-position: 468px 0
}

}
@
keyframes placeholder-shimmer { 0%{
	background-position: -468px 0
}

to {
	background-position: 468px 0
}

}
.c-placeholder-animated-background {
	-webkit-animation-duration: 1.2s;
	animation-duration: 1.2s;
	-webkit-animation-fill-mode: forwards;
	animation-fill-mode: forwards;
	-webkit-animation-iteration-count: infinite;
	animation-iteration-count: infinite;
	-webkit-animation-name: placeholder-shimmer;
	animation-name: placeholder-shimmer;
	-webkit-animation-timing-function: linear;
	animation-timing-function: linear;
	background: #f0f0f5;
	background: linear-gradient(90deg, #f0f0f5 8%, #e9e9f5 18%, #f0f0f5 33%);
	background-size: 800px 104px;
	height: 32px;
	position: relative
}

.c-placeholder-animated-background-masker {
	background: #fff;
	position: absolute;
	left: 170px;
	right: 0;
	top: 0;
	height: 33px
}

.c-omni-popular-suggestion-group {
	background: #fff;
	padding-bottom: 8px
}

.c-omni-popular-suggestion-group .c-omni-suggestion-group__header {
	width: 100%;
	margin-bottom: 8px
}

.c-omni-popular-suggestion-item-wrapper {
	width: 50%;
	padding: 3px 9px;
	background: #fff
}

.c-omni-popular-suggestion-item-wrapper .c-omni-popular-suggestion-item
	{
	background-color: #f0f0f5;
	border-radius: 20px;
	padding: 6px 12px;
	cursor: pointer
}

.c-omni-popular-suggestion-item-wrapper .c-omni-popular-suggestion-item .icon-ic_instant_filled
	{
	color: #28328c;
	vertical-align: middle
}

.c-omni-popular-suggestion-item-wrapper .c-omni-popular-suggestion-item-text
	{
	font-size: 14px;
	color: #414146;
	width: calc(100% - 24px);
	display: inline-block;
	vertical-align: middle
}

.u-bold {
	font-weight: 700
}

.u-clearfix:after, .u-clearfix:before {
	content: "";
	display: table
}

.u-clearfix:after {
	clear: both
}

.u-clearfix {
	zoom: 1
}

.u-ellipsis {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis
}

.c-omni-suggestion-group {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap
}

.c-omni-suggestion-group__header {
	width: 100%;
	padding: 6px 8px;
	background-color: #f0f0f5;
	font-size: 12px
}

.c-omni-suggestion-item {
	padding: 10px 12px;
	font-size: 14px;
	border-bottom: 1px solid #e0e0e5;
	line-height: 1.5;
	color: #414146;
	background: #fff;
	cursor: pointer;
	display: table;
	zoom: 1;
	width: 100%
}

.c-omni-suggestion-item--focused, .c-omni-suggestion-item:hover {
	background: #f0f0f5
}

.c-omni-suggestion-item--placeholder:hover {
	background: #fff
}

.c-omni-suggestion-item__content, .c-omni-suggestion-item__media,
	.c-omni-suggestion-item__right {
	display: table-cell;
	vertical-align: middle
}

.c-omni-suggestion-item__media {
	padding-right: 15px
}

.c-omni-suggestion-item__media__item {
	background-color: #f0f0f5;
	width: 32px;
	height: 32px;
	border-radius: 50%;
	position: relative;
	overflow: hidden
}

.c-omni-suggestion-item__media__item>i,
	.c-omni-suggestion-item__media__item>span {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%)
}

.c-omni-suggestion-item__media__item>img {
	width: 100%;
	max-width: 100%;
	min-height: 25px
}

.c-omni-suggestion-item__content {
	width: 10000px
}

.c-omni-suggestion-item__content__sub_text {
	font-size: 12px;
	color: #787887;
	text-transform: capitalize
}

.c-omni-suggestion-item__right {
	text-transform: uppercase;
	font-size: 11px;
	color: #787887;
	padding-top: 2px;
	text-align: right
}

.c-omni-suggestion-item__my_location_text {
	color: #14bef0;
	font-weight: 700;
	line-height: 24px
}

.c-omni {
	width: 100%;
	color: #414146;
	font-size: 14px;
	line-height: 1.4;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	-webkit-text-size-adjust: 100%;
	-moz-text-size-adjust: 100%;
	text-size-adjust: 100%
}

.c-omni__wrapper {
	position: relative
}

.c-omni-container--desktop .c-omni__wrapper {
	display: inline-block;
	float: left;
	margin: 0
}

.c-omni-container--desktop .c-omni__wrapper--locality {
	width: 40%
}

.c-omni-container--desktop .c-omni__wrapper--locality .c-omni-searchbox
	{
	border-top-right-radius: 0;
	border-bottom-right-radius: 0
}

.c-omni-container--desktop .c-omni__wrapper--keyword {
	width: 60%
}

.c-omni-container--desktop .c-omni__wrapper--keyword .c-omni-searchbox {
	border-top-left-radius: 0;
	border-bottom-left-radius: 0;
	border-left: 0
}

.c-omni-container--desktop .c-omni-suggestion-list {
	position: absolute;
	left: 0;
	right: 0;
	margin-top: 2px;
	border: 1px solid #787887;
	box-shadow: 0 1px 2px #b4b4be
}

@font-face {
	font-family: Camphor;
	src:
		url(//www.practostatic.com/fonts/camphor/v2/79a790be-1592-4a60-84d3-d38c6ca1626b.eot#iefix);
	src:
		url(//www.practostatic.com/fonts/camphor/v2/79a790be-1592-4a60-84d3-d38c6ca1626b.eot#iefix)
		format("eot"),
		url(//www.practostatic.com/fonts/camphor/v2/677b110e-fe2c-4af7-b50b-3e8f00c371ce.woff2)
		format("woff2"),
		url(//www.practostatic.com/fonts/camphor/v2/bee62776-4fd4-4e5c-b977-86dfd90c0bce.woff)
		format("woff"),
		url(//www.practostatic.com/fonts/camphor/v2/cf1395aa-4f82-4179-9456-63193aef03ac.ttf)
		format("truetype");
	font-weight: 400;
	font-display: swap
}

@font-face {
	font-family: Camphor;
	src:
		url(//www.practostatic.com/fonts/camphor/v2/ce0e3457-b63d-4c55-b2b2-4d41170d4578.eot#iefix);
	src:
		url(//www.practostatic.com/fonts/camphor/v2/ce0e3457-b63d-4c55-b2b2-4d41170d4578.eot#iefix)
		format("eot"),
		url(//www.practostatic.com/fonts/camphor/v2/c96be38e-ea64-418f-ae54-e757ed92b069.woff2)
		format("woff2"),
		url(//www.practostatic.com/fonts/camphor/v2/d8f1df09-02f2-46a7-9876-5b2e79046f31.woff)
		format("woff"),
		url(//www.practostatic.com/fonts/camphor/v2/d26b7b5b-4f11-4aca-9273-f050282fbf28.ttf)
		format("truetype");
	font-weight: 700;
	font-display: swap
}

body {
	font-family: Camphor;
	font-weight: 400
}

@font-face {
	font-family: practicon;
	src: url(//www.practostatic.com/fonts/v12/practicon.eot);
	src: url(//www.practostatic.com/fonts/v12/practicon.eot#iefix)
		format("embedded-opentype"),
		url(//www.practostatic.com/fonts/v12/practicon.woff2) format("woff2"),
		url(//www.practostatic.com/fonts/v12/practicon.woff) format("woff"),
		url(//www.practostatic.com/fonts/v12/practicon.svg) format("svg"),
		url(//www.practostatic.com/fonts/v12/practicon.ttf) format("truetype");
	font-weight: 400;
	font-style: normal;
	font-display: swap
}

[class*=" icon-"]:before, [class^=icon-]:before {
	font-family: practicon;
	font-style: normal;
	font-weight: 400;
	speak: none;
	display: inline-block;
	text-decoration: inherit;
	width: 1em;
	margin-right: .2em;
	text-align: center;
	font-variant: normal;
	text-transform: none;
	line-height: 1em;
	margin-left: .2em;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale
}

.icon-ic_done_badge:before {
	content: "\E800"
}

.icon-ic_dislike_filled:before {
	content: "\E8BB"
}

.icon-ic_like_filled:before {
	content: "\E8BC"
}

.icon-ic_facebook:before {
	content: "\E8BD"
}

.icon-ic_github:before {
	content: "\E8BE"
}

.icon-ic_googleplus:before {
	content: "\E8BF"
}

.icon-ic_linkedin:before {
	content: "\E8C0"
}

.icon-ic_mail2:before {
	content: "\E8C1"
}

.icon-ic_twitter:before {
	content: "\E8C2"
}

.icon-ic_whatsapp:before {
	content: "\E8C3"
}

.icon-ic_youtube:before {
	content: "\E8C4"
}

.icon-ic_checkbox_selected_system:before {
	content: "\E8C5"
}

.icon-ic_checkbox_system:before {
	content: "\E8C6"
}

.icon-ic_call_filled:before {
	content: "\E8E7"
}

.icon-ic_flag_solid_system:before {
	content: "\E8E8"
}

.icon-ic_flag_system:before {
	content: "\E8E9"
}

.icon-ic_quickmessage:before {
	content: "\E8EA"
}

.icon-ic_transactions:before {
	content: "\E8EB"
}

.icon-ic_exclamation:before {
	content: "\E8ED"
}

.icon-ic_phone:before {
	content: "\E8EE"
}

.icon-ic_reply:before {
	content: "\E8EF"
}

.icon-ic_waittime:before {
	content: "\E8F0"
}

.icon-ic_bold:before {
	content: "\E900"
}

.icon-ic_briefcase_filled:before {
	content: "\E901"
}

.icon-ic_bullet_list:before {
	content: "\E902"
}

.icon-ic_collapse_calendar:before {
	content: "\E903"
}

.icon-ic_cursor:before {
	content: "\E904"
}

.icon-ic_expand_calendar:before {
	content: "\E905"
}

.icon-ic_eye:before {
	content: "\E906"
}

.icon-ic_fit_to_page:before {
	content: "\E907"
}

.icon-ic_font_size:before {
	content: "\E908"
}

.icon-ic_graph:before {
	content: "\E909"
}

.icon-ic_help:before {
	content: "\E90A"
}

.icon-ic_instant_filled:before {
	content: "\E90B"
}

.icon-ic_italics:before {
	content: "\E90C"
}

.icon-ic_receipt:before {
	content: "\E90D"
}

.icon-ic_remove_text_format:before {
	content: "\E90E"
}

.icon-ic_rotate_left:before {
	content: "\E90F"
}

.icon-ic_shrink_to_page:before {
	content: "\E910"
}

.icon-ic_time_filled:before {
	content: "\E911"
}

.icon-ic_walkin:before {
	content: "\E912"
}

.icon-ic_widgets:before {
	content: "\E913"
}

.icon-ic_card:before {
	content: "\E914"
}

.icon-ic_cancel:before {
	content: "\E915"
}

.icon-ic_camera:before {
	content: "\E916"
}

.icon-ic_care:before {
	content: "\E917"
}

.icon-ic_calendar:before {
	content: "\E918"
}

.icon-ic_delete:before {
	content: "\E919"
}

.icon-ic_call:before {
	content: "\E91A"
}

.icon-ic_discount:before {
	content: "\E91B"
}

.icon-ic_gym:before {
	content: "\E91C"
}

.icon-ic_hospital:before {
	content: "\E91D"
}

.icon-ic_user_system:before {
	content: "\E91E"
}

.icon-ic_cart_fill:before {
	content: "\E91F"
}

.icon-ic_cart:before {
	content: "\E920"
}

.icon-ic_chat:before {
	content: "\E921"
}

.icon-ic_clinic:before {
	content: "\E922"
}

.icon-ic_communications:before {
	content: "\E923"
}

.icon-ic_currency:before {
	content: "\E924"
}

.icon-ic_bath_towel:before {
	content: "\E925"
}

.icon-ic_bath_tub:before {
	content: "\E926"
}

.icon-ic_birthday:before {
	content: "\E927"
}

.icon-ic_blood:before {
	content: "\E928"
}

.icon-ic_briefcase:before {
	content: "\E929"
}

.icon-ic_ac:before {
	content: "\E92A"
}

.icon-ic_add:before {
	content: "\E92B"
}

.icon-ic_affiliation:before {
	content: "\E92C"
}

.icon-ic_afternoon:before {
	content: "\E92D"
}

.icon-ic_ambulance:before {
	content: "\E92E"
}

.icon-ic_appointment:before {
	content: "\E92F"
}

.icon-ic_attachment:before {
	content: "\E930"
}

.icon-ic_awards:before {
	content: "\E931"
}

.icon-ic_up_cheveron:before {
	content: "\E932"
}

.icon-ic_star:before {
	content: "\E933"
}

.icon-ic_star_solid:before {
	content: "\E934"
}

.icon-ic_star_half:before {
	content: "\E935"
}

.icon-ic_share_system:before {
	content: "\E936"
}

.icon-ic_settings_system:before {
	content: "\E937"
}

.icon-ic_search_system:before {
	content: "\E938"
}

.icon-ic_radio_system:before {
	content: "\E939"
}

.icon-ic_radio_selected_system:before {
	content: "\E93A"
}

.icon-ic_alert_solid_system:before {
	content: "\E93B"
}

.icon-ic_next_cheveron:before {
	content: "\E93C"
}

.icon-ic_mail_system:before {
	content: "\E93D"
}

.icon-ic_location_system:before {
	content: "\E93E"
}

.icon-ic_video:before {
	content: "\E93F"
}

.icon-ic_heart_system:before {
	content: "\E940"
}

.icon-ic_prescription_system:before {
	content: "\E941"
}

.icon-ic_heart_filled_system:before {
	content: "\E942"
}

.icon-ic_filter_system:before {
	content: "\E943"
}

.icon-ic_ellipsis:before {
	content: "\E944"
}

.icon-ic_dropdown_small:before {
	content: "\E945"
}

.icon-ic_drawer_system:before {
	content: "\E946"
}

.icon-ic_down_cheveron:before {
	content: "\E947"
}

.icon-ic_instant:before {
	content: "\E948"
}

.icon-ic_machine:before {
	content: "\E949"
}

.icon-ic_newsfeed:before {
	content: "\E94A"
}

.icon-ic_delete_system:before {
	content: "\E94B"
}

.icon-ic_cross:before {
	content: "\E94C"
}

.icon-ic_back:before {
	content: "\E94D"
}

.icon-ic_back_cheveron:before {
	content: "\E94E"
}

.icon-ic_attach_system:before {
	content: "\E94F"
}

.icon-ic_alert_outline_system:before {
	content: "\E950"
}

.icon-ic_add_system:before {
	content: "\E951"
}

.icon-ic_add_outline_system:before {
	content: "\E952"
}

.icon-ic_add_open_system:before {
	content: "\E953"
}

.icon-ic_welcome:before {
	content: "\E954"
}

.icon-ic_washroom:before {
	content: "\E955"
}

.icon-ic_wardrobe:before {
	content: "\E956"
}

.icon-ic_wallet:before {
	content: "\E957"
}

.icon-ic_uswr:before {
	content: "\E958"
}

.icon-ic_online_presence:before {
	content: "\E959"
}

.icon-ic_unhappy:before {
	content: "\E95A"
}

.icon-ic_tv:before {
	content: "\E95B"
}

.icon-ic_trainer:before {
	content: "\E95C"
}

.icon-ic_time:before {
	content: "\E95D"
}

.icon-ic_sweat_towel:before {
	content: "\E95E"
}

.icon-ic_stylist:before {
	content: "\E95F"
}

.icon-ic_sthethescope:before {
	content: "\E960"
}

.icon-ic_steam:before {
	content: "\E961"
}

.icon-ic_star2:before {
	content: "\E962"
}

.icon-ic_shower:before {
	content: "\E963"
}

.icon-ic_share:before {
	content: "\E964"
}

.icon-ic_settings:before {
	content: "\E965"
}

.icon-ic_search:before {
	content: "\E966"
}

.icon-ic_sauna:before {
	content: "\E967"
}

.icon-ic_saline:before {
	content: "\E968"
}

.icon-ic_rupee:before {
	content: "\E969"
}

.icon-ic_rotate:before {
	content: "\E96A"
}

.icon-ic_reports:before {
	content: "\E96B"
}

.icon-ic_reminder:before {
	content: "\E96C"
}

.icon-ic_refreshment:before {
	content: "\E96D"
}

.icon-ic_Records:before {
	content: "\E96E"
}

.icon-ic_records_3:before {
	content: "\E96F"
}

.icon-ic_records_2:before {
	content: "\E970"
}

.icon-ic_read:before {
	content: "\E971"
}

.icon-ic_questions:before {
	content: "\E972"
}

.icon-ic_qna_empty:before {
	content: "\E973"
}

.icon-ic_profile:before {
	content: "\E974"
}

.icon-ic_print:before {
	content: "\E975"
}

.icon-ic_prescription:before {
	content: "\E976"
}

.icon-ic_prescription_2:before {
	content: "\E977"
}

.icon-ic_pool:before {
	content: "\E978"
}

.icon-ic_pictures:before {
	content: "\E979"
}

.icon-ic_parking:before {
	content: "\E97A"
}

.icon-ic_notifications:before {
	content: "\E97B"
}

.icon-ic_night:before {
	content: "\E97C"
}

.icon-ic_music:before {
	content: "\E97D"
}

.icon-ic_morning:before {
	content: "\E97E"
}

.icon-ic_minus:before {
	content: "\E97F"
}

.icon-ic_message:before {
	content: "\E980"
}

.icon-ic_mail:before {
	content: "\E981"
}

.icon-ic_loyalty:before {
	content: "\E982"
}

.icon-ic_lock:before {
	content: "\E983"
}

.icon-ic_location:before {
	content: "\E984"
}

.icon-ic_link:before {
	content: "\E985"
}

.icon-ic_like:before {
	content: "\E986"
}

.icon-ic_library:before {
	content: "\E987"
}

.icon-ic_kids:before {
	content: "\E988"
}

.icon-ic_invoice:before {
	content: "\E989"
}

.icon-ic_injection:before {
	content: "\E98A"
}

.icon-ic_info:before {
	content: "\E98B"
}

.icon-ic_image:before {
	content: "\E98C"
}

.icon-ic_therapist:before {
	content: "\E98D"
}

.icon-ic_height:before {
	content: "\E98E"
}

.icon-ic_heartbeat:before {
	content: "\E98F"
}

.icon-ic_heart:before {
	content: "\E990"
}

.icon-ic_health_interests:before {
	content: "\E991"
}

.icon-ic_happy:before {
	content: "\E992"
}

.icon-ic_gender:before {
	content: "\E993"
}

.icon-ic_food:before {
	content: "\E994"
}

.icon-ic_folder:before {
	content: "\E995"
}

.icon-ic_filter:before {
	content: "\E996"
}

.icon-ic_explore:before {
	content: "\E997"
}

.icon-ic_evening:before {
	content: "\E998"
}

.icon-ic_establishment:before {
	content: "\E999"
}

.icon-ic_edit:before {
	content: "\E99A"
}

.icon-ic_uniform:before {
	content: "\E99B"
}

.icon-ic_dropdown:before {
	content: "\E99C"
}

.icon-ic_drawer:before {
	content: "\E99D"
}

.icon-ic_drawer_2:before {
	content: "\E99E"
}

.icon-ic_download:before {
	content: "\E99F"
}

.icon-ic_done:before {
	content: "\E9A0"
}

.icon-ic_doctor:before {
	content: "\E9A1"
}

.icon-ic_doctor_2:before {
	content: "\E9A2"
}

.icon-ic_distance:before {
	content: "\E9A3"
}

.icon-ic_dislike:before {
	content: "\E9A4"
}

.icon-ic_weight:before {
	content: "\E9A5"
}

.icon-ic_wifi:before {
	content: "\E9A6"
}

.icon-ic_direction_solid_system:before {
	content: "\E9A7"
}

.icon-ic_done_open_system:before {
	content: "\E9A8"
}

.icon-ic_done_outline_system:before {
	content: "\E9A9"
}

.icon-ic_done_solid_system:before {
	content: "\E9AA"
}

.icon-ic_minus_outline_system:before {
	content: "\E9AB"
}

.icon-ic_minus_solid_system:before {
	content: "\E9AC"
}

.icon-ic_refresh_system:before {
	content: "\E9AD"
}

.icon-ic_brazilian_real:before {
	content: "\E9AE"
}

.icon-ic_dollar:before {
	content: "\E9AF"
}

.icon-ic_indonesian_rupiah:before {
	content: "\E9B0"
}

.icon-ic_philippines_peso:before {
	content: "\E9B1"
}

.icon-ic_rupee2:before {
	content: "\E9B2"
}

.icon-ic_calendar_block:before {
	content: "\E9B3"
}

.icon-ic_lab_home:before {
	content: "\E9B4"
}

.icon-ic_records_home:before {
	content: "\E9B5"
}

.icon-ic_services:before {
	content: "\E9B6"
}

.icon-ic_share_ios:before {
	content: "\E9B7"
}

.icon-ic_id:before {
	content: "\E9B8"
}

.icon-ic_add_fill_system:before {
	content: "\E9B9"
}

.icon-ic_gps_system:before {
	content: "\E9BA"
}

.icon-ic_backoffice_filled:before {
	content: "\E9BB"
}

.icon-ic_backoffice:before {
	content: "\E9BC"
}

.icon-ic_calendar_filled:before {
	content: "\E9BD"
}

.icon-ic_communications_filled:before {
	content: "\E9BE"
}

.icon-ic_consult:before {
	content: "\E9BF"
}

.icon-ic_currency_filled:before {
	content: "\E9C0"
}

.icon-ic_doctor_2_filled:before {
	content: "\E9C1"
}

.icon-ic_drawer_2_filled:before {
	content: "\E9C2"
}

.icon-ic_export:before {
	content: "\E9C3"
}

.icon-ic_healthfeed_filled:before {
	content: "\E9C4"
}

.icon-ic_healthfeed:before {
	content: "\E9C5"
}

.icon-ic_help_filled:before {
	content: "\E9C6"
}

.icon-ic_integration_filled:before {
	content: "\E9C7"
}

.icon-ic_integration:before {
	content: "\E9C8"
}

.icon-ic_notifications_filled:before {
	content: "\E9C9"
}

.icon-ic_patients_filled:before {
	content: "\E9CA"
}

.icon-ic_patients:before {
	content: "\E9CB"
}

.icon-ic_reach_filled:before {
	content: "\E9CC"
}

.icon-ic_reach:before {
	content: "\E9CD"
}

.icon-ic_reports_filled:before {
	content: "\E9CE"
}

.icon-ic_rotate_right:before {
	content: "\E9CF"
}

.icon-ic_settings_filled:before {
	content: "\E9D0"
}

.icon-ic_consult_filled:before {
	content: "\E9D1"
}

.icon-ic_cross_solid:before {
	content: "\E9D2"
}

.icon-ic_down:before {
	content: "\E9D3"
}

.icon-ic_hospital_filled:before {
	content: "\E9D4"
}

.icon-ic_lab_home_filled:before {
	content: "\E9D5"
}

.icon-ic_medicine_info:before {
	content: "\E9D6"
}

.icon-ic_move:before {
	content: "\E9D7"
}

.icon-ic_questions_filled:before {
	content: "\E9D8"
}

.icon-ic_stethoscope_filled:before {
	content: "\E9D9"
}

.icon-ic_stethoscope:before {
	content: "\E9DA"
}

html {
	font-family: sans-serif;
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%
}

body {
	margin: 0
}

a:active, a:hover {
	outline: 0
}

h1 {
	font-size: 2em;
	margin: .67em 0
}

img {
	border: 0
}

button {
	overflow: visible
}

button, select {
	text-transform: none
}

button, html input[type=button], input[type=reset], input[type=submit] {
	-webkit-appearance: button;
	cursor: pointer
}

button[disabled], html input[disabled] {
	cursor: default
}

button::-moz-focus-inner, input::-moz-focus-inner {
	border: 0;
	padding: 0
}

input {
	line-height: normal
}

input[type=checkbox], input[type=radio] {
	box-sizing: border-box;
	padding: 0
}

input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	height: auto
}

input[type=search] {
	-webkit-appearance: textfield;
	box-sizing: content-box
}

input[type=search]::-webkit-search-cancel-button, input[type=search]::-webkit-search-decoration
	{
	-webkit-appearance: none
}

textarea {
	overflow: auto
}

.pure-g {
	letter-spacing: -.31em;
	*letter-spacing: normal;
	*word-spacing: -.43em;
	text-rendering: optimizespeed;
	font-family: FreeSans, Arimo, Droid Sans, Helvetica, Arial, sans-serif;
	display: -webkit-flex;
	display: -ms-flexbox;
	-ms-align-content: flex-start;
	align-content: flex-start
}

.opera-only :-o-prefocus, .pure-g {
	word-spacing: -.43em
}

.pure-u {
	display: inline-block;
	*display: inline;
	zoom: 1;
	letter-spacing: normal;
	word-spacing: normal;
	vertical-align: top;
	text-rendering: auto
}

.pure-g [class*=pure-u] {
	font-family: sans-serif
}

.pure-u-1, .pure-u-1-1, .pure-u-1-2, .pure-u-1-3, .pure-u-1-4,
	.pure-u-1-5, .pure-u-1-6, .pure-u-1-8, .pure-u-1-12, .pure-u-1-24,
	.pure-u-2-3, .pure-u-2-5, .pure-u-2-24, .pure-u-3-4, .pure-u-3-5,
	.pure-u-3-8, .pure-u-3-24, .pure-u-4-5, .pure-u-4-24, .pure-u-5-5,
	.pure-u-5-6, .pure-u-5-8, .pure-u-5-12, .pure-u-5-24, .pure-u-6-24,
	.pure-u-7-8, .pure-u-7-12, .pure-u-7-24, .pure-u-8-24, .pure-u-9-24,
	.pure-u-10-24, .pure-u-11-12, .pure-u-11-24, .pure-u-12-24,
	.pure-u-13-24, .pure-u-14-24, .pure-u-15-24, .pure-u-16-24,
	.pure-u-17-24, .pure-u-18-24, .pure-u-19-24, .pure-u-20-24,
	.pure-u-21-24, .pure-u-22-24, .pure-u-23-24, .pure-u-24-24 {
	display: inline-block;
	*display: inline;
	zoom: 1;
	letter-spacing: normal;
	word-spacing: normal;
	vertical-align: top;
	text-rendering: auto
}

.pure-u-1-24 {
	width: 4.1667%;
	*width: 4.1357%
}

.pure-u-1-12, .pure-u-2-24 {
	width: 8.3333%;
	*width: 8.3023%
}

.pure-u-1-8, .pure-u-3-24 {
	width: 12.5%;
	*width: 12.469%
}

.pure-u-1-6, .pure-u-4-24 {
	width: 16.6667%;
	*width: 16.6357%
}

.pure-u-1-5 {
	width: 20%;
	*width: 19.969%
}

.pure-u-5-24 {
	width: 20.8333%;
	*width: 20.8023%
}

.pure-u-1-4, .pure-u-6-24 {
	width: 25%;
	*width: 24.969%
}

.pure-u-7-24 {
	width: 29.1667%;
	*width: 29.1357%
}

.pure-u-1-3, .pure-u-8-24 {
	width: 33.3333%;
	*width: 33.3023%
}

.pure-u-3-8, .pure-u-9-24 {
	width: 37.5%;
	*width: 37.469%
}

.pure-u-2-5 {
	width: 40%;
	*width: 39.969%
}

.pure-u-5-12, .pure-u-10-24 {
	width: 41.6667%;
	*width: 41.6357%
}

.pure-u-11-24 {
	width: 45.8333%;
	*width: 45.8023%
}

.pure-u-1-2, .pure-u-12-24 {
	width: 50%;
	*width: 49.969%
}

.pure-u-13-24 {
	width: 54.1667%;
	*width: 54.1357%
}

.pure-u-7-12, .pure-u-14-24 {
	width: 58.3333%;
	*width: 58.3023%
}

.pure-u-3-5 {
	width: 60%;
	*width: 59.969%
}

.pure-u-5-8, .pure-u-15-24 {
	width: 62.5%;
	*width: 62.469%
}

.pure-u-2-3, .pure-u-16-24 {
	width: 66.6667%;
	*width: 66.6357%
}

.pure-u-17-24 {
	width: 70.8333%;
	*width: 70.8023%
}

.pure-u-3-4, .pure-u-18-24 {
	width: 75%;
	*width: 74.969%
}

.pure-u-19-24 {
	width: 79.1667%;
	*width: 79.1357%
}

.pure-u-4-5 {
	width: 80%;
	*width: 79.969%
}

.pure-u-5-6, .pure-u-20-24 {
	width: 83.3333%;
	*width: 83.3023%
}

.pure-u-7-8, .pure-u-21-24 {
	width: 87.5%;
	*width: 87.469%
}

.pure-u-11-12, .pure-u-22-24 {
	width: 91.6667%;
	*width: 91.6357%
}

.pure-u-23-24 {
	width: 95.8333%;
	*width: 95.8023%
}

.pure-u-1, .pure-u-1-1, .pure-u-5-5, .pure-u-24-24 {
	width: 100%
}

.pure-button {
	display: inline-block;
	zoom: 1;
	line-height: normal;
	white-space: nowrap;
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	-webkit-user-drag: none
}

.pure-button, .slick-slider {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	box-sizing: border-box
}

.slick-slider {
	-webkit-touch-callout: none;
	-khtml-user-select: none;
	touch-action: pan-y;
	-webkit-tap-highlight-color: transparent
}

.slick-list, .slick-slider {
	position: relative;
	display: block
}

.slick-list {
	overflow: hidden;
	margin: 0;
	padding: 0
}

.slick-list:focus {
	outline: none
}

.slick-list.dragging {
	cursor: pointer;
	cursor: hand
}

.slick-slider .slick-list, .slick-slider .slick-track {
	transform: translateZ(0)
}

.slick-track {
	position: relative;
	top: 0;
	left: 0;
	display: block;
	margin-left: auto;
	margin-right: auto
}

.slick-track:after, .slick-track:before {
	display: table;
	content: ""
}

.slick-track:after {
	clear: both
}

.slick-loading .slick-track {
	visibility: hidden
}

.slick-slide {
	display: none;
	float: left;
	height: 100%;
	min-height: 1px
}

[dir=rtl] .slick-slide {
	float: right
}

.slick-slide img {
	display: block
}

.slick-slide.slick-loading img {
	display: none
}

.slick-slide.dragging img {
	pointer-events: none
}

.slick-initialized .slick-slide {
	display: block
}

.slick-loading .slick-slide {
	visibility: hidden
}

.slick-vertical .slick-slide {
	display: block;
	height: auto;
	border: 1px solid transparent
}

.slick-arrow.slick-hidden {
	display: none
}

.slick-loading .slick-list {
	background: #fff url(ajax-loader.gif) 50% no-repeat
}

@font-face {
	font-family: slick;
	font-weight: 400;
	font-style: normal
}

.slick-next, .slick-prev {
	font-size: 0;
	line-height: 0;
	position: absolute;
	top: 50%;
	display: block;
	width: 20px;
	height: 20px;
	padding: 0;
	transform: translateY(-50%);
	cursor: pointer;
	color: transparent;
	border: none;
	outline: none;
	background: transparent
}

.slick-prev {
	left: -25px
}

.slick-next:focus, .slick-next:hover, .slick-prev:focus, .slick-prev:hover
	{
	color: transparent;
	outline: none;
	background: transparent
}

.slick-next:before, .slick-prev:before {
	font-family: slick;
	font-size: 20px;
	line-height: 1;
	opacity: .75;
	color: #fff;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale
}

.slick-next:focus:before, .slick-next:hover:before, .slick-prev:focus:before,
	.slick-prev:hover:before {
	opacity: 1
}

.slick-next.slick-disabled:before, .slick-prev.slick-disabled:before {
	opacity: .25
}

[dir=rtl] .slick-prev {
	right: -25px;
	left: auto
}

.slick-prev:before {
	content: "\2190"
}

[dir=rtl] .slick-prev:before {
	content: "\2192"
}

.slick-next {
	right: -25px
}

[dir=rtl] .slick-next {
	right: auto;
	left: -25px
}

.slick-next:before {
	content: "\2192"
}

[dir=rtl] .slick-next:before {
	content: "\2190"
}

.slick-dotted.slick-slider {
	margin-bottom: 30px
}

.slick-dots {
	position: absolute;
	bottom: -25px;
	display: block;
	width: 100%;
	padding: 0;
	margin: 0;
	list-style: none;
	text-align: center
}

.slick-dots li {
	position: relative;
	display: inline-block;
	margin: 0 5px;
	padding: 0
}

.slick-dots li, .slick-dots li button {
	width: 20px;
	height: 20px;
	cursor: pointer
}

.slick-dots li button {
	font-size: 0;
	line-height: 0;
	display: block;
	padding: 5px;
	color: transparent;
	border: 0;
	outline: none;
	background: transparent
}

.slick-dots li button:focus, .slick-dots li button:hover {
	outline: none
}

.slick-dots li button:focus:before, .slick-dots li button:hover:before {
	opacity: 1
}

.slick-dots li button:before {
	font-family: slick;
	font-size: 6px;
	line-height: 20px;
	position: absolute;
	top: 0;
	left: 0;
	width: 20px;
	height: 20px;
	content: "\2022";
	text-align: center;
	opacity: .25;
	color: #000;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale
}

.slick-dots li.slick-active button:before {
	opacity: .75;
	color: #000
}

html {
	height: 100%;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0)
}

*, :after, :before, html {
	box-sizing: border-box
}

* {
	font-family: Camphor, Helvetica, Arial, sans-serif !important
}

body {
	min-height: 100%;
	font-family: Camphor, Helvetica, Arial, sans-serif;
	font-size: 14px;
	background-color: #fff;
	color: #414146;
	position: relative;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	-webkit-text-size-adjust: 100%;
	-moz-text-size-adjust: 100%;
	text-size-adjust: 100%
}

.u-font--32 {
	font-size: 32px
}

.u-font--30 {
	font-size: 30px
}

.u-font--24 {
	font-size: 24px
}

.u-font--16 {
	font-size: 16px;
	line-height: 1.5
}

.u-font--14 {
	font-size: 14px
}

.u-font--12 {
	font-size: 12px;
	line-height: 1.25
}

.btn, .c-applink__input .country-code, .c-copyright, .c-footer__title,
	.card-testimonial .user-name, .u-font--bold {
	font-weight: 700
}

.u-t-c--black_1 {
	color: #414146
}

.c-applink__input .country-code, .u-t-c--black_2 {
	color: #000
}

.u-t-c--blue_6 {
	color: #14bef0
}

.u-t-c--grey_1 {
	color: #787887
}

.u-t-c--green_1 {
	color: #358588
}

.u-t-c--green_2 {
	color: #30ac4a
}

.u-t-c--green_5 {
	color: #81ba82
}

.u-t-uppercase {
	text-transform: uppercase
}

.u-t-link {
	text-decoration: none;
	color: inherit
}

.c-footer__copyright, .card-testimonial, .u-t-center {
	text-align: center
}

.u-t-left {
	text-align: left
}

.u-margin--0 {
	margin: 0
}

.u-margin-auto__left {
	margin-left: auto
}

.u-margin-auto__right {
	margin-right: auto
}

.u-margin--5__top {
	margin-top: 5px
}

.u-margin--10 {
	margin: 10px
}

.u-margin--10__left {
	margin-left: 10px
}

.u-margin--10__right {
	margin-right: 10px
}

.u-margin--10__top {
	margin-top: 10px
}

.u-margin--12 {
	margin: 12px
}

.u-margin--12__vertical {
	margin-top: 12px;
	margin-bottom: 12px
}

.u-margin--12__top {
	margin-top: 12px
}

.u-margin--15__top {
	margin-top: 15px
}

.u-margin--15__bottom {
	margin-bottom: 15px
}

.u-margin--15__right {
	margin-right: 15px
}

.u-margin--20__top {
	margin-top: 20px
}

.s-appbanner .downloads, .u-margin--30__top {
	margin-top: 30px
}

.u-margin--30__bottom {
	margin-bottom: 30px
}

.u-margin--50__top {
	margin-top: 50px
}

.u-margin--60__top {
	margin-top: 60px
}

.c-applink__input .country-code, .u-padding--15 {
	padding: 15px
}

.u-padding--20 {
	padding: 20px
}

.u-padding--20__top {
	padding-top: 20px
}

.u-padding--20__bottom {
	padding-bottom: 20px
}

.u-border__top--blue_3 {
	border-top: 1px solid #c0d3df
}

.u-border__top--blue_4 {
	border-top: 1px solid #e3e3eb
}

.u-border__top--grey_2 {
	border-top: 1px solid #dfdfe5
}

.u-border__bottom--grey_2 {
	border-bottom: 1px solid #dfdfe5
}

.c-applink__input.error, .u-border--red {
	border: 1px solid #ff2d00
}

.u-d__inline {
	display: inline
}

.c-applink__input, .c-applink__input .country-code, .c-footer__column,
	.s-static__card, .u-d__inline-block {
	display: inline-block
}

.u-d__flex {
	display: flex
}

.u-d__hide {
	display: none
}

.u-v-middle {
	vertical-align: middle
}

.c-footer__column, .u-v-top {
	vertical-align: top
}

.u-float--right {
	float: right
}

.u-height--100 {
	height: 100%
}

.pos {
	position: relative
}

.pos-abs, .pos-m-b, .pos-m-m, .pos-m-t {
	position: absolute
}

.pos-m-t {
	top: 0
}

.pos-m-b, .pos-m-t {
	left: 50%;
	transform: translateX(-50%)
}

.pos-m-b {
	bottom: 0
}

.pos-m-m {
	top: 50%;
	left: 50%;
	transform: translateX(-50%) translateY(-50%)
}

.pos-v-center, .s-appbanner__image {
	position: absolute;
	top: 50%;
	transform: translateY(-50%)
}

.btn, .outline-none {
	outline: none
}

.btn {
	cursor: pointer;
	font-size: 14px;
	text-decoration: none;
	color: #fff;
	display: inline-block;
	text-align: center;
	border: 0;
	border-radius: 4px
}

.btn-primary {
	padding: 15px 30px;
	background-color: #14bef0
}

.slick-prev {
	left: 0 !important;
	top: 0 !important;
	height: 100% !important;
	transform: none !important;
	z-index: 1
}

.slick-prev:before {
	content: "" !important
}

.slick-next {
	right: 0 !important;
	width: unset !important;
	top: 0 !important;
	height: 100% !important;
	transform: none !important;
	z-index: 1
}

.slick-next:before {
	content: "" !important
}

.slick-dots {
	bottom: 0 !important;
	left: 50%;
	width: unset !important;
	transform: translateX(-50%)
}

.slick-dots li {
	height: 0 !important;
	width: 0 !important;
	margin: 0 10px !important
}

.slick-dots li button {
	width: 8px !important;
	height: 8px !important;
	border-radius: 50%;
	border: 1px solid #e3e3eb !important;
	padding: 0 !important
}

.slick-dots li button:before {
	color: transparent !important
}

.slick-dots .slick-active button {
	width: 8px !important;
	height: 8px !important;
	border-radius: 50%;
	border: 1px solid #ced7ba !important;
	background-color: #c0d3df
}

.slick-track {
	display: flex;
	justify-content: flex-start
}

.slick-track .slick-slide {
	height: unset
}

.carousel-navigation {
	height: 100%;
	font-size: 20px;
	color: #34422d;
	position: relative;
	width: 20px
}

.carousel-navigation.slider {
	width: 100px
}

.carousel-navigation .right-0, .carousel-navigation.slider .arrow-prev {
	right: 0
}

.carousel-navigation-button {
	height: 20px;
	width: 20px;
	opacity: .4;
	border-right: 1px solid #34422d;
	border-bottom: 1px solid #34422d
}

.carousel-navigation-button.next {
	transform: rotate(-45deg)
}

.carousel-navigation-button.prev {
	transform: rotate(135deg)
}

.carousel-navigation__round {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	position: relative;
	background-color: #fff;
	box-shadow: 0 2px 8px 0 rgba(51, 60, 63, .22)
}

.carousel-navigation__round.prev {
	left: -10px
}

.carousel-dots {
	padding: 20px;
	margin: 0
}

.s-appbanner {
	width: 100%;
	height: 572px;
	background-color: #f8f8fb
}

.s-appbanner__content {
	width: 872px;
	margin: auto;
	zoom: 1
}

.s-appbanner__image {
	right: 100px;
	width: 332px;
	height: 376px
}

.s-appbanner .downloads .store {
	width: 130px;
	height: 40px
}

.banner {
	background-color: #28328c;
	text-align: center
}

.banner__img {
	width: 100%;
	cursor: pointer;
	max-width: 1350px
}

.banner__modal {
	position: absolute;
	top: 50%;
	left: 50%;
	right: 40px;
	bottom: auto;
	border: none;
	background: none;
	overflow: auto;
	border-radius: 4px;
	outline: none;
	padding: 0;
	transform: translate(-50%, -50%);
	width: -webkit-fit-content;
	width: -moz-fit-content;
	width: fit-content
}

.banner__modal-overlay {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(19, 19, 25, .7);
	z-index: 1002
}

.banner__modal-container {
	height: 499px;
	border-radius: 16px;
	background-color: #fff
}

.banner__modal-close {
	position: absolute;
	top: 40px;
	right: 28px;
	font-size: 20px;
	cursor: pointer
}

.banner__modal-img {
	right: 38px;
	width: 356px;
	height: 419px
}

.banner__modal-header {
	width: 90%
}

.banner__modal-header h3 {
	width: 75%
}

.c-omni-wrapper {
	width: 712px;
	padding: 20px 0
}

.c-omni-wrapper .c-omni-container--desktop .c-omni-suggestion-list {
	z-index: 2
}

.c-omni-wrapper.center-aligned {
	margin: auto
}

.c-omni-space {
	height: 40px;
	border: 1px solid #b4b4be
}

.c-applink {
	display: flex
}

.c-applink__input {
	width: 256px;
	border: 1px solid #d7d7e0;
	border-radius: 4px;
	margin-right: 10px;
	display: flex;
	flex-direction: column;
	position: relative
}

.c-applink__input .link-sent {
	position: absolute;
	bottom: -20px
}

.c-applink__input .country-code {
	vertical-align: bottom;
	border-right: 1px solid rgba(180, 180, 190, .3)
}

.c-applink__input .text {
	outline: none;
	border: none;
	padding-left: 20px;
	flex-grow: 100;
	background-color: transparent
}

.c-applink__input .text::-moz-placeholder {
	color: #b4b4be
}

.c-applink__input .text:-ms-input-placeholder {
	color: #b4b4be
}

.c-applink__input .text::placeholder {
	color: #b4b4be
}

.c-applink__btn {
	padding: 15px 20px
}

.card {
	position: relative
}

.card--180 {
	width: 180px
}

.card--280 {
	width: 280px
}

.card--380 {
	width: 380px
}

.card--360 {
	width: 360px
}

.card--560 {
	width: 560px
}

.card--max {
	width: 100%
}

.card-border {
	border: 1px solid #dfdfe5
}

.card__header {
	width: 75%
}

.card-link {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 1
}

.card__img {
	border-radius: 4px;
	vertical-align: bottom;
	width: 100%;
	height: 100%
}

.card__img--180x140 {
	width: 180px;
	height: 140px
}

.card__img--120x120 {
	width: 120px;
	height: 120px
}

.card__img--280x200 {
	width: 280px;
	height: 200px
}

.card__img--280x280 {
	width: 280px;
	height: 280px
}

.card__img--380x280 {
	width: 380px;
	height: 280px
}

.card__img--480x280 {
	width: 480px;
	height: 280px
}

.card__img--360x449 {
	width: 360px;
	height: 449px
}

.card__img--580x225 {
	width: 580px;
	height: 225px
}

.card__img--max280 {
	width: 100%;
	height: 280px
}

.card:hover .card__img {
	cursor: pointer;
	box-shadow: 2px 2px 6px 0 rgba(0, 0, 0, .1);
	transition: box-shadow .3s ease, border .3s ease
}

.card:hover .card__header {
	color: #14bef0
}

.card:hover .card-border {
	border: 1px solid transparent
}

.card-testimonial {
	margin: 0 auto 50px;
	width: 580px;
	color: #000
}

.card-testimonial .testimony {
	font-size: 24px
}

.card-testimonial .user-image {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	display: inline-block
}

.card-testimonial .user-name {
	color: #000
}

.card-testimonial .user-icon {
	padding: 5px;
	font-size: 14px;
	background-color: #e0e0e5;
	color: #787887;
	border-radius: 50%
}

.card-testimonial .user-time {
	color: #9b9b9b
}

.content {
	width: 1180px;
	zoom: 1;
	margin: auto
}

.content__padding {
	padding: 60px 0
}

.c-flex--space-between {
	justify-content: space-around
}

.c-margin--0__left {
	margin-left: 0 !important
}

.c-nav {
	height: 74px;
	border-bottom: 1px solid #f0f0f5
}

.c-heading {
	color: #28328c;
	font-size: 44px;
	line-height: 1.36
}

.c-header {
	font-size: 32px;
	color: #414146
}

.c-header--offer {
	color: #fff;
	margin-bottom: 16px
}

.card_img {
	width: 100%;
	height: 100%
}

.btn_small {
	font-size: 14px;
	color: #14bef0;
	font-weight: 400;
	padding: 12px 16px;
	border: 1.5px solid #14bef0;
	background-color: #fff;
	right: 10px;
	top: 22px
}

.c-padding--30 {
	padding: 30px
}

.obj-fit--cover {
	-o-object-fit: cover;
	object-fit: cover
}

.c-footer {
	min-width: 1200px;
	background-color: #28328c;
	padding: 48px 0;
	color: #fff;
	font-size: 14px
}

.c-footer__wrapper {
	width: 1180px;
	margin: auto
}

.c-footer__content {
	margin-bottom: 28px
}

.c-footer__logo {
	margin: 28px 0
}

.c-footer__title {
	margin-bottom: 4px;
	font-size: 14px
}

.c-footer__row {
	margin-bottom: 16px
}

.c-footer__item {
	text-decoration: none;
	color: #fff;
	display: block
}

.c-footer__item:hover {
	text-decoration: underline
}

.c-footer__column {
	font-size: 14px;
	width: 18.9%;
	line-height: 20px
}

.c-footer__column:last-child {
	width: auto
}

.c-copyright {
	color: #b8bbd9
}

.s-slider {
	width: 100%
}

.s-slider__content {
	width: 1280px;
	margin: auto;
	position: relative
}

.s-slider .slick-slider {
	position: static !important
}

.s-carousel__header {
	display: flex;
	justify-content: space-between
}

.s-carousel__header .cta {
	display: flex;
	align-items: flex-end
}

.s-carousel__cards {
	margin-top: 20px;
	margin-left: -10px
}

.s-carousel .slick-track {
	width: 100% !important
}

.s-static__card {
	vertical-align: top
}
</style>

<div id="root">
<div>
<div>
<div class="u-margin--60__top">
	<div class="s-static">
		<div class="content u-d__flex">
			<div class="u-margin--15__top pos ">
				<h2 class="u-font--24 u-margin--0 u-font--bold u-margin--15__top">Consult
					top doctors online for any health concern</h2>
				<div class="u-t-c--black_1 u-font--14 u-margin--5__top">Private
					online consultations with verified doctors in all specialists</div>
				<button type="button" class="btn btn-primary btn_small pos-abs">View
					All Specialities</button>
				<div class="u-margin--20__top">
					<div class="s-static__card u-margin--10__right">
						<div class="card card--180 c-padding--30 u-t-center u-margin--5">
							<a
								href="/consult/direct/new_consultation?id=16&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"
								class="card-link"></a>
							<div class="card__img--120x120">
								<a
									href="/consult/direct/new_consultation?id=16&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"><span
									class="LazyLoad is-visible"><img
										src="https://www.practostatic.com/consult/consult-home/symptoms_icon/irregular-painful+period.png"
										alt="Period doubts or Pregnancy" class="card_img"></span></a>
							</div>
							<div
								class="u-t-c--black_1 u-font--14 u-font--bold u-margin--12__top">Period
								doubts or Pregnancy</div>
							<div
								class="u-margin--10__top u-font--12 u-t-c--black_1 u-t-uppercase u-t-c--blue_6 u-font--bold">CONSULT
								NOW</div>
						</div>
					</div>
					<div class="s-static__card u-margin--10__right u-margin--10__left">
						<div class="card card--180 c-padding--30 u-t-center u-margin--5">
							<a
								href="/consult/direct/new_consultation?id=5&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"
								class="card-link"></a>
							<div class="card__img--120x120">
								<a
									href="/consult/direct/new_consultation?id=5&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"><span
									class="LazyLoad is-visible"><img
										src="https://www.practostatic.com/consult/consult-home/symptoms_icon/Acne.png"
										alt="Acne, pimple or skin issues" class="card_img"></span></a>
							</div>
							<div
								class="u-t-c--black_1 u-font--14 u-font--bold u-margin--12__top">Acne,
								pimple or skin issues</div>
							<div
								class="u-margin--10__top u-font--12 u-t-c--black_1 u-t-uppercase u-t-c--blue_6 u-font--bold">CONSULT
								NOW</div>
						</div>
					</div>
					<div class="s-static__card u-margin--10__left">
						<div class="card card--180 c-padding--30 u-t-center u-margin--5">
							<a
								href="/consult/direct/new_consultation?id=14&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"
								class="card-link"></a>
							<div class="card__img--120x120">
								<a
									href="/consult/direct/new_consultation?id=14&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"><span
									class="LazyLoad is-visible"><img
										src="https://www.practo.com/consult/static/images/top-speciality-sexology.svg"
										alt="Performance issues in bed" class="card_img"></span></a>
							</div>
							<div
								class="u-t-c--black_1 u-font--14 u-font--bold u-margin--12__top">Performance
								issues in bed</div>
							<div
								class="u-margin--10__top u-font--12 u-t-c--black_1 u-t-uppercase u-t-c--blue_6 u-font--bold">CONSULT
								NOW</div>
						</div>
					</div>
					<div class="s-static__card u-margin--10__right u-margin--10__left">
						<div class="card card--180 c-padding--30 u-t-center u-margin--5">
							<a
								href="/consult/direct/new_consultation?id=22&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"
								class="card-link"></a>
							<div class="card__img--120x120">
								<a
									href="/consult/direct/new_consultation?id=22&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"><span
									class="LazyLoad is-visible"><img
										src="https://www.practostatic.com/consult/consult-home/symptoms_icon/coughing.png"
										alt="Cold, cough or fever" class="card_img"></span></a>
							</div>
							<div
								class="u-t-c--black_1 u-font--14 u-font--bold u-margin--12__top">Cold,
								cough or fever</div>
							<div
								class="u-margin--10__top u-font--12 u-t-c--black_1 u-t-uppercase u-t-c--blue_6 u-font--bold">CONSULT
								NOW</div>
						</div>
					</div>
					<div class="s-static__card u-margin--10__right u-margin--10__left">
						<div class="card card--180 c-padding--30 u-t-center u-margin--5">
							<a
								href="/consult/direct/new_consultation?id=17&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"
								class="card-link"></a>
							<div class="card__img--120x120">
								<a
									href="/consult/direct/new_consultation?id=17&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"><span
									class="LazyLoad is-visible"><img
										src="https://www.practo.com/consult/static/images/top-speciality-pediatric.svg"
										alt="Child not feeling well" class="card_img"></span></a>
							</div>
							<div
								class="u-t-c--black_1 u-font--14 u-font--bold u-margin--12__top">Child
								not feeling well</div>
							<div
								class="u-margin--10__top u-font--12 u-t-c--black_1 u-t-uppercase u-t-c--blue_6 u-font--bold">CONSULT
								NOW</div>
						</div>
					</div>
					<div class="s-static__card u-margin--10__right u-margin--10__left">
						<div class="card card--180 c-padding--30 u-t-center u-margin--5">
							<a
								href="/consult/direct/new_consultation?id=2&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"
								class="card-link"></a>
							<div class="card__img--120x120">
								<a
									href="/consult/direct/new_consultation?id=2&amp;utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=brand-search-practo-consult"><span
									class="LazyLoad is-visible"><img
										src="https://www.practostatic.com/acred/search-assets/2/12-mental-wellness.png"
										alt="Depression or anxiety" class="card_img"></span></a>
							</div>
							<div
								class="u-t-c--black_1 u-font--14 u-font--bold u-margin--12__top">Depression
								or anxiety</div>
							<div
								class="u-margin--10__top u-font--12 u-t-c--black_1 u-t-uppercase u-t-c--blue_6 u-font--bold">CONSULT
								NOW</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>