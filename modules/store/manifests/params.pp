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
# Class store::params
#
# This class manages appm store parameters
#

class store::params {

  $local_package_dir    = '/mnt/packs'
  $admin_username       = 'ADMIN_USER'
  $admin_password       = 'ADMIN_PASSWORD'

  # app-manager.xml => <AuthManager>
  $auth_manager_server_url    = 'elb-km.appm.wso2.com'
  $auth_manager_server_port   = '9443'
  $auth_manager_username      = 'admin'
  $auth_manager_password      = 'admin'

  # app-manager.xml => <APIKeyManager>
  $api_manager_server_url    = 'elb-km.appm.wso2.com'
  $api_manager_server_port   = '9443'
  $api_manager_username      = 'admin'
  $api_manager_password      = 'admin'

  # app-manager.xml => <SSOConfiguration>
  $sso_identity_provider_url      = 'elb-km.appm.wso2.com'
  $sso_identity_provider_port     = '9443'
  $sso_identity_provider_username = 'admin'
  $sso_identity_provider_password = 'admin'

  # app-manager.xml => <Environments>
  $app_gateway_server_url     = 'gateway.mgt.wso2.com'
  $app_gateway_server_port    = '9443'
  $app_gateway_http_endpoint  = 'elb.appm.wso2.com'
  $app_gateway_http_port      = '8280'
  $app_gateway_https_endpoint = 'elb.appm.wso2.com'
  $app_gateway_https_port     = '8243'

  # app-manager.xml 
  $thirif_server_host         = '192.168.57.132'
  $enable_thrift_server       = false


  # carbon.xml
  #$host_name            = 'store.appm.wso2.com'
  $mgt_host_name        = 'mgt.store.appm.wso2.com'
  $depsync_enable       = true
  $auto_commit          = true
  $auto_checkout        = true
  $svn_url              = 'http://192.168.57.144/svn/newrepo/'
  $svn_username         = 'user1'
  $svn_password         = 'test.123'
  $svn_kit_file_name    = 'svnkit-1.3.9.wso2v2.jar'
  $trilead_ssh_file_name= 'trilead-ssh2-1.0.0-build215.jar'


  # sso-idp-config.xml
  $store_host_name      = 'mgt.store.appm.wso2.com'
  $store_nhttp_port     = '9443'
  $publisher_host_name  = 'publisher.appm.wso2.com'
  $publisher_nhttp_port = '9443'


  # Clustering - axis2.xml
  $publisher_domain     = 'wso2.pub.store.domain'
  #$local_member_host    = 'store.appm.wso2.com'
  $members_mgt          = {'192.168.57.134' => '4000'}
  $membership_scheme    = 'wka'
  #$members_worker       = {'10.10.10.7' => '4010', '10.10.10.5' => '4010' }


  # Database details
  $is_mysql_connector	= true
  $mysql_connector_name = 'mysql-connector-java-5.1.23-bin.jar'
  $is_mysql_carbon_db   = true
  $is_h2_carbon_db      = false
  $is_mysql_am_db  	= true
  $is_h2_am_db   	= false
  $is_mysql_stat_db	= false
  $is_h2_stat_db	= true
  $is_mysql_um_db = true
  $is_h2_um_db  = false
  $is_mysql_reg_db = true
  $is_h2_reg_db  = false

  $jndi_datasource_for_carbon_db= 'jdbc/WSO2CarbonDB'
  $jndi_datasource_for_am_db	= 'jdbc/WSO2AM_DB'
  $jndi_datasource_for_stat_db	= 'jdbc/WSO2AM_STATS_DB'
  $jndi_datasource_for_reg_db  = 'jdbc/WSO2REG_DB'
  $jndi_datasource_for_um_db  = 'jdbc/WSO2UM_DB'

  # MySQL server configuration details
  $mysql_server         = '192.168.57.144'
  $mysql_port           = '3306'
  $max_connections      = '100000'
  $max_active           = '50'
  $max_wait             = '60000'
  $mysql_database_name_for_carbon_db	= 'WSO2_CARBON_DB'
  $mysql_username	= 'user'
  $mysql_password	= 'password'
  $mysql_database_name_for_am_db	= 'WSO2_AM_DB1'
  $mysql_database_name_for_stat_db	= 'WSO2AM_STATS_DB'
  $mysql_database_name_for_um_db  = 'MYSQL_UM_DB'
  $mysql_database_name_for_reg_db  = 'WSO2_REG_DB'

