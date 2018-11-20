# encoding: utf-8

name 'test'
description 'The environment for test net 10.1.1.0/24.'
cookbook_versions({
  'cinemavr-chef-win-machines' => '= 6.5.0',
  'cinemavr-chef-control-server' => '= 8.17.0',
  'cinemavr-chef-global-server' => '= 5.11.0',
# platform
  'platform-chef-client' => '= 1.1.0',
  'platform-docker' => '= 1.0.0',
  'platform-elastic' => '= 1.4.0',
  'platform-analytics' => '= 1.3.0',
# raspberry
  'cinemavr-chef-raspberry' => '= 2.2.0',
})

require_relative '../default/hash'
require_relative 'attributes'
require_relative 'locations'
require_relative '../default/location'
require_relative 'steam_users'

vr_cinema_distribution = {
  #'control_server_version' => 'location_5.32.0_artvr-print-dynamic_23_10_2018_1732',
  gamer_pc_login: 'gamer',
  gamer_pc_password: 'secret',
  server_temp_calibrate_path: '/home/user/calibrate/',
  gamer_pc_local_steam_path: 'C:\\Program Files (x86)\\Steam\\config\\',
  gamer_pc_local_vrtech_path: 'C:\\VRTech\\',
  gamer_pc_service_version: '11.11.10',
  gamer_pc_agent_runner_version: '1.0.1q',
  gamer_pc_windows_version: 'KB4022405',
  gamer_pc_openssh_version: '7.5.1.1',
  gamer_pc_7zip_version:  '16.4.0.20170506'
  locations: LOCATIONS,
  default_location: DEFAULT_LOCATION,
  attributses: ATTRIBUTES,
  steam_users: STEAM_USEwRS,
}#

default_attributes 'vr-cinema-distribution' => vr_cinema_distribution
