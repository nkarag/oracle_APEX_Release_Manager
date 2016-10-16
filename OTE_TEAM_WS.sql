set serveroutput on size 1000000
set feedback off
-- Workspace, user group and user export
-- Generated 2010.01.18 17:11:20 by ADMIN
-- This script can be run in sqlplus as the owner of the Oracle Apex owner.
begin
   wwv_flow_security.g_security_group_id := 3662311264026106;
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API will cause only meta data inserts.
prompt  Creating workspace OTE_TEAM_WS...
begin
wwv_flow_fnd_user_api.create_company (
  p_id                      => 3662411038026335,
  p_provisioning_company_id => 3662311264026106,
  p_short_name              => 'OTE_TEAM_WS',
  p_first_schema_provisioned=> 'RMGR',
  p_company_schemas         => 'RMGR',
  p_expire_fnd_user_accounts=> '',
  p_account_lifetime_days=> '',
  p_fnd_user_max_login_failures=> '');
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
----------------
-- U S E R S
-- User repository for use with apex cookie based authenticaion.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '3662204734026106',
  p_user_name    => 'ADMIN',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'nkarag@ote.gr',
  p_web_password => '88221CCCEE1DB954997D091761BF3010',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('200912281233','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'Y',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4450111322041855',
  p_user_name    => 'EFOTOPOULOS',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'efotopoulos@ote.gr',
  p_web_password => '5013F2CA4875422A69A3A9A8BF646E82',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001180000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4290131959127987',
  p_user_name    => 'LSINOS',
  p_first_name   => 'Loukas',
  p_last_name    => 'Sinos',
  p_description  => 'OTE DWH Team',
  p_email_address=> 'lsinos@ote.gr',
  p_web_password => '94EC78DC418FE6146175EA79E89D8B6C',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001080000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4451126213046077',
  p_user_name    => 'MVELISKAKIS',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'mveliskakis@ote.gr',
  p_web_password => '3F7D1B5748A400EBD66AFF4352816061',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001180000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4449522619035659',
  p_user_name    => 'NKARAG',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'nkarag@ote.gr',
  p_web_password => 'E669DD6A6CD151327778295C4BA268B6',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001180000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4451710414050977',
  p_user_name    => 'PKIOUSIS',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'pkiousis@ote.gr',
  p_web_password => 'BC6F99C9EC58FD1C4916CDAD498B9EA6',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001180000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4451402103048569',
  p_user_name    => 'SBATZAVALI',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'sbatzavali@ote.gr',
  p_web_password => '429E9BCA7B3A1F028CAF0B9D60A94D27',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001180000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4449800933038814',
  p_user_name    => 'VZORBAS',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> 'vzorbas@ote.gr',
  p_web_password => '12189E154B27824B1BEBB9CB33FDFF31',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> '',
  p_default_schema=> 'RMGR',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('201001180000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_access_to_schemas => '');
end;
/
commit;
set feedback on
prompt  ...done