  # H2 server configuration details
  $h2_db_path_for_am_db		= 'repository/database'
  $h2_db_path_for_carbon_db	= 'repository/database'
  $h2_db_path_for_stat_db	= 'repository/database'
  $h2_database_name_for_carbon_db	= 'WSO2CARBON_DB'
  $h2_username		= 'wso2carbon'
  $h2_password		= 'wso2carbon'
  $h2_database_name_for_am_db		= 'WSO2AM_DB'
  $h2_database_name_for_stat_db		= 'WSO2AM_STATS_DB'

  # Registry configuration details
  $remote_instance_govregistry = '"https://mgt.publisher.appm.wso2.com:9543/registry"'
  $remote_instance_configregistry = '"https://mgt.publisher.appm.wso2.com:9643/registry"'
  $remote_instance_gov_cacheid = 'user@jdbc:mysql://192.168.57.144:3306/WSO2_REG_DB'
  $remote_instance_config_cacheid = 'user@jdbc:mysql://192.168.57.144:3306/WSO2_REG_DB'

  # AppM statictics configration details
  $is_ui_activity_bam_publish	= false
  $is_appm_usage_tracker	= false
  $bam_thrift_port		= '7611'
  $bam_server_url		= 'tcp://10.10.10.6:7611/'
  $bam_username			= 'admin'
  $bam_password			= 'admin'

  $registry_user        = 'DB_USER'
  $registry_password    = 'DB_PASSWORD'
  $registry_database    = 'REGISTRY_DB'

  $userstore_user       = 'DB_USER'
  $userstore_password   = 'DB_PASSWORD'
  $userstore_database   = 'USERSTORE_DB'

  #LDAP settings - not used
  $ldap_connection_uri      = 'ldap://localhost:10389'
  $bind_dn                  = 'uid=admin,ou=system'
  $bind_dn_password         = 'adminpassword'
  $user_search_base         = 'ou=system'
  $group_search_base        = 'ou=system'
  $sharedgroup_search_base  = 'ou=SharedGroups,dc=wso2,dc=org'

  #Proxy ports
  $http_proxy_port             = '80'
  $https_proxy_port             = '443'

  #host mapping 
  $idp_node_ip                      = '192.168.57.132'
  $idp_node_host_name               = 'elb-km.appm.wso2.com'
  $publisher_worker_node_id         = '192.168.57.134'
  $publisher_worker_node_host_name  = 'publisher.appm.wso2.com'
  $publisher_mgt_node_id            = '192.168.57.134'
  $publisher_mgt_node_host_name     = 'mgt.publisher.appm.wso2.com'
  $store_worker_node_id             = '192.168.57.135'
  $store_worker_node_host_name      = 'worker.store.appm.wso2.com'
  $store_mgt_node_ip                = '192.168.57.135'
  $store_mgt_node_host_name         = 'mgt.store.appm.wso2.com'
  $store_node_ip                    = '192.168.57.135'
  $store_node_host_name             = 'store.appm.wso2.com'
  $load_balancer_node_ip            = '192.168.57.135'
  $load_balancer_node_host_name     = 'elb.appm.wso2.com'
  $gateway_mgt_node_ip              = '192.168.57.136'
  $gateway_mgt_node_host_name       = 'gateway.mgt.wso2.com'
  $gateway_worker_node_ip           = '192.168.57.139'
  $gateway_worker_node_host_name    = 'gateway.wkr.wso2.com'
  $mysql_server_node_ip             = '192.168.57.144'
  $mysql_server_node_host_name      = 'mysql-puppet.appm.wso2.com'
  $puppet_master_node_ip            = '192.168.57.144'
  $puppet_master_node_host_name     = 'mysql-puppet.appm.wso2.com'

  #nginx conf
  $nginx_crt_name     = 'appm'
  $nginx_key_name     = 'appm'

}
