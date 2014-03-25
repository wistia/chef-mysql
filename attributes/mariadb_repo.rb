#
# Cookbook Name:: mysql
# Attributes:: mariadb_repo
#
# Copyright 2013, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['mysql']['mariadb']['apt_key'] = '1BB943DB'
default['mysql']['mariadb']['apt_uri'] = "http://mirrors.supportex.net/mariadb/repo/5.5/ubuntu"
default['mysql']['mariadb']['apt_keyserver'] = "keyserver.ubuntu.com"

arch = case node['kernel']['machine']
       when "x86_64" then "amd64"
       when "amd64" then "amd64"
       else "x86"
       end
pversion = node['platform_version'].split('.').first
default['mysql']['mariadb']['yum_uri'] = "http://yum.mariadb.org/5.5/#{node['platform']}#{pversion}-#{arch}"
