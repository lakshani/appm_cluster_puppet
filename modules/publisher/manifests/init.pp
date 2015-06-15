# ----------------------------------------------------------------------------
#  Copyright 2005-2015 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------
#
# Class: idp
#
# This class installs WSO2 AppManager as a publisher
# Actions:
#   - Install WSO2 AppManager as a publisher
#
# Requires:
#
# Sample Usage:
#

class publisher (

  $version            = undef,
  $sub_cluster_domain = undef,
  $members            = undef,
  $offset             = 0,
  $hazelcast_port     = 4000,
  $thrift_receive_port= undef,
  $config_db          = 'governance',
  $config_target_path = 'config/as',  
  $maintenance_mode   = true,
  $depsync            = false,
  $clustering         = true,
  $cloud              = false,
  $owner              = 'root',
  $group              = 'root',
  $target             = "/mnt/${server_ip}",

) inherits params {

  $deployment_code = 'publisher'
  $carbon_version  = $version
  $service_code    = 'appm'
  $carbon_home     = "${target}/wso2${service_code}-${carbon_version}"
  $service_templates = [
    'conf/app-manager.xml',
    'conf/carbon.xml',
    'conf/registry.xml',
    'conf/user-mgt.xml',
    'conf/sso-idp-config.xml',
    'conf/datasources/master-datasources.xml',
    'conf/axis2/axis2.xml',
    #'conf/tomcat/catalina-server.xml',
  ]

  tag($service_code)

  publisher::clean { $deployment_code:
    mode   => $maintenance_mode,
    target => $carbon_home,
  }

  publisher::initialize { $deployment_code:
    repo      => $package_repo,
    version   => $carbon_version,
    service   => $service_code,
    local_dir => $local_package_dir,
    target    => $target,
    mode      => $maintenance_mode,
    owner     => $owner,
    require   => Publisher::Clean[$deployment_code],
  }

  publisher::deploy { $deployment_code:
    security => true,
    owner    => $owner,
    group    => $group,
    target   => $carbon_home,
    require  => Publisher::Initialize[$deployment_code],
  }

  publisher::push_templates {
    $service_templates:
      target    => $carbon_home,
      directory => $deployment_code,
      require   => Publisher::Deploy[$deployment_code];
  }

  publisher::start { $deployment_code:
    owner   => $owner,
    target  => $carbon_home,
    require => [
      Publisher::Initialize[$deployment_code],
      Publisher::Deploy[$deployment_code],
      Publisher::Push_templates[$service_templates],
      ],
  }
}
