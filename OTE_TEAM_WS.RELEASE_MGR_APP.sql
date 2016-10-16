set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 102 - RELEASE_MGR_APP
--
-- Application Export:
--   Application:     102
--   Name:            RELEASE_MGR_APP
--   Date and Time:   17:14 Friday August 10, 2012
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 3.0.1.00.08
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user FLOWS_030000 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                 4
--     Items:              33
--     Computations:        6
--     Validations:         9
--     Processes:          29
--     Regions:             9
--     Buttons:            25
--   Shared Components
--     Breadcrumbs:         1
--        Entries           0
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             1
--     NavBars:             1
--     Lists:               0
--     Shortcuts:           1
--     Themes:              1
--     Templates:
--        Page:             9
--        List:            14
--        Report:           7
--        Label:            5
--        Region:          23
--     Messages:            0
--     Build Options:       0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user FLOWS_030000 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>3662311264026106);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en-us'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2007.01.08');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 102;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(102);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(102);
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => 102,
  p_display_id=> 102,
  p_owner => 'RMGR',
  p_name  => 'RELEASE_MGR_APP',
  p_alias => 'RMGRAPP',
  p_page_view_logging => 'YES',
  p_default_page_template=> 15690571895613988 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 15690080816613987 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 15693362674613994 + wwv_flow_api.g_id_offset,
  p_error_template    => 15690571895613988 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'N',
  p_checksum_salt_last_reset => '20120810171415',
  p_home_link         => 'f?p=&APP_ID.:2:&SESSION.',
  p_box_width         => '98%',
  p_flow_language     => 'en-us',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => '',
  p_logout_url        => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_application_tab_set=> 1,
  p_public_url_prefix => '',
  p_public_user       => 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(15697155117614020 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 9,
  p_default_label_template => 15695963452614001 + wwv_flow_api.g_id_offset,
  p_default_report_template => 15694977841613997 + wwv_flow_api.g_id_offset,
  p_default_list_template => 15694478978613997 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 15696158733614001 + wwv_flow_api.g_id_offset,
  p_default_button_template => 15690983645613991 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 15692755333613993 + wwv_flow_api.g_id_offset,
  p_default_form_template => 15691584177613992 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 15693173775613993 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 15693362674613994 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>15693362674613994 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 15693466155613994 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 15691584177613992 + wwv_flow_api.g_id_offset,
  p_substitution_string_01 => 'SERVER',
  p_substitution_value_01  => 'http://dwhprod1.ote.gr:7777/pls/apex/',
  p_substitution_string_02 => 'MAXROWCOUNT',
  p_substitution_value_02  => '500',
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20120810171415',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 15697472597614021 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 200,
  p_icon_image     => '',
  p_icon_subtext   => 'Logout',
  p_icon_target    => 'f?p=&APP_ID.:LOGIN:&SESSION.::&DEBUG.::::',
  p_icon_image_alt => 'Logout',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'CURRENT_LOOK_IS_1',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 15703081485615427 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_item_comment=> '');
 
null;
 
end;
/

prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/request_form
wwv_flow_api.create_tab (
  p_id=> 15845675283857939 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 30,
  p_tab_name=> 'Request Form',
  p_tab_text => 'Request Form',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
--application/shared_components/user_interface/lov/areas_lov
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 15826575096531131 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'AREAS_LOV',
  p_lov_query=> 'select AREA_DESC display_value, AREA_ID return_value '||chr(10)||
'from RLSMGR_AREAS'||chr(10)||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/bugzilla_ids
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 16213466013703943 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'BUGZILLA_IDS',
  p_lov_query=> 'select BUGZILLA_ID display_value, BUGZILLA_ID return_value '||chr(10)||
'from RLSMGR_FORMS'||chr(10)||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/form_types_lov
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 15828584231543237 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'FORM_TYPES_LOV',
  p_lov_query=> 'select FORM_TYPE_DESC display_value, FORM_TYPE_ID return_value '||chr(10)||
'from RLSMGR_FORM_TYPES'||chr(10)||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/obj_types_lov
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 15827562068536840 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'OBJ_TYPES_LOV',
  p_lov_query=> 'select OBJ_TYPE_DESC display_value, OBJ_TYPE_ID return_value '||chr(10)||
'from RLSMGR_OBJ_TYPES'||chr(10)||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/pms_lov
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 15825057996516783 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'PMS_LOV',
  p_lov_query=> 'select PRJMGR_LNAME || '' '' || PRJMGR_FNAME display_value, PRJMGR_ID return_value '||chr(10)||
'from RLSMGR_PRJ_MANAGERS'||chr(10)||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/request_statuses
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 16663663708224822 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'REQUEST_STATUSES',
  p_lov_query=> 'select STATUS_DESC display_value, STATUS_ID return_value '||chr(10)||
'from RLSMGR_STATUSES'||chr(10)||
'order by 1');
 
null;
 
end;
/

prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00002
prompt  ...PAGE 2: Form on RLSMGR_FORMS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 2,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Form on RLSMGR_FORMS',
  p_alias  => 'RQSTFORM',
  p_step_title=> 'Form on RLSMGR_FORMS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss => '20120810165339',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>2,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>2,p_text=>ph);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 8526015614481275 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Section 3: Object Filter',
  p_region_name=>'',
  p_plug_template=> 15693362674613994+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 12,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_04',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'EXISTS',
  p_plug_display_when_condition => 'select 1 from dual where :P2_FORM_ID is not null',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 15845770003857939 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Section 1: CR/Bug Info',
  p_region_name=>'',
  p_plug_template=> 15691584177613992+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 11,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 15932470733365434 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Section 2: Changed Areas',
  p_region_name=>'',
  p_plug_template=> 15693362674613994+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 22,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'EXISTS',
  p_plug_display_when_condition => 'select 1 from dual where :P2_FORM_ID is not null',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select a.FORM_ID FORM_ID'||chr(10)||
',apex_item.checkbox(1,a.OBJ_ID) "Delete Object",'||chr(10)||
'c.AREA_ID AREA_ID, c.AREA_DESC AREA_DESC, a.OBJ_ID OBJ_ID, b.OBJ_DESC OBJ_DESC, b.OBJ_TYPE_ID OBJ_TYPE_ID, d.OBJ_TYPE_DESC OBJ_TYPE_DESC'||chr(10)||
',case when b.FORM_ID = :P2_FORM_ID '||chr(10)||
'    then ''<p style="color: red; font-size:15px;"> NEW </p>''||'||chr(10)||
'         ''<a href="&SERVER.f?p=&APP_ID.:ADDNEWOBJS:&APP_SESSION.:EDITFROMRQSTFORM:NO::';

s:=s||'P5_OBJ_ID:''||a.OBJ_ID||''"> <img src="#IMAGE_PREFIX#edit-white.gif" alt="Edit"> </a>'''||chr(10)||
'    when b.FORM_ID IS NULL then ''N/A'''||chr(10)||
'    else ''<a style="color: blue" href="http://10.101.14.28:8666/bugzilla/show_bug.cgi?id=''||to_char(e.BUGZILLA_ID)||''">''||to_char(e.BUGZILLA_ID)||''</a>'' '||chr(10)||
' end as BUGZILLA_ID   '||chr(10)||
',APEX_ITEM.TEXTAREA(2,a.change_details,5,80) CHANGE_DETAILS'||chr(10)||
'from RMGR.RLSMGR_FORMCHANGESOBJS a ';

s:=s||'join RMGR.RLSMGR_OBJECTS b on (a.OBJ_ID = b.OBJ_ID)join RMGR.RLSMGR_AREAS  c on (b.OBJ_AREA_ID = c.AREA_ID)'||chr(10)||
'join RLSMGR_OBJ_TYPES d on (d.OBJ_TYPE_ID = b.OBJ_TYPE_ID) '||chr(10)||
'left outer join RMGR.RLSMGR_FORMS e on (b.FORM_ID = e.FORM_ID)'||chr(10)||
'where a.FORM_ID = :P2_FORM_ID'||chr(10)||
'AND b.OBJ_DESC LIKE nvl(:P2_OBJ_DESC_SRCH,b.OBJ_DESC)'||chr(10)||
'AND c.AREA_ID = decode( nvl(:P2_AREAS_SRCH,-999), -999, c.AREA_ID,:P2_AREAS_SRCH';

s:=s||')'||chr(10)||
'AND b.OBJ_TYPE_ID = decode(nvl(:P2_OBJ_TYPE_SRCH,-999), -999, b.OBJ_TYPE_ID, :P2_OBJ_TYPE_SRCH)'||chr(10)||
'order by AREA_DESC, OBJ_DESC'||chr(10)||
''||chr(10)||
'/*'||chr(10)||
'select a.FORM_ID'||chr(10)||
',apex_item.checkbox(1,a.OBJ_ID) "Delete Object",'||chr(10)||
'c.AREA_ID, c.AREA_DESC, a.OBJ_ID, b.OBJ_DESC, b.OBJ_TYPE_ID, d.OBJ_TYPE_DESC'||chr(10)||
'from RMGR.RLSMGR_FORMCHANGESOBJS a join  RMGR.RLSMGR_OBJECTS b on (a.OBJ_ID = b.OBJ_ID)join RMGR.RLSMGR_AREAS  c on (b';

s:=s||'.OBJ_AREA_ID = c.AREA_ID)'||chr(10)||
'join RLSMGR_OBJ_TYPES d on (d.OBJ_TYPE_ID = b.OBJ_TYPE_ID)'||chr(10)||
'where a.FORM_ID = :P2_FORM_ID'||chr(10)||
'*/';

wwv_flow_api.create_report_region (
  p_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Section 3: Changed Objects in each area',
  p_region_name=>'',
  p_template=> 15693362674613994+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 12,
  p_display_column=> 1,
  p_display_point=> 'REGION_POSITION_04',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_display_when_condition=> 'select 1 from dual where :P2_FORM_ID is not null'||chr(10)||
'/*:P2_INSERT_FORMAREAS_IND = 1*/',
  p_display_condition_type=> 'EXISTS',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_query_row_template=> 15694977841613997+ wwv_flow_api.g_id_offset,
  p_plug_query_max_columns=> 60,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '500',
  p_query_options=> 'GENERIC_REPORT_COLUMNS',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'ROWS_X_TO_Y_OF_Z',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'Y',
  p_csv_output_link_text=> 'Export to CSV',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_exp_filename=> 'objects_to_change.csv',
  p_plug_query_exp_separator=> ';',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520373536374609 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'COL01',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Col01',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520477509374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'COL02',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Delete Object',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520567573374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'COL03',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Col03',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520678340374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'COL04',
  p_column_display_sequence=> 4,
  p_column_heading=> 'AREA',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520772700374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'COL05',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Col05',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520876758374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'COL06',
  p_column_display_sequence=> 6,
  p_column_heading=> 'OBJECT',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16520986248374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'COL07',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Col07',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521061558374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'COL08',
  p_column_display_sequence=> 8,
  p_column_heading=> 'OBJECT TYPE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521179985374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'COL09',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Created By Bugzilla Id',
  p_column_alignment=>'CENTER',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521270624374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'COL10',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Change Details',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521380625374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'COL11',
  p_column_display_sequence=> 11,
  p_column_heading=> 'Col11',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521469222374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 12,
  p_form_element_id=> null,
  p_column_alias=> 'COL12',
  p_column_display_sequence=> 12,
  p_column_heading=> 'Col12',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521570825374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 13,
  p_form_element_id=> null,
  p_column_alias=> 'COL13',
  p_column_display_sequence=> 13,
  p_column_heading=> 'Col13',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521676730374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 14,
  p_form_element_id=> null,
  p_column_alias=> 'COL14',
  p_column_display_sequence=> 14,
  p_column_heading=> 'Col14',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521776398374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 15,
  p_form_element_id=> null,
  p_column_alias=> 'COL15',
  p_column_display_sequence=> 15,
  p_column_heading=> 'Col15',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521855257374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 16,
  p_form_element_id=> null,
  p_column_alias=> 'COL16',
  p_column_display_sequence=> 16,
  p_column_heading=> 'Col16',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16521985396374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 17,
  p_form_element_id=> null,
  p_column_alias=> 'COL17',
  p_column_display_sequence=> 17,
  p_column_heading=> 'Col17',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522068000374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 18,
  p_form_element_id=> null,
  p_column_alias=> 'COL18',
  p_column_display_sequence=> 18,
  p_column_heading=> 'Col18',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522177866374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 19,
  p_form_element_id=> null,
  p_column_alias=> 'COL19',
  p_column_display_sequence=> 19,
  p_column_heading=> 'Col19',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522270897374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 20,
  p_form_element_id=> null,
  p_column_alias=> 'COL20',
  p_column_display_sequence=> 20,
  p_column_heading=> 'Col20',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522359879374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 21,
  p_form_element_id=> null,
  p_column_alias=> 'COL21',
  p_column_display_sequence=> 21,
  p_column_heading=> 'Col21',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522475445374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 22,
  p_form_element_id=> null,
  p_column_alias=> 'COL22',
  p_column_display_sequence=> 22,
  p_column_heading=> 'Col22',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522586874374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 23,
  p_form_element_id=> null,
  p_column_alias=> 'COL23',
  p_column_display_sequence=> 23,
  p_column_heading=> 'Col23',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522674522374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 24,
  p_form_element_id=> null,
  p_column_alias=> 'COL24',
  p_column_display_sequence=> 24,
  p_column_heading=> 'Col24',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522763542374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 25,
  p_form_element_id=> null,
  p_column_alias=> 'COL25',
  p_column_display_sequence=> 25,
  p_column_heading=> 'Col25',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522874457374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 26,
  p_form_element_id=> null,
  p_column_alias=> 'COL26',
  p_column_display_sequence=> 26,
  p_column_heading=> 'Col26',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16522982647374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 27,
  p_form_element_id=> null,
  p_column_alias=> 'COL27',
  p_column_display_sequence=> 27,
  p_column_heading=> 'Col27',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523061047374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 28,
  p_form_element_id=> null,
  p_column_alias=> 'COL28',
  p_column_display_sequence=> 28,
  p_column_heading=> 'Col28',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523172272374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 29,
  p_form_element_id=> null,
  p_column_alias=> 'COL29',
  p_column_display_sequence=> 29,
  p_column_heading=> 'Col29',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523275438374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 30,
  p_form_element_id=> null,
  p_column_alias=> 'COL30',
  p_column_display_sequence=> 30,
  p_column_heading=> 'Col30',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523384382374610 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 31,
  p_form_element_id=> null,
  p_column_alias=> 'COL31',
  p_column_display_sequence=> 31,
  p_column_heading=> 'Col31',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523455180374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 32,
  p_form_element_id=> null,
  p_column_alias=> 'COL32',
  p_column_display_sequence=> 32,
  p_column_heading=> 'Col32',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523563963374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 33,
  p_form_element_id=> null,
  p_column_alias=> 'COL33',
  p_column_display_sequence=> 33,
  p_column_heading=> 'Col33',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523669605374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 34,
  p_form_element_id=> null,
  p_column_alias=> 'COL34',
  p_column_display_sequence=> 34,
  p_column_heading=> 'Col34',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523774373374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 35,
  p_form_element_id=> null,
  p_column_alias=> 'COL35',
  p_column_display_sequence=> 35,
  p_column_heading=> 'Col35',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523886316374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 36,
  p_form_element_id=> null,
  p_column_alias=> 'COL36',
  p_column_display_sequence=> 36,
  p_column_heading=> 'Col36',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16523957905374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 37,
  p_form_element_id=> null,
  p_column_alias=> 'COL37',
  p_column_display_sequence=> 37,
  p_column_heading=> 'Col37',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524086990374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 38,
  p_form_element_id=> null,
  p_column_alias=> 'COL38',
  p_column_display_sequence=> 38,
  p_column_heading=> 'Col38',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524167392374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 39,
  p_form_element_id=> null,
  p_column_alias=> 'COL39',
  p_column_display_sequence=> 39,
  p_column_heading=> 'Col39',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524282597374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 40,
  p_form_element_id=> null,
  p_column_alias=> 'COL40',
  p_column_display_sequence=> 40,
  p_column_heading=> 'Col40',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524364378374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 41,
  p_form_element_id=> null,
  p_column_alias=> 'COL41',
  p_column_display_sequence=> 41,
  p_column_heading=> 'Col41',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524482976374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 42,
  p_form_element_id=> null,
  p_column_alias=> 'COL42',
  p_column_display_sequence=> 42,
  p_column_heading=> 'Col42',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524571316374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 43,
  p_form_element_id=> null,
  p_column_alias=> 'COL43',
  p_column_display_sequence=> 43,
  p_column_heading=> 'Col43',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524664043374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 44,
  p_form_element_id=> null,
  p_column_alias=> 'COL44',
  p_column_display_sequence=> 44,
  p_column_heading=> 'Col44',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524758122374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 45,
  p_form_element_id=> null,
  p_column_alias=> 'COL45',
  p_column_display_sequence=> 45,
  p_column_heading=> 'Col45',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524874245374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 46,
  p_form_element_id=> null,
  p_column_alias=> 'COL46',
  p_column_display_sequence=> 46,
  p_column_heading=> 'Col46',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16524960889374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 47,
  p_form_element_id=> null,
  p_column_alias=> 'COL47',
  p_column_display_sequence=> 47,
  p_column_heading=> 'Col47',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525080770374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 48,
  p_form_element_id=> null,
  p_column_alias=> 'COL48',
  p_column_display_sequence=> 48,
  p_column_heading=> 'Col48',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525172956374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 49,
  p_form_element_id=> null,
  p_column_alias=> 'COL49',
  p_column_display_sequence=> 49,
  p_column_heading=> 'Col49',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525276649374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 50,
  p_form_element_id=> null,
  p_column_alias=> 'COL50',
  p_column_display_sequence=> 50,
  p_column_heading=> 'Col50',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525370070374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 51,
  p_form_element_id=> null,
  p_column_alias=> 'COL51',
  p_column_display_sequence=> 51,
  p_column_heading=> 'Col51',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525479600374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 52,
  p_form_element_id=> null,
  p_column_alias=> 'COL52',
  p_column_display_sequence=> 52,
  p_column_heading=> 'Col52',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525572464374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 53,
  p_form_element_id=> null,
  p_column_alias=> 'COL53',
  p_column_display_sequence=> 53,
  p_column_heading=> 'Col53',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525669252374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 54,
  p_form_element_id=> null,
  p_column_alias=> 'COL54',
  p_column_display_sequence=> 54,
  p_column_heading=> 'Col54',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525766073374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 55,
  p_form_element_id=> null,
  p_column_alias=> 'COL55',
  p_column_display_sequence=> 55,
  p_column_heading=> 'Col55',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525862562374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 56,
  p_form_element_id=> null,
  p_column_alias=> 'COL56',
  p_column_display_sequence=> 56,
  p_column_heading=> 'Col56',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16525954467374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 57,
  p_form_element_id=> null,
  p_column_alias=> 'COL57',
  p_column_display_sequence=> 57,
  p_column_heading=> 'Col57',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16526061350374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 58,
  p_form_element_id=> null,
  p_column_alias=> 'COL58',
  p_column_display_sequence=> 58,
  p_column_heading=> 'Col58',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16526171029374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 59,
  p_form_element_id=> null,
  p_column_alias=> 'COL59',
  p_column_display_sequence=> 59,
  p_column_heading=> 'Col59',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16526265245374611 + wwv_flow_api.g_id_offset,
  p_region_id=> 16083979038334044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 60,
  p_form_element_id=> null,
  p_column_alias=> 'COL60',
  p_column_display_sequence=> 60,
  p_column_heading=> 'Col60',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 16214083328708970 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'FIND EXISTING REQUEST FORM by Bugzilla ID',
  p_region_name=>'',
  p_plug_template=> 15693362674613994+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 16058978048914164 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 50,
  p_button_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE_CHANGE_AREAS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Remove Change Areas and ALL corresponding objects',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE_CHANGE_AREAS'');',
  p_button_condition=> ':P2_INSERT_FORMAREAS_IND = 1',
  p_button_condition_type=> 'PLSQL_EXPRESSION',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 8526918954481289 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 80,
  p_button_plug_id => 8526015614481275+wwv_flow_api.g_id_offset,
  p_button_name    => 'GO',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Go',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16151078471931656 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 80,
  p_button_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_button_name    => 'CLEAR_SELECTION',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Clear Selection',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_condition_type=> 'NEVER',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16218383852746917 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 90,
  p_button_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE_ANOTHER_FORM',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create Another Request Form',
  p_button_position=> 'LEFT_OF_TITLE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'select 1'||chr(10)||
'from dual'||chr(10)||
'where '||chr(10)||
'exists ('||chr(10)||
'select 1 from RMGR.RLSMGR_FORMS where FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'AND'||chr(10)||
'exists ('||chr(10)||
'select 1 from RMGR.RLSMGR_FORMREFERSTOAREAS where FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'AND'||chr(10)||
'exists ('||chr(10)||
'select 1 from RMGR.RLSMGR_FORMCHANGESOBJS where FORM_ID = :P2_FORM_ID'||chr(10)||
')',
  p_button_condition_type=> 'EXISTS',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15932869043365452 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 20,
  p_button_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_button_name    => 'APPLY_CHANGES_AREAS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes to Areas AND Delete affected Objects',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> ':P2_INSERT_FORMAREAS_IND = 1',
  p_button_condition_type=> 'PLSQL_EXPRESSION',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15846066929857942 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 30,
  p_button_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_button_name    => 'APPLY_CHANGES_HDR',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P2_FORM_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15846382029857943 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL_HDR',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_button_condition_type=> 'NEVER',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15932682213365452 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL_AREAS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_button_condition_type=> 'NEVER',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15932767501365452 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 20,
  p_button_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE_AREAS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Submit Change Areas',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> ':P2_INSERT_FORMAREAS_IND is NULL',
  p_button_condition_type=> 'PLSQL_EXPRESSION',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16084873306334057 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 30,
  p_button_plug_id => 16083979038334044+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Select New Objects',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:UPDTFORM:&SESSION.::&DEBUG.:UPDTFORM::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15845979977857942 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 40,
  p_button_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE_HDR',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> ':P2_FORM_ID IS NULL',
  p_button_condition_type=> 'PLSQL_EXPRESSION',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15846168397857942 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 20,
  p_button_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE_HDR',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete this Request Form and ALL corresponding data',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE_HDR'');',
  p_button_condition=> 'P2_FORM_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 15932984810365452 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 20,
  p_button_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE_AREAS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE_AREAS'');',
  p_button_condition=> ':P2_INSERT_FORMAREAS_IND = 1',
  p_button_condition_type=> 'NEVER',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16132656525215727 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 60,
  p_button_plug_id => 16083979038334044+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE_OBJS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete Objects from Request',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE_OBJS'');',
  p_button_condition=> 'select * from RMGR.RLSMGR_FORMCHANGESOBJS'||chr(10)||
'where FORM_ID = :P2_FORM_ID',
  p_button_condition_type=> 'EXISTS',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16142186017328303 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 70,
  p_button_plug_id => 16083979038334044+wwv_flow_api.g_id_offset,
  p_button_name    => 'CLEAR_SELECTION',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Clear Selection',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'select * from RMGR.RLSMGR_FORMCHANGESOBJS'||chr(10)||
'where FORM_ID = :P2_FORM_ID',
  p_button_condition_type=> 'EXISTS',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16628083657277110 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 100,
  p_button_plug_id => 16083979038334044+wwv_flow_api.g_id_offset,
  p_button_name    => 'UPDATE_CHANGE_DETAILS',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Update Change Details',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>15846980267857944 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>15934271906365456 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16059277173914168 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16058978048914164+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16132979383215730 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16132656525215727+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16151375351931660 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16151078471931656+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16218686544746919 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16218383852746917+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16628368997277128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&FLOW_ID.:RQSTFORM:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16628083657277110+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8526335436481286 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_OBJ_DESC_SRCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 8526015614481275+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Objects By Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8526514848481287 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_AREAS_SRCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 22,
  p_item_plug_id => 8526015614481275+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Objects By Area',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_lov => 'select AREA_DESC display_value, AREA_ID return_value '||chr(10)||
'from RLSMGR_AREAS'||chr(10)||
'where AREA_ID in ('||chr(10)||
'select AREA_ID '||chr(10)||
'from RLSMGR_FORMREFERSTOAREAS '||chr(10)||
'where FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select an Area --',
  p_lov_null_value=> '-999',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8526717452481288 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_OBJ_TYPE_SRCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 32,
  p_item_plug_id => 8526015614481275+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Object by Type',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> '%null%',
  p_lov => 'select a.OBJ_TYPE_DESC display_value, OBJ_TYPE_ID return_value '||chr(10)||
'from RLSMGR_OBJ_TYPES a '||chr(10)||
'where '||chr(10)||
'a.OBJ_TYPE_ID in ('||chr(10)||
'    select b.OBJ_TYPE_ID'||chr(10)||
'    from RLSMGR_OBJECTS b'||chr(10)||
'    where b.OBJ_AREA_ID in ('||chr(10)||
'        select c.AREA_ID from RLSMGR_FORMREFERSTOAREAS c where c.FORM_ID = :P2_FORM_ID'||chr(10)||
'       ) '||chr(10)||
'    )'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select an Object Type',
  p_lov_null_value=> '-999',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'This is the unique identifier of this request.';

wwv_flow_api.create_page_item(
  p_id=>15847167892857946 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_FORM_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Request Form Id',
  p_source=>'FORM_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15847385450857950 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_PRJMGR_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'OTE Project Manager',
  p_source=>'PRJMGR_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'PMS_LOV',
  p_lov => 'select PRJMGR_LNAME || '' '' || PRJMGR_FNAME display_value, PRJMGR_ID return_value '||chr(10)||
'from RLSMGR_PRJ_MANAGERS'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'--Select a Project Manager--',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695777703614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Specify if this is a request for a bug-fix or for the implementation of a new Change Request.';

wwv_flow_api.create_page_item(
  p_id=>15847784530857952 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_FORM_TYPE_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Request Type',
  p_source=>'FORM_TYPE_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'FORM_TYPES_LOV',
  p_lov => 'select FORM_TYPE_DESC display_value, FORM_TYPE_ID return_value '||chr(10)||
'from RLSMGR_FORM_TYPES'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'--Select a Request Type--',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15696058694614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15848177943857953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_POPULATION_DATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'to_char(sysdate, ''YYYY/MM/DD HH24:MI'')',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Population Date',
  p_source=>'POPULATION_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_YYYY_HH24_MI',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 15695862221614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15848583575857953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_LAST_UPDATE_DATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'to_char(sysdate, ''YYYY/MM/DD HH24:MI'')',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Last Update',
  p_source=>'LAST_UPDATE_DATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_YYYY_HH24_MI',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Provide the id number of the corresponding "bug entry" in bugzilla. All CRs or bugs must first be recorded in bugzilla, prior to submitting a request with this form.';

wwv_flow_api.create_page_item(
  p_id=>15848775157857953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_BUGZILLA_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bugzilla Id',
  p_post_element_text=>' <a href="http://10.101.14.28:8666/bugzilla/show_bug.cgi?id=&P2_BUGZILLA_ID."> GO TO &P2_BUGZILLA_ID.</a> ',
  p_source=>'BUGZILLA_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15696058694614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15849154583857953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_RM_BUGZILLA_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'CLONE Bugzilla Id for RELEASE MANAGEMENT',
  p_post_element_text=>' <a href="http://10.101.14.28:8666/bugzilla/show_bug.cgi?id=&P2_RM_BUGZILLA_ID."> GO TO &P2_RM_BUGZILLA_ID.</a> ',
  p_source=>'RM_BUGZILLA_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695777703614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Provide a name for this task (bug-fix or CR implementation). Hint: you might use the field bugzilla summary for this.';

wwv_flow_api.create_page_item(
  p_id=>15849758699857953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_TASK_NAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Task Name',
  p_source=>'TASK_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 50,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15696058694614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Provide a short description (500 characters max) for this task (bug-fix or change request inplementation)';

wwv_flow_api.create_page_item(
  p_id=>15850161126857954 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_SHORT_DESC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Short Desc',
  p_source=>'SHORT_DESC',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 300,
  p_cHeight=> 4,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15696058694614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15933655823365454 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_REQUEST_ID',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Request Form Id',
  p_source=>'&P2_FORM_ID.',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15934054721365456 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_AREA_DESC',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'AREA_DESC',
  p_source_type=> 'STATIC',
  p_display_as=> 'CHECKBOX',
  p_named_lov=> 'AREAS_LOV',
  p_lov => 'select AREA_DESC display_value, AREA_ID return_value '||chr(10)||
'from RLSMGR_AREAS'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15940377237461943 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_INSERT_FORMAREAS_IND',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => 'This hidden item is used to control the appearance of the buttons in Section 2 (Changed Areas). It is set to 1 by the (page-processing) process INSERT_INTO_RLSMGR_FORMREFERSTOAREA, whenever rows are inserted in the corresponding table for the specific form id which is open (ie., inserted in the RLSMGR_FORMS table).');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15986770730833327 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_DEBUG',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 15932470733365434+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Debug',
  p_source=>'P2_DEBUG',
  p_source_type=> 'ITEM',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_read_only_when_type=>'ALWAYS',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16216480127726969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_SELECT_BUGZILLA_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 16214083328708970+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Select Bugzilla Id',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX_WITH_SUBMIT',
  p_named_lov=> 'BUGZILLA_IDS',
  p_lov => 'select BUGZILLA_ID display_value, BUGZILLA_ID return_value '||chr(10)||
'from RLSMGR_FORMS'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- SELECT EXISTING BUGZILLA ID --',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16646665364619717 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_DEBUG2',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 140,
  p_item_plug_id => 16083979038334044+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16664965701244281 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_REQUEST_STATUSES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 150,
  p_item_plug_id => 15845770003857939+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Request Status',
  p_source=>'STATUS_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'REQUEST_STATUSES',
  p_lov => 'select STATUS_DESC display_value, STATUS_ID return_value '||chr(10)||
'from RLSMGR_STATUSES'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select a Status --',
  p_lov_null_value=> '-999',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_display_when=>'APEX_APPLICATION.G_USER IN (''lsinos'', ''LSINOS'', ''nkarag'',''NKARAG'', ''admin'', ''ADMIN'')'||chr(10)||
'',
  p_display_when_type=>'PLSQL_EXPRESSION',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 15882075751278763 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_computation_sequence => 20,
  p_computation_item=> 'P2_POPULATION_DATE',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'PLSQL_EXPRESSION',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'sysdate',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_compute_when => ':REQUEST in (''CREATE_HDR'')',
  p_compute_when_type=>'PLSQL_EXPRESSION');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 15897873223495722 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_computation_sequence => 30,
  p_computation_item=> 'P2_LAST_UPDATE_DATE',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'PLSQL_EXPRESSION',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'sysdate',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_compute_when => ':REQUEST in ( ''APPLY_CHANGES_HDR'', ''CREATE_HDR'', ''CREATE_AREAS'', ''APPLY_CHANGES_AREAS'', ''DELETE_CHANGE_AREAS'', ''DELETE_OBJS'', ''SELECT_OBJS_TO_CHANGE'', ''UPDATE_CHANGE_DETAILS'' )',
  p_compute_when_type=>'PLSQL_EXPRESSION');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 16673983597391409 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_computation_sequence => 40,
  p_computation_item=> 'P2_REQUEST_STATUSES',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'QUERY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'select status_id from RMGR.RLSMGR_FORMS where FORM_ID = :P2_FORM_ID',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_compute_when => '',
  p_compute_when_type=>'%null%');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 15847668530857951 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_PRJMGR_ID not null',
  p_validation_sequence=> 20,
  p_validation => 'P2_PRJMGR_ID',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Prjmgr Id must have some value.',
  p_associated_item=> 15847385450857950 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 15848079681857952 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_FORM_TYPE_ID not null',
  p_validation_sequence=> 30,
  p_validation => 'P2_FORM_TYPE_ID',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Form Type Id must have some value.',
  p_associated_item=> 15847784530857952 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 15849084091857953 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_BUGZILLA_ID not null',
  p_validation_sequence=> 60,
  p_validation => 'P2_BUGZILLA_ID',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Bugzilla Id must have some value.',
  p_associated_item=> 15848775157857953 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 15850054715857954 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_TASK_NAME not null',
  p_validation_sequence=> 90,
  p_validation => 'P2_TASK_NAME',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Task Name must have some value.',
  p_associated_item=> 15849758699857953 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 15850469942857954 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_SHORT_DESC not null',
  p_validation_sequence=> 100,
  p_validation => 'P2_SHORT_DESC',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Short Desc must have some value.',
  p_associated_item=> 15850161126857954 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 15945285164511528 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_AREA_DESC not null',
  p_validation_sequence=> 110,
  p_validation => 'P2_AREA_DESC',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'You must specify Areas to be changed by this task.',
  p_validation_condition=> ':REQUEST in (''CANCEL_AREAS'', ''APPLY_CHANGES_AREAS, ''DELETE_AREAS, ''CREATE_AREAS'')',
  p_validation_condition_type=> 'PLSQL_EXPRESSION',
  p_associated_item=> 15934054721365456 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select RLSMGR_FORMS_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P2_FORM_ID := get_pk; '||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 15850859567857957 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>15845979977857942 + wwv_flow_api.g_id_offset,
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
':P2_LAST_UPDATE_DATE := sysdate;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 15913154635048558 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 29,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Update_form_last_update_date',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>15846066929857942 + wwv_flow_api.g_id_offset,
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'updates the item P2_LAST_UPDATE_DATE just before the running of the process "Process Row of Request Section 1" which updates the rlsmgr_forms table.');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:RLSMGR_FORMS:P2_FORM_ID:FORM_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 15851062375857958 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of Request Section 1',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table RLSMGR_FORMS.',
  p_process_when=>'--:REQUEST in (''DELETE_HDR'')'||chr(10)||
':REQUEST in (''CANCEL_HDR'', ''APPLY_CHANGES_HDR'', ''DELETE_HDR'', ''CREATE_HDR'')',
  p_process_when_type=>'NEVER',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_return_key_into_item1=>'P2_FORM_ID',
  p_return_key_into_item2=>'P2_BUGZILLA_ID',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'DECLARE'||chr(10)||
'    l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;'||chr(10)||
'BEGIN'||chr(10)||
'    l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(:P2_AREA_DESC);'||chr(10)||
'    FOR z IN 1..l_vc_arr2.count LOOP'||chr(10)||
'        htp.p(l_vc_arr2(z));'||chr(10)||
'        --dbms_output.put_line(l_vc_arr2(z));'||chr(10)||
''||chr(10)||
'        insert into RLSMGR_FORMREFERSTOAREAS(FORM_ID, AREA_ID) '||chr(10)||
'             values(:P2_FORM_ID, l_vc_arr2(z));'||chr(10)||
'    END LOOP;'||chr(10)||
'    commit;'||chr(10)||
''||chr(10)||
'   -- update the form las';

p:=p||'t update date'||chr(10)||
'   update RMGR.RLSMGR_FORMS set last_update_date = :P2_LAST_UPDATE_DATE '||chr(10)||
'       where FORM_ID = :P2_FORM_ID;'||chr(10)||
'   commit;'||chr(10)||
''||chr(10)||
'    :P2_INSERT_FORMAREAS_IND := 1;'||chr(10)||
'    :P2_DEBUG := :P2_AREA_DESC;'||chr(10)||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 15948169459573257 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 60,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'INSERT_INTO_RLSMGR_FORMREFERSTOAREAS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in inserting Areas to be changed',
  p_process_when_button_id=>15932767501365452 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Inserted Areas to be changed',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'BEGIN'||chr(10)||
'    delete from RMGR.RLSMGR_FORMREFERSTOAREAS'||chr(10)||
'        where FORM_ID = :P2_FORM_ID;'||chr(10)||
'    '||chr(10)||
'    -- delete also the corresponding objects'||chr(10)||
'    delete from RMGR.RLSMGR_FORMCHANGESOBJS'||chr(10)||
'        where FORM_ID = :P2_FORM_ID;'||chr(10)||
''||chr(10)||
'    commit;'||chr(10)||
''||chr(10)||
'   -- update the form last update date'||chr(10)||
'   update RMGR.RLSMGR_FORMS set last_update_date = :P2_LAST_UPDATE_DATE '||chr(10)||
'       where FORM_ID = :P2_FORM_ID;'||chr(10)||
'   commit;'||chr(10)||
''||chr(10)||
'    :P';

p:=p||'2_INSERT_FORMAREAS_IND := null;'||chr(10)||
''||chr(10)||
'    -- reset check box in section 2'||chr(10)||
'    :P2_AREA_DESC := null;'||chr(10)||
''||chr(10)||
'    :P2_DEBUG := ''deleted'';'||chr(10)||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 16041086940708499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 70,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'DELETE from RLSMGR_FORMREFERSTOAREAS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in deleting areas to be changed',
  p_process_when_button_id=>16058978048914164 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Areas deleted successfully',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P2_AREA_DESC, P2_INSERT_FORMAREAS_IND';

wwv_flow_api.create_page_process(
  p_id     => 16053878731838653 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 71,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'clear Cache for section 2 items',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>15932984810365452 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'clearing contents of check box',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'DECLARE'||chr(10)||
'    l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;'||chr(10)||
'BEGIN'||chr(10)||
'    -- delete all corrsponding entries'||chr(10)||
'    delete from RMGR.RLSMGR_FORMREFERSTOAREAS'||chr(10)||
'        where FORM_ID = :P2_FORM_ID;'||chr(10)||
''||chr(10)||
'    -- insert new entries        '||chr(10)||
'    l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(:P2_AREA_DESC);'||chr(10)||
'    FOR z IN 1..l_vc_arr2.count LOOP'||chr(10)||
'        htp.p(l_vc_arr2(z));'||chr(10)||
'        --dbms_output.put_line(l_vc_arr2(z));'||chr(10)||
''||chr(10)||
'       ';

p:=p||' insert into RLSMGR_FORMREFERSTOAREAS(FORM_ID, AREA_ID) '||chr(10)||
'             values(:P2_FORM_ID, l_vc_arr2(z));'||chr(10)||
'    END LOOP;'||chr(10)||
'    commit;'||chr(10)||
''||chr(10)||
'    -- update also the FORMCHANGESOBJS table'||chr(10)||
'   delete from RMGR.RLSMGR_FORMCHANGESOBJS'||chr(10)||
'   where FORM_ID = :P2_FORM_ID'||chr(10)||
'   AND OBJ_ID not in ('||chr(10)||
'       select b.OBJ_ID'||chr(10)||
'       from RLSMGR_FORMREFERSTOAREAS a join RMGR.RLSMGR_OBJECTS b on (a.AREA_ID = b.OBJ_AREA_ID) '||chr(10)||
'     ';

p:=p||'  where a.FORM_ID = :P2_FORM_ID'||chr(10)||
'   );'||chr(10)||
'   COMMIT;'||chr(10)||
''||chr(10)||
'   -- update the form last update date'||chr(10)||
'   update RMGR.RLSMGR_FORMS set last_update_date = :P2_LAST_UPDATE_DATE '||chr(10)||
'       where FORM_ID = :P2_FORM_ID;'||chr(10)||
'   commit;'||chr(10)||
''||chr(10)||
'    :P2_INSERT_FORMAREAS_IND := 1;'||chr(10)||
'    :P2_DEBUG := :P2_AREA_DESC;'||chr(10)||
'END;';

wwv_flow_api.create_page_process(
  p_id     => 16057075015894304 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 81,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'UPDATE RLSMGR_FORMREFERSTOAREA',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in updating areas',
  p_process_when_button_id=>15932869043365452 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Areas updated succesfully',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'FOR i in 1..APEX_APPLICATION.G_F01.count'||chr(10)||
'LOOP'||chr(10)||
'    delete from RMGR.RLSMGR_FORMCHANGESOBJS'||chr(10)||
'       where FORM_ID = :P2_FORM_ID '||chr(10)||
'             AND OBJ_ID = APEX_APPLICATION.G_F01(i);'||chr(10)||
''||chr(10)||
'    delete from RMGR.RLSMGR_OBJECTS'||chr(10)||
'       where FORM_ID = :P2_FORM_ID '||chr(10)||
'             AND OBJ_ID = APEX_APPLICATION.G_F01(i);'||chr(10)||
'END LOOP;'||chr(10)||
''||chr(10)||
'   -- update the form last update date'||chr(10)||
'   update RMGR.RLSMGR_FORMS set last_update_d';

p:=p||'ate = :P2_LAST_UPDATE_DATE '||chr(10)||
'       where FORM_ID = :P2_FORM_ID;'||chr(10)||
'commit;';

wwv_flow_api.create_page_process(
  p_id     => 16134979643241280 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 91,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'DELETE_OBJS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in Deleting Objects from request',
  p_process_when_button_id=>16132656525215727 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Objects Deleted from Request',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'i integer;'||chr(10)||
'begin'||chr(10)||
'    i := 1;'||chr(10)||
'    for item in ('||chr(10)||
'        select a.FORM_ID FORM_ID'||chr(10)||
'            , a.OBJ_ID OBJ_ID'||chr(10)||
'            , c.AREA_DESC AREA_DESC'||chr(10)||
'            , b.OBJ_DESC OBJ_DESC'||chr(10)||
'        from RMGR.RLSMGR_FORMCHANGESOBJS a join RMGR.RLSMGR_OBJECTS b on (a.OBJ_ID = b.OBJ_ID)join RMGR.RLSMGR_AREAS  c on (b.OBJ_AREA_ID = c.AREA_ID)'||chr(10)||
'        join RLSMGR_OBJ_TYPES d on (d.OBJ_TYPE_ID = b.OBJ_TYP';

p:=p||'E_ID) '||chr(10)||
'        left outer join RMGR.RLSMGR_FORMS e on (b.FORM_ID = e.FORM_ID)'||chr(10)||
'        where a.FORM_ID = :P2_FORM_ID'||chr(10)||
'            AND b.OBJ_DESC LIKE nvl(:P2_OBJ_DESC_SRCH,b.OBJ_DESC)'||chr(10)||
'           AND c.AREA_ID = decode( nvl(:P2_AREAS_SRCH,-999), -999, c.AREA_ID,:P2_AREAS_SRCH)'||chr(10)||
'           AND b.OBJ_TYPE_ID = decode(nvl(:P2_OBJ_TYPE_SRCH,-999), -999, b.OBJ_TYPE_ID, :P2_OBJ_TYPE_SRCH)'||chr(10)||
'        order by A';

p:=p||'REA_DESC, OBJ_DESC   '||chr(10)||
'    )'||chr(10)||
'    LOOP'||chr(10)||
'        if (i <= :MAXROWCOUNT) then'||chr(10)||
'           update RMGR.RLSMGR_FORMCHANGESOBJS a'||chr(10)||
'               set a.CHANGE_DETAILS = APEX_APPLICATION.G_F02(i)'||chr(10)||
'           where a.FORM_ID =  item.FORM_ID and a.OBJ_ID = item.OBJ_ID;'||chr(10)||
'        end if;'||chr(10)||
'        i := i+1;        '||chr(10)||
'    END LOOP;'||chr(10)||
'    '||chr(10)||
'     -- update the form last update date'||chr(10)||
'    update RMGR.RLSMGR_FORMS set last_upda';

p:=p||'te_date = :P2_LAST_UPDATE_DATE '||chr(10)||
'    where FORM_ID = :P2_FORM_ID;'||chr(10)||
'    '||chr(10)||
'    commit;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 16633863868710990 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 91,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Update_Object_Change_Details',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in updating Change details',
  p_process_when_button_id=>16628083657277110 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Change Details Updated.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  pk number;'||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select RLSMGR_FORMS_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  --:P2_FORM_ID := get_pk; '||chr(10)||
'   pk := get_pk;'||chr(10)||
'INSERT INTO RMGR.RLSMGR_FORMS ('||chr(10)||
'   FORM_ID, PRJMGR_ID, FORM_TYPE_ID, '||chr(10)||
'   POPULATION_DATE, LAST_UPDATE_DATE, BUGZILLA_ID, '||chr(10)||
'   RM_BUGZILL';

p:=p||'A_ID, TASK_NAME, SHORT_DESC, STATUS_ID) '||chr(10)||
'VALUES ('||chr(10)||
'    --:P2_FORM_ID'||chr(10)||
'     pk'||chr(10)||
'    ,:P2_PRJMGR_ID'||chr(10)||
'    ,:P2_FORM_TYPE_ID'||chr(10)||
'    ,:P2_POPULATION_DATE'||chr(10)||
'    ,:P2_LAST_UPDATE_DATE'||chr(10)||
'    ,:P2_BUGZILLA_ID'||chr(10)||
'    ,:P2_RM_BUGZILLA_ID'||chr(10)||
'    ,:P2_TASK_NAME'||chr(10)||
'    ,:P2_SHORT_DESC'||chr(10)||
'    ,decode(:P2_REQUEST_STATUSES, -999, null, :P2_REQUEST_STATUSES));'||chr(10)||
''||chr(10)||
'commit;'||chr(10)||
'-- after commit you know for sure that the new form exists, so update';

p:=p||' corresponding item,'||chr(10)||
':P2_FORM_ID := pk;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 16158357235067450 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 101,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'INSERT_FORM_ENTRY',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in inserting request form entry',
  p_process_when_button_id=>15845979977857942 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Request form entry inserted',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'UPDATE RMGR.RLSMGR_FORMS'||chr(10)||
'SET    PRJMGR_ID        = :P2_PRJMGR_ID,'||chr(10)||
'       FORM_TYPE_ID     = :P2_FORM_TYPE_ID,'||chr(10)||
'     --  POPULATION_DATE  = :POPULATION_DATE,'||chr(10)||
'       LAST_UPDATE_DATE = :P2_LAST_UPDATE_DATE,'||chr(10)||
'       BUGZILLA_ID      = :P2_BUGZILLA_ID,'||chr(10)||
'       RM_BUGZILLA_ID   = :P2_RM_BUGZILLA_ID,'||chr(10)||
'       TASK_NAME        = :P2_TASK_NAME,'||chr(10)||
'       SHORT_DESC       = :P2_SHORT_DESC,'||chr(10)||
'       STATUS_ID        ';

p:=p||'= decode(:P2_REQUEST_STATUSES, -999, null, :P2_REQUEST_STATUSES)'||chr(10)||
'WHERE  FORM_ID          = :P2_FORM_ID;'||chr(10)||
''||chr(10)||
'commit;';

wwv_flow_api.create_page_process(
  p_id     => 16161581224131171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 111,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'UPDATE_FORM_ENTRY',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in updating request form entry. ',
  p_process_when_button_id=>15846066929857942 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Request form entry updated. ',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'delete from RMGR.RLSMGR_FORMREFERSTOAREAS '||chr(10)||
'   where FORM_ID = :P2_FORM_ID;'||chr(10)||
''||chr(10)||
'delete from RMGR.RLSMGR_FORMCHANGESOBJS '||chr(10)||
'   where FORM_ID = :P2_FORM_ID;'||chr(10)||
''||chr(10)||
''||chr(10)||
'delete from RMGR.RLSMGR_FORMS '||chr(10)||
'   where FORM_ID = :P2_FORM_ID;'||chr(10)||
'commit;';

wwv_flow_api.create_page_process(
  p_id     => 16162379408149518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 121,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'DELETE_FORM_ENTRY',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Error in deleting request form entry. ',
  p_process_when_button_id=>15846168397857942 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Request form entry and all corresponding data have been deleted. ',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'2,4';

wwv_flow_api.create_page_process(
  p_id     => 16206679032622561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 122,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'CLEAR PAGE REQUEST_FORM AFTER DELETE',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>15846168397857942 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'2,4';

wwv_flow_api.create_page_process(
  p_id     => 16219777319773470 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 132,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'CLEAR_CACHE_AFTER_SELECT_CREATE_ANOTHER',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>16218383852746917 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'DECLARE'||chr(10)||
'    arr    APEX_APPLICATION_GLOBAL.VC_ARR2;'||chr(10)||
'    str     VARCHAR2(255);'||chr(10)||
'    i       integer;'||chr(10)||
'begin'||chr(10)||
''||chr(10)||
'Select FORM_ID into :P2_FORM_ID'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select PRJMGR_ID into :P2_PRJMGR_ID'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select FORM_TYPE_ID into :P2_FORM_TYPE_ID'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :';

p:=p||'P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select POPULATION_DATE into :P2_POPULATION_DATE'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select LAST_UPDATE_DATE into :P2_LAST_UPDATE_DATE'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
':P2_BUGZILLA_ID := :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select RM_BUGZILLA_ID into :P2_RM_BUGZILLA_ID'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SE';

p:=p||'LECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select TASK_NAME into :P2_TASK_NAME'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select SHORT_DESC into :P2_SHORT_DESC'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
'Select STATUS_ID into :P2_REQUEST_STATUSES'||chr(10)||
'from RMGR.RLSMGR_FORMS '||chr(10)||
'where BUGZILLA_ID = :P2_SELECT_BUGZILLA_ID;'||chr(10)||
''||chr(10)||
':P2_REQUEST_ID := :P2_FORM_ID;'||chr(10)||
''||chr(10)||
'i:=1;'||chr(10)||
'for a in (select ar';

p:=p||'ea_id from RMGR.RLSMGR_FORMREFERSTOAREAS where form_id = :P2_FORM_ID)'||chr(10)||
'LOOP'||chr(10)||
'    arr(i) := a.area_id;'||chr(10)||
'    i := i +1;'||chr(10)||
'END LOOP;'||chr(10)||
'str := APEX_UTIL.TABLE_TO_STRING(arr);'||chr(10)||
'--dbms_output.put_line(str);'||chr(10)||
':P2_AREA_DESC := str;'||chr(10)||
''||chr(10)||
':P2_INSERT_FORMAREAS_IND := 1;'||chr(10)||
''||chr(10)||
':P2_SELECT_BUGZILLA_ID := null;  -- reset to null'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 16247155153285238 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 142,
  p_process_point=> 'ON_SUBMIT_BEFORE_COMPUTATION',
  p_process_type=> 'PLSQL',
  p_process_name=> 'LOAD_EXISTING_FORM_DATA',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when=>'P2_SELECT_BUGZILLA_ID',
  p_process_when_type=>'ITEM_IS_NOT_NULL',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00004
prompt  ...PAGE 4: Update object to be changed
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 4,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Update object to be changed',
  p_alias  => 'UPDTFORM',
  p_step_title=> 'Update object to be changed',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss => '20120810165658',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>4,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>4,p_text=>ph);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select apex_item.checkbox(1,a.OBJ_ID) "Object Selection",'||chr(10)||
'b.AREA_ID, b.AREA_DESC, a.OBJ_ID, a.OBJ_DESC, a.OBJ_TYPE_ID, c.OBJ_TYPE_DESC'||chr(10)||
',case when a.FORM_ID IS NULL then ''N/A'''||chr(10)||
'      when a.FORM_ID = :P2_FORM_ID '||chr(10)||
'    then ''<p style="color: red; font-size:15px;"> NEW </p>''||'||chr(10)||
'         ''<a href="&SERVER.f?p=&APP_ID.:ADDNEWOBJS:&APP_SESSION.:EDITFROMUPDTFORM:NO::P5_OBJ_ID:''||a.OBJ_ID||''"> <img src=';

s:=s||'"#IMAGE_PREFIX#edit-white.gif" alt="Edit"> </a>'''||chr(10)||
'    else ''<a style="color: blue" href="http://10.101.14.28:8666/bugzilla/show_bug.cgi?id=''||to_char(d.BUGZILLA_ID)||''">''||to_char(d.BUGZILLA_ID)||''</a>'' '||chr(10)||
' end as BUGZILLA_ID   '||chr(10)||
'from RMGR.RLSMGR_OBJECTS a join RMGR.RLSMGR_AREAS b on (a.OBJ_AREA_ID = b.AREA_ID) join RLSMGR_OBJ_TYPES c on (c.OBJ_TYPE_ID = a.OBJ_TYPE_ID)'||chr(10)||
'left outer join RMGR.RLSMGR_';

s:=s||'FORMS d on (a.FORM_ID = d.FORM_ID)'||chr(10)||
'where'||chr(10)||
'b.AREA_ID in ('||chr(10)||
'    -- get only the areas that have been declared "as changed areas"'||chr(10)||
'    select c.AREA_ID from RLSMGR_FORMREFERSTOAREAS c where c.FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'and -- dont get the objects that are already chosen'||chr(10)||
'a.OBJ_ID NOT IN ('||chr(10)||
'   select OBJ_ID'||chr(10)||
'   from RLSMGR_FORMCHANGESOBJS'||chr(10)||
'   where FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'AND a.OBJ_DESC LIKE nvl(:P4';

s:=s||'_OBJ_DESC_SRCH,a.OBJ_DESC)'||chr(10)||
'AND b.AREA_ID = decode( nvl(:P4_AREAS_SRCH,-999), -999, b.AREA_ID,:P4_AREAS_SRCH)'||chr(10)||
'AND a.OBJ_TYPE_ID = decode(nvl(:P4_OBJ_TYPE_SRCH,-999), -999, a.OBJ_TYPE_ID, :P4_OBJ_TYPE_SRCH)'||chr(10)||
''||chr(10)||
'/*AND b.AREA_ID = case when :P4_AREAS_SRCH = -999 '||chr(10)||
'                 then b.AREA_ID '||chr(10)||
'                 else :P4_AREAS_SRCH end*/'||chr(10)||
''||chr(10)||
'--nvl(:P4_AREAS_SRCH, b.AREA_ID)';

wwv_flow_api.create_report_region (
  p_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_name=> 'Select Objects to Change',
  p_region_name=>'',
  p_template=> 15693362674613994+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_display_when_condition=> ':P2_FORM_ID IS NOT NULL',
  p_display_condition_type=> 'PLSQL_EXPRESSION',
  p_customized=> '1',
  p_translate_title=> 'Y',
  p_query_row_template=> 15695372116614000+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '50',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> 'N/A',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'Y',
  p_csv_output_link_text=> 'Export to CSV',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_exp_filename=> 'objects_to_change.csv',
  p_plug_query_exp_separator=> ';',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
 
-- maintain plug_column_width attribute for 2.2 and greater
begin
execute immediate 'begin wwv_flow_api.set_region_column_width (
  p_id=>16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_page_id=>4,
  p_plug_column_width=>''valign=top''); end;';
exception when others then null;
end;
/
 
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16113563450867609 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'Object Selection',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Object Selection',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16100757423648558 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'AREA_ID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Area Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16100863515648558 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'AREA_DESC',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Area Desc',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>1,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16100965532648558 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'OBJ_ID',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Obj Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16101074067648558 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'OBJ_DESC',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Obj Desc',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>2,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16360882507253699 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'OBJ_TYPE_ID',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Obj Type Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16360956548253699 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'OBJ_TYPE_DESC',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Obj Type Desc',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>3,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 16457054267134701 + wwv_flow_api.g_id_offset,
  p_region_id=> 16100458359648533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'BUGZILLA_ID',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Created from Bugzilla Id',
  p_column_alignment=>'CENTER',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 16379380897254555 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Object Search',
  p_region_name=>'',
  p_plug_template=> 15693362674613994+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_BOX_BODY',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 16382384276274534 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 80,
  p_button_plug_id => 16379380897254555+wwv_flow_api.g_id_offset,
  p_button_name    => 'GO',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Go',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16490064168752608 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 90,
  p_button_plug_id => 16100458359648533+wwv_flow_api.g_id_offset,
  p_button_name    => 'ADD_NEW_OBJECT',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Add New Object',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16116154755912441 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 50,
  p_button_plug_id => 16100458359648533+wwv_flow_api.g_id_offset,
  p_button_name    => 'SELECT_OBJS_TO_CHANGE',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Select Objects To Change',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16120660259961319 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 60,
  p_button_plug_id => 16100458359648533+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16125355242997743 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 70,
  p_button_plug_id => 16100458359648533+wwv_flow_api.g_id_offset,
  p_button_name    => 'CLEAR_SELECTION',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Clear Selection',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>16116478120912444 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16116154755912441+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16120970966961322 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16120660259961319+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16125658001997747 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:UPDTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16125355242997743+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16382663912274537 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:UPDTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16382384276274534+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16490382872752625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:ADDNEWOBJS:&SESSION.:ADD_NEW_OBJECT:&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>16490064168752608+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16081755060334034 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_FORM_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Form Id',
  p_source=>'FORM_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16081971750334036 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_OBJ_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Obj Id',
  p_source=>'OBJ_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16381260034267492 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_OBJ_DESC_SRCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 16379380897254555+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Objects By Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16398885031204886 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_AREAS_SRCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 22,
  p_item_plug_id => 16379380897254555+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Objects By Area',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_lov => 'select AREA_DESC display_value, AREA_ID return_value '||chr(10)||
'from RLSMGR_AREAS'||chr(10)||
'where AREA_ID in ('||chr(10)||
'select AREA_ID '||chr(10)||
'from RLSMGR_FORMREFERSTOAREAS '||chr(10)||
'where FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select an Area --',
  p_lov_null_value=> '-999',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16420479031045244 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_OBJ_TYPE_SRCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 32,
  p_item_plug_id => 16379380897254555+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Object by Type',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> '%null%',
  p_lov => 'select a.OBJ_TYPE_DESC display_value, OBJ_TYPE_ID return_value '||chr(10)||
'from RLSMGR_OBJ_TYPES a '||chr(10)||
'where '||chr(10)||
'a.OBJ_TYPE_ID in ('||chr(10)||
'    select b.OBJ_TYPE_ID'||chr(10)||
'    from RLSMGR_OBJECTS b'||chr(10)||
'    where b.OBJ_AREA_ID in ('||chr(10)||
'        select c.AREA_ID from RLSMGR_FORMREFERSTOAREAS c where c.FORM_ID = :P2_FORM_ID'||chr(10)||
'       ) '||chr(10)||
'    )'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select an Object Type',
  p_lov_null_value=> '-999',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 16103961532753558 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_computation_sequence => 10,
  p_computation_item=> 'P4_FORM_ID',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'PLSQL_EXPRESSION',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> ':P2_FORM_ID',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_compute_when => '',
  p_compute_when_type=>'');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    begin'||chr(10)||
'return :P2_FORM_ID;'||chr(10)||
'end;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P4_FORM_ID := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 16083258582334041 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>16080565587334030 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  function get_pk2 return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    begin'||chr(10)||
'return :P2_OBJ_DESC;'||chr(10)||
'end;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P4_OBJ_ID := get_pk2; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 16083474648334041 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK2',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get secondary key item value.',
  p_process_when_button_id=>16080565587334030 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'4';

wwv_flow_api.create_page_process(
  p_id     => 16083872234334041 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>16080766617334030 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'FOR i in 1..APEX_APPLICATION.G_F01.count'||chr(10)||
'LOOP'||chr(10)||
'   insert into RMGR.RLSMGR_FORMCHANGESOBJS(FORM_ID, OBJ_ID)'||chr(10)||
'      values (:P2_FORM_ID, APEX_APPLICATION.G_F01(i));  '||chr(10)||
'END LOOP;'||chr(10)||
''||chr(10)||
'   -- update the form last update date'||chr(10)||
'   update RMGR.RLSMGR_FORMS set last_update_date = :P2_LAST_UPDATE_DATE '||chr(10)||
'       where FORM_ID = :P2_FORM_ID;'||chr(10)||
'   commit;'||chr(10)||
''||chr(10)||
'commit;';

wwv_flow_api.create_page_process(
  p_id     => 16117380298938702 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 50,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'INSERT_OBJECTS_TO_CHANGE',
  p_process_sql_clob => p, 
  p_process_error_message=> 'error in inserting objects to change',
  p_process_when_button_id=>16116154755912441 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'succesfully inserted object to change',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00005
prompt  ...PAGE 5: Form on RLSMGR_OBJECTS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 5,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on RLSMGR_OBJECTS',
  p_alias  => 'ADDNEWOBJS',
  p_step_title=> 'Add new Objects in the Database',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss => '20100202180949',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>ph);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 16470275522512654 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Add new Objects in the Database',
  p_region_name=>'',
  p_plug_template=> 15691584177613992+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 16470584457512659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P5_OBJ_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16470874973512660 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 10,
  p_button_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16470464731512659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 40,
  p_button_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P5_OBJ_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 16470670200512659 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 20,
  p_button_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(15690983645613991+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P5_OBJ_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>16471457927512662 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:UPDTFORM:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 2,
  p_branch_condition_type=> 'PLSQL_EXPRESSION',
  p_branch_condition=> ':P5_WHERE_TO_BRANCH_NEXT = ''UPDTFORM'''||chr(10)||
'and :REQUEST IN (''CREATE'', ''SAVE'', ''DELETE'', ''CANCEL'')',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>16560176837539319 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:RQSTFORM:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 11,
  p_branch_condition_type=> 'PLSQL_EXPRESSION',
  p_branch_condition=> ':P5_WHERE_TO_BRANCH_NEXT = ''RQSTFORM'''||chr(10)||
'and :REQUEST IN (''CREATE'', ''SAVE'', ''DELETE'', ''CANCEL'')',
  p_branch_comment=> 'Created 26-JAN-2010 16:44 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>16733678537923314 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:ADDNEWOBJS:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 21,
  p_branch_condition_type=> 'PLSQL_EXPRESSION',
  p_branch_condition=> ':REQUEST NOT IN (''CREATE'', ''SAVE'', ''DELETE'', ''CANCEL'')',
  p_branch_comment=> 'Created 01-FEB-2010 15:28 by ADMIN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16471679125512664 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_OBJ_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Obj Id',
  p_source=>'OBJ_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Το πεδίο OBJECT DESCRIPTION πρέπει να έχει τη μορφή:'||chr(10)||
''||chr(10)||
'CONTAINER_NAME.OBJECT_NAME (αν το object περιέχεται σε κάποια συγκεκριμένη δομή)'||chr(10)||
''||chr(10)||
'ή'||chr(10)||
''||chr(10)||
'OBJECT_NAME (αν το object δεν περιέχεται σε κάποια συγκεκριμένη δομή)'||chr(10)||
''||chr(10)||
' '||chr(10)||
''||chr(10)||
'Ειδικότερα το CONTAINER_NAME συμπληρώνεται στις ακόλουθες περιοχές ως εξής:'||chr(10)||
''||chr(10)||
'- APEX: Το όνομα του WORKSPACE στο οποίο ανήκει το object (application)'||chr(10)||
''||chr(10)||
'- BO STD REPORTS: o κατάλογος στον οπ';

h:=h||'οίο είναι αποθηκευμένο το object (report)'||chr(10)||
''||chr(10)||
'- DATABASE: τo schema της βάσης που ανήκει το object'||chr(10)||
''||chr(10)||
'- OWB: τo module του OWB που ανήκει το object'||chr(10)||
''||chr(10)||
'Στις υπόλοιπες περιοχές προς το παρόν δεν συμπληρώνεται.'||chr(10)||
''||chr(10)||
' '||chr(10)||
''||chr(10)||
'Το OBJECT_NAME είναι το όνομα του object.'||chr(10)||
''||chr(10)||
' '||chr(10)||
''||chr(10)||
'';

wwv_flow_api.create_page_item(
  p_id=>16471866311512668 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_OBJ_DESC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Object Description (CLICK ME to read naming rules)',
  p_source=>'OBJ_DESC',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16472082904512669 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_OBJ_TYPE_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Obj Type Id',
  p_source=>'OBJ_TYPE_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_lov => 'select distinct  b.OBJ_TYPE_DESC display_value, b.OBJ_TYPE_ID return_value '||chr(10)||
'from RMGR.RLSMGR_AREAS_TO_OBJTYPES a join RMGR.RLSMGR_OBJ_TYPES b on (a.OBJ_TYPE_ID = b.OBJ_TYPE_ID)'||chr(10)||
'where '||chr(10)||
'a.AREA_ID in ('||chr(10)||
'select c.AREA_ID from RLSMGR_FORMREFERSTOAREAS c where c.FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'and a.AREA_ID = decode(:P5_OBJ_AREA_ID, -999, a.AREA_ID, :P5_OBJ_AREA_ID)'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select the Type of the Object --',
  p_lov_null_value=> '-999',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15696058694614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16472478600512670 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_OBJ_AREA_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Obj Area Id',
  p_source=>'OBJ_AREA_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX_WITH_SUBMIT',
  p_lov => 'select AREA_DESC display_value, AREA_ID return_value '||chr(10)||
'from RLSMGR_AREAS'||chr(10)||
'where AREA_ID in ('||chr(10)||
'select AREA_ID '||chr(10)||
'from RLSMGR_FORMREFERSTOAREAS '||chr(10)||
'where FORM_ID = :P2_FORM_ID'||chr(10)||
')'||chr(10)||
'order by 1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-- Select the Area of the Object ---',
  p_lov_null_value=> '-999',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15696058694614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16472874067512671 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_FORM_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Created from this Bugzilla Id',
  p_source=>'FORM_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'DISPLAY_AND_SAVE_LOV',
  p_lov => 'select ''<a href="http://10.101.1.27:8666/bugzilla/show_bug.cgi?id=''||b.BUGZILLA_ID||''">''||b.BUGZILLA_ID||''</a>'' display,'||chr(10)||
'b.FORM_ID return '||chr(10)||
'from RMGR.RLSMGR_OBJECTS a join RMGR.RLSMGR_FORMS b on (a.FORM_ID = b.FORM_ID) where b.FORM_ID = :P2_FORM_ID',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'CENTER',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>16554684831418717 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_WHERE_TO_BRANCH_NEXT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 16470275522512654+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => 'It records the page alias of the pag to branch next with any buttom press');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 16477569513564880 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_computation_sequence => 10,
  p_computation_item=> 'P5_FORM_ID',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '&P2_FORM_ID.',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_compute_when => '',
  p_compute_when_type=>'');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 16555472280433937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_computation_sequence => 10,
  p_computation_item=> 'P5_WHERE_TO_BRANCH_NEXT',
  p_computation_point=> 'BEFORE_HEADER',
  p_computation_type=> 'FUNCTION_BODY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'begin'||chr(10)||
'if :REQUEST = ''EDITFROMRQSTFORM'' then'||chr(10)||
'   return ''RQSTFORM'';'||chr(10)||
'else'||chr(10)||
'   return ''UPDTFORM'';'||chr(10)||
'end if;'||chr(10)||
'end;'||chr(10)||
'',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_computation_comment=> 'This sets the page to branch next according to the page from which we arrived in the current page',
  p_compute_when => '',
  p_compute_when_type=>'');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 16472366994512669 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_validation_name => 'P5_OBJ_TYPE_ID not null',
  p_validation_sequence=> 30,
  p_validation => 'P5_OBJ_TYPE_ID',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Obj Type Id must have some value.',
  p_validation_condition=> ':REQUEST IN (''CREATE'', ''SAVE'')',
  p_validation_condition_type=> 'PLSQL_EXPRESSION',
  p_associated_item=> 16472082904512669 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 16472779105512671 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_validation_name => 'P5_OBJ_AREA_ID not null',
  p_validation_sequence=> 40,
  p_validation => 'P5_OBJ_AREA_ID',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Obj Area Id must have some value.',
  p_validation_condition=> ':REQUEST IN (''CREATE'', ''SAVE'')',
  p_validation_condition_type=> 'PLSQL_EXPRESSION',
  p_associated_item=> 16472478600512670 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 16500666593103424 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_validation_name => 'VALID_COMBINATIOB_OF_AREA_and_OBJ_TYPE',
  p_validation_sequence=> 50,
  p_validation => 'select 1'||chr(10)||
'from RMGR.RLSMGR_AREAS_TO_OBJTYPES'||chr(10)||
'where AREA_ID = :P5_OBJ_AREA_ID and OBJ_TYPE_ID = :P5_OBJ_TYPE_ID',
  p_validation_type => 'EXISTS',
  p_error_message => 'Sorry! You have entered an invalid combination between AREA and Object Type.',
  p_validation_condition=> ':REQUEST IN (''CREATE'', ''SAVE'')',
  p_validation_condition_type=> 'PLSQL_EXPRESSION',
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P5_OBJ_ID,P5_OBJ_DESC,P5_OBJ_AREA_ID,P5_OBJ_TYPE_ID';

wwv_flow_api.create_page_process(
  p_id     => 16506163485178146 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 9,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'Clear all items except P5_FORM_ID',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when=>':REQUEST in (''ADD_NEW_OBJECT'')',
  p_process_when_type=>'PLSQL_EXPRESSION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:RLSMGR_OBJECTS:P5_OBJ_ID:OBJ_ID';

wwv_flow_api.create_page_process(
  p_id     => 16473170674512672 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from RLSMGR_OBJECTS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select RLSMGR_OBJECTS_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P5_OBJ_ID := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 16473375815512672 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>16470464731512659 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:RLSMGR_OBJECTS:P5_OBJ_ID:OBJ_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 16473558267512672 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of RLSMGR_OBJECTS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table RLSMGR_OBJECTS.',
  p_process_when=>':REQUEST IN (''CREATE'', ''SAVE'', ''DELETE'')',
  p_process_when_type=>'PLSQL_EXPRESSION',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'5';

wwv_flow_api.create_page_process(
  p_id     => 16473760411512672 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>16470670200512659 + wwv_flow_api.g_id_offset,
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P5_OBJ_ID,P5_OBJ_DESC,P5_OBJ_AREA_ID,P5_OBJ_TYPE_ID';

wwv_flow_api.create_page_process(
  p_id     => 16601054982930457 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 50,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'CLEAR_ITEMS_ONDELETE_EXCEPT_WHERE_TO_BRANCH_NEXT',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>16470670200512659 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'On delete clear all items except where to branch next (hidden)(P5_WHERE_TO_BRANCH_NEXT) as well as P5_FORM_ID');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 101,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Login',
  p_alias  => 'LOGIN',
  p_step_title=> 'Login',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => 15690354300613988+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss => '20100128184104',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 15697785252614027 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15697861848614031 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 15697785252614027+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'User Name',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 2,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15697982250614037 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 15697785252614027+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'PASSWORD_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 15695963452614001+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>15698062343614037 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 15697785252614027+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default => 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(15690983645613991 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 15698275113614040 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||chr(10)||
'    P_UNAME       => :P101_USERNAME,'||chr(10)||
'    P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'    P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'    P_FLOW_PAGE   => :APP_ID||'':RQSTFORM'''||chr(10)||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 15698182026614038 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 15698468620614040 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 15698372165614040 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 15698586810614040 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
null;
 
end;
/

prompt  ...page templates for application: 102
--
--application/shared_components/user_interface/templates/page/two_level_tabs_with_side_bar
prompt  ......Page template 15689954526613985
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t9pagebody" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr><td class="bottom" colspan="3">&nbsp;</td></tr></table>'||chr(10)||
'<br />'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" valign="top">#REGION_POSITION_01##REGION_POSITION_06#</td>'||chr(10)||
'<td align="right" valign="top"><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td nowrap="nowrap" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td nowrap="nowrap" valign="top"><';

c3:=c3||'a>&USER.</a></td>'||chr(10)||
'<td nowrap="nowrap" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>'||chr(10)||
'<td align="left" style="padding-left:15px;">#LOGO#&nbsp;</td>'||chr(10)||
'<td valign="bottom" align="right" style="text-align:right;p';

c3:=c3||'adding-right:5px;"><table border="0" cellpadding="0" cellspacing="0" align="right" summary=""><tr>#PARENT_TAB_CELLS# </tr></table></td></tr></table>'||chr(10)||
'<table class="t9standardtabs" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'  <td align="left" class="nav">&nbsp;</td>'||chr(10)||
'  <td align="left" class="reg">&nbsp;</td>'||chr(10)||
'  <td align="left" class="reg" colspan="2"><table class="t9tab';

c3:=c3||'items" summary=""><tr><td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>#TAB_CELLS#</tr></table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td align="left" valign="top">'||chr(10)||
'    <table class="t9pagesidebar" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="sidebarbody">#REGION_POSITION_02#</td>'||chr(10)||
'      </tr>'||chr(10)||
'      <tr>'||chr(10)||
'        <td class="sidebarbottom">&nbs';

c3:=c3||'p;</td>'||chr(10)||
'      </tr>'||chr(10)||
'    </table>'||chr(10)||
'  </td>'||chr(10)||
'  <td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" alt=""></td>'||chr(10)||
'  <td  valign="top" width="100%">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'  <td  valign="top" align="right">#REGION_POSITION_03#</td>    '||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td class="bottom" colspan="4">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="cust';

c3:=c3||'omize" align="right" colspan="4">#CUSTOMIZE#&nbsp;</td></tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 15689954526613985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td class="C"><span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td class="N"><a href="#TAB_LINK# ">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr><td><div class="t9tabCurrent"><span class="t9tabCurrent">#TAB_LABEL#</span></div>#TAB_INLINE_EDIT#</td></tr>'||chr(10)||
'<tr><td><span><img width="110" height="8" src="#IMAGE_PREFIX#themes/theme_9/red.gif" alt="" /></span></td></tr></table></td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="t9tabNonCurrent"><a href="#TAB_LINK#" class="t9tabCurrent">#TAB_LABEL#</a></div>#TAB_INLINE_EDIT#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><a href="#TAB_LINK#"><img height="8" width="110"src="#IMAGE_PREFIX#themes/theme_9/black.gif" alt="" /></a></td>'||chr(10)||
'</tr></table></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="1" cellspacing="2" border="0"  class="t9navbar" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt=""/></td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '<td valign="top"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>'||chr(10)||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 9,
  p_theme_class_id => 18,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 15690080816613987
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#LOGO##REGION_POSITION_06#</td>'||chr(10)||
'<td width="100%" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top">'||chr(10)||
'<div style="border:1px solid black;">#SUCCESS_MESSAG';

c3:=c3||'E##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#REGION_POSITION_05#';

wwv_flow_api.create_template(
  p_id=> 15690080816613987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr><td>&nbsp;&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 9,
  p_theme_class_id => 5,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_side_bar
prompt  ......Page template 15690186593613987
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br />'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" valign="top">#REGION_POSITION_01##REGION_POSITION_06#</td>'||chr(10)||
'<td align="right" valign="top"><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td nowrap="nowrap" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td nowrap="nowrap" valign="top"><';

c3:=c3||'a>&USER.</a></td>'||chr(10)||
'<td nowrap="nowrap" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>'||chr(10)||
'<td align="left" style="padding-left:15px;" class="bottom">#LOGO#&nbsp;</td>'||chr(10)||
'<td align="right" style="text-align:right;pa';

c3:=c3||'dding-right:5px;" class="bottom">&nbsp;</td></tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'  <td align="left" valign="top">'||chr(10)||
'    <table class="t9pagesidebar" width="100%" cellpadding="0" cellspacing="0" border="0"  summary="">'||chr(10)||
'    <tr>'||chr(10)||
'      <td class="sidebarbody">#REGION_POSITION_02#</td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'      <td class="sideba';

c3:=c3||'rbottom">&nbsp;</td>'||chr(10)||
'    </tr>'||chr(10)||
'    </table>'||chr(10)||
'  </td>'||chr(10)||
'  <td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" alt=""></td>'||chr(10)||
'  <td  valign="top" width="100%">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'  <td  valign="top" align="right">#REGION_POSITION_03#</td>    '||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td class="bottom" colspan="4">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td ';

c3:=c3||'class="customize" align="right" colspan="4">#CUSTOMIZE#&nbsp;</td></tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 15690186593613987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Side Bar',
  p_body_title=> '<!--#BODY_TITLE#-->',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="1" cellspacing="2" border="0"  class="t9navbar" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt=""/></td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '<td valign="top"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>'||chr(10)||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 9,
  p_theme_class_id => 17,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_with_side_bar
prompt  ......Page template 15690268478613987
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br />'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" valign="top">#REGION_POSITION_01##REGION_POSITION_06#</td>'||chr(10)||
'<td align="right" valign="top"><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td nowrap="nowrap" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td nowrap="nowrap" valign="top"><';

c3:=c3||'a>&USER.</a></td>'||chr(10)||
'<td nowrap="nowrap" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>'||chr(10)||
'<td align="left" style="padding-left:15px;" class="bottom">#LOGO#&nbsp;</td>'||chr(10)||
'<td align="right" valign="bottom" style="tex';

c3:=c3||'t-align:right;padding-right:5px;" class="bottom"><table border="0" cellpadding="0" cellspacing="0" align="right" summary=""><tr>#TAB_CELLS#</tr></table></td></tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="left" valign="top">'||chr(10)||
'      <table class="t9pagesidebar" width="100%" cellpadding="0" cellspacing="0" border="0"  ';

c3:=c3||'summary="">'||chr(10)||
'        <tr><td class="sidebarbody">#REGION_POSITION_02#</td></tr>'||chr(10)||
'        <tr><td class="sidebarbottom">&nbsp;</td></tr>'||chr(10)||
'      </table></td>'||chr(10)||
'    <td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" alt=""></td>'||chr(10)||
'    <td align="left" valign="top" width="100%">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'    <td  valign=';

c3:=c3||'"top" align="right">#REGION_POSITION_03#</td>    '||chr(10)||
'  </tr>'||chr(10)||
'  <tr>'||chr(10)||
'    <td class="bottom" colspan="4">&nbsp;</td>'||chr(10)||
'  </tr>'||chr(10)||
'  <tr><td class="customize" align="right" colspan="4">#CUSTOMIZE#&nbsp;</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 15690268478613987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Side Bar',
  p_body_title=> '<!--#BODY_TITLE#-->',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr><td><div class="t9tabCurrent"><span class="t9tabCurrent">#TAB_LABEL#</span></div>#TAB_INLINE_EDIT#</td></tr>'||chr(10)||
'<tr><td><span><img width="110" height="8" src="#IMAGE_PREFIX#themes/theme_9/red.gif" alt="" /></span></td></tr></table></td>'||chr(10)||
''||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr><td><div class="t9tabNonCurrent"><a href="#TAB_LINK#" class="t9tabNonCurrent">#TAB_LABEL#</a></div>#TAB_INLINE_EDIT#</td></tr>'||chr(10)||
'<tr><td><a href="#TAB_LINK#"><img height="8" width="110"src="#IMAGE_PREFIX#themes/theme_9/black.gif" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="1" cellspacing="2" border="0" class="t9navbar" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt=""/></td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '<td valign="top"><a href="#LINK#">#TEXT#</a></td><td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt=""/></td>'||chr(10)||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 9,
  p_theme_class_id => 16,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 15690354300613988
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'  </body>'||chr(10)||
'</html>'||chr(10)||
'';

c3:=c3||'<body #ONLOAD#>'||chr(10)||
'#FORM_OPEN# '||chr(10)||
'<table border="0" summary="" width="100%" style="margin-top:100px;margin-bottom:200px;">'||chr(10)||
'<tr>'||chr(10)||
'<td align="center"><table border="0" summary="">'||chr(10)||
'<tr><td>#NOTIFICATION_MESSAGE#</td></tr><tr><td>#BOX_BODY#</td></tr></table>'||chr(10)||
'</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 15690354300613988 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 9,
  p_theme_class_id => 6,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '18');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 15690474902613988
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br />'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" valign="top">#REGION_POSITION_01##REGION_POSITION_06#</td>'||chr(10)||
'<td align="right" valign="top"><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td nowrap="nowrap" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td nowrap="nowrap" valign="top"><';

c3:=c3||'a>&USER.</a></td>'||chr(10)||
'<td nowrap="nowrap" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>'||chr(10)||
'<td align="left" style="padding-left:15px;" class="bottom">#LOGO#&nbsp;</td>'||chr(10)||
'<td align="right" style="text-align:right;pa';

c3:=c3||'dding-right:5px;" class="bottom">&nbsp;</td></tr>'||chr(10)||
'</table>'||chr(10)||
''||chr(10)||
'<table class="t9pagebody" width="100%" cellpadding="4" cellspacing="2" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'  <td align="left" valign="top">&nbsp;</td><td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" alt=""></td>'||chr(10)||
'  <td valign="top" width="100%">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSIT';

c3:=c3||'ION_04#</td>'||chr(10)||
'  <td valign="top" align="right">#REGION_POSITION_03#</td>    '||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td class="bottom" colspan="4">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="customize" align="right" colspan="4">#CUSTOMIZE#&nbsp;</td></tr>'||chr(10)||
'</table>'||chr(10)||
''||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 15690474902613988 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="1" cellspacing="2" border="0"  class="t9navbar" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '<td valign="top"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 9,
  p_theme_class_id => 3,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 15690571895613988
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br />'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" valign="top">#REGION_POSITION_01##REGION_POSITION_06#</td>'||chr(10)||
'<td align="right" valign="top"><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td nowrap="nowrap" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td nowrap="nowrap" valign="top"><';

c3:=c3||'a>&USER.</a></td>'||chr(10)||
'<td nowrap="nowrap" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" style="padding-left:15px;" class="bottom">#LOGO#&nbsp;</td>'||chr(10)||
'<td align="right" valign="bottom" style="te';

c3:=c3||'xt-align:right;padding-right:5px;" class="bottom"><table border="0" cellpadding="0" cellspacing="0" align="right" summary=""><tr>#TAB_CELLS#</tr></table></td></tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" width="100%" cellpadding="4" cellspacing="2" border="0" summary="">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="left" valign="top">&nbsp;</td>'||chr(10)||
'    <td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme';

c3:=c3||'_9/spacer.gif" alt=""></td>'||chr(10)||
'    <td valign="top" width="100%">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'    <td  valign="top" align="right">#REGION_POSITION_03#</td></tr>'||chr(10)||
'  <tr><td class="bottom" colspan="4">&nbsp;</td></tr>'||chr(10)||
'  <tr><td class="customize" align="right" colspan="4">#CUSTOMIZE#&nbsp;</td></tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 15690571895613988 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '<!--#BODY_TITLE#-->',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr><td><div class="t9tabCurrent"><span class="t9tabCurrent">#TAB_LABEL#</span></div>#TAB_INLINE_EDIT#</td></tr>'||chr(10)||
'<tr><td><span><img width="110" height="8" src="#IMAGE_PREFIX#themes/theme_9/red.gif" alt="" /></span></td></tr></table></td>'||chr(10)||
''||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr><td><div class="t9tabNonCurrent"><a href="#TAB_LINK#" class="t9tabNonCurrent">#TAB_LABEL#</a></div>#TAB_INLINE_EDIT#</td></tr>'||chr(10)||
'<tr><td><a href="#TAB_LINK#"><img height="8" width="110"src="#IMAGE_PREFIX#themes/theme_9/black.gif" alt="" /></a></td></tr></table></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="Notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="1" cellspacing="2" border="0"  class="t9navbar" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '<td valign="top"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '9');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 15690675432613989
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t9pagebody" width="100%" cellpadding="4" cellspacing="2" border="0" summary="">'||chr(10)||
'<tr><td align="left" valign="top">&nbsp;</td><td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" alt=""></td><td  valign="top" width="100%">#SUCCESS_MESSAGE# #NOTIFICATION_MESSAGE# #BOX_BODY#</td></tr></table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 15690675432613989 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr><td>&nbsp;&nbsp;</td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 9,
  p_theme_class_id => 4,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 15690772208613989
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V3.css" type="text/css" />'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t9pagebody" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr><td class="bottom" colspan="3">&nbsp;</td></tr></table>'||chr(10)||
'<br />'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" valign="top">#REGION_POSITION_01##REGION_POSITION_06#</td>'||chr(10)||
'<td align="right" valign="top"><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td nowrap="nowrap" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td nowrap="nowrap" valign="top"><';

c3:=c3||'a>&USER.</a></td>'||chr(10)||
'<td nowrap="nowrap" valign="top">#NAVIGATION_BAR##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table class="t9pagebody" background="#IMAGE_PREFIX#themes/theme_9/top_bg.png" width="100%" cellpadding="0" cellspacing="0" border="0" summary=""><tr>'||chr(10)||
'<td align="left" style="padding-left:15px;">#LOGO#&nbsp;</td>'||chr(10)||
'<td valign="bottom" align="right" style="text-align:right;p';

c3:=c3||'adding-right:5px;" ><table border="0" cellpadding="0" cellspacing="0" align="right" summary=""><tr>#PARENT_TAB_CELLS# </tr></table></td></tr></table>'||chr(10)||
'<table class="t9standardtabs" width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'  <td align="left" class="reg">&nbsp;</td>'||chr(10)||
'  <td align="left" class="reg">&nbsp;</td>'||chr(10)||
'  <td align="left" class="reg" colspan="2"><table class="t9ta';

c3:=c3||'bitems" summary=""><tr><td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt=""></td>#TAB_CELLS#</tr></table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td align="left" valign="top">&nbsp;</td>'||chr(10)||
'  <td valign="top"><img width="1" height="500" src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" alt=""></td>'||chr(10)||
'  <td  valign="top" width="100%">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'  <td  ';

c3:=c3||'valign="top" align="right">#REGION_POSITION_03#</td>    '||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td class="bottom" colspan="4">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="customize" align="right" colspan="4">#CUSTOMIZE#&nbsp;</td></tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 15690772208613989 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '<!--#BODY_TITLE#-->',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t9success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td class="C"><span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td class="N"><a href="#TAB_LINK# ">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr><td><div class="t9tabCurrent"><span class="t9tabCurrent">#TAB_LABEL#</span></div>#TAB_INLINE_EDIT#</td></tr>'||chr(10)||
'<tr><td><span><img width="110" height="8" src="#IMAGE_PREFIX#themes/theme_9/red.gif" alt="" /></span></td></tr></table></td>'||chr(10)||
''||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td>&nbsp;</td>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="t9tabNonCurrent"><a href="#TAB_LINK#" class="t9tabCurrent">#TAB_LABEL#</a></div>#TAB_INLINE_EDIT#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><a href="#TAB_LINK#"><img height="8" width="110"src="#IMAGE_PREFIX#themes/theme_9/black.gif" alt="" /></a></td>'||chr(10)||
'</tr></table></td>',
  p_top_non_curr_tab_font_attr=> 'style="color:#222222; font-size:10pt;" class="nounderline"',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t9notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="1" cellspacing="2" border="0" class="t9navbar" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '<td valign="top"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/separator.png" alt="" /></td>'||chr(10)||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" summary=""',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 15690879841613989
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t9StylizedButton" cellspacing="0" cellpadding="0" border="0"  summary=""><tr>'||chr(10)||
'<td class="t9L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but4_left.png" alt="" width="6" height="21" /></a></td>'||chr(10)||
'<td class="t9C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t9R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but4_right.png" width="6" height="21" alt="" /></a></td>'||chr(10)||
'<';

t:=t||'/tr></table>';

wwv_flow_api.create_button_templates (
  p_id=>15690879841613989 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 15690983645613991
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t9StandardButton" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but_left.png" alt="" width="6" height="21" /></a></td>'||chr(10)||
'<td class="t9C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t9R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but_right.png" width="6" height="21" alt="" /></a></td>'||chr(10)||
'</';

t:=t||'tr></table>';

wwv_flow_api.create_button_templates (
  p_id=>15690983645613991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 15691065701613991
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t9StandardButtonAlt2" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but3_left.png" alt="" width="6" height="21" /></a></td>'||chr(10)||
'<td class="t9C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t9R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but3_right.png" width="6" height="21" alt="" /></a></';

t:=t||'td>'||chr(10)||
'</tr></table>';

wwv_flow_api.create_button_templates (
  p_id=>15691065701613991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 9,
  p_theme_class_id => 5,
  p_template_comment       => 'XP Square FFFFFF');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 15691180827613991
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t9StandardButtonAlt1" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but2_left.png" alt="" width="6" height="21" /></a></td>'||chr(10)||
'<td class="t9C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t9R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/but2_right.png" width="6" height="21" alt="" /></a></';

t:=t||'td>'||chr(10)||
'</tr></table>';

wwv_flow_api.create_button_templates (
  p_id=>15691180827613991 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 9,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/chart_list
prompt  ......region template 15691286147613991
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9SBCCStyle2" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" colspan="3" class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body" valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="1" height="240" alt="" /></td>'||chr(10)||
'<td class="t9Body" valign="top" width="100" align="center"><img src="#IMAGE_PREFIX#themes/theme_9/';

t:=t||'lst_charts.png" alt="" /></td>'||chr(10)||
'<td class="t9Body" valign="top" width="140" align="left">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="280" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691286147613991 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 9,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691286147613991 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 15691361824613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCBracketed" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/bracket_side.png" width="7" height="19" alt="" /></td>'||chr(10)||
'<td class="t9RegionHeader" width="100%">&nbsp;</td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/bracket_side.png" width="7" height="19" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td clas';

t:=t||'s="t9Body" colspan="3">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP##BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/bracket_side.png" width="7" height="19" alt="" /></td>'||chr(10)||
'<td class="t9RegionFooter" width="100%">&nbsp;</td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/bracket_side.png" width="7" height=';

t:=t||'"19" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691361824613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691361824613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 15691484425613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCReportsExpands100" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</';

t:=t||'tr>'||chr(10)||
''||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691484425613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 9,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691484425613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 15691584177613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCFormItemContent" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></';

t:=t||'td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691584177613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 9,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691584177613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 15691685375613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCNoTitle" id="#REGION_ID#">'||chr(10)||
'<tr><td align="right" valign="bottom" class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td valign="top" class="t9RegionHeader">&nbsp;</td></tr>'||chr(10)||
'<tr><td class="t9Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t9RegionFoot';

t:=t||'er"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691685375613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691685375613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_template_custom_1
prompt  ......region template 15691763879613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCReportsStyle3" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></td';

t:=t||'>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691763879613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region Template, Custom 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 21,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691763879613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 15691872632613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div align="right" id="#REGION_ID#"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t9SBCCStyle1">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="200" height="1" alt="" /></td></tr>'||chr(10)||
'</table></div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691872632613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691872632613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 15691962909613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCReportsStyle2" id="#REGION_ID#">'||chr(10)||
'<tr><td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr></table></td></';

t:=t||'tr>'||chr(10)||
'<tr><td class="t9Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15691962909613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 9,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15691962909613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 15692083060613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9SBCCStyle2" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" colspan="3" class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body" valign="top"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="1" height="240" alt="" /></td>'||chr(10)||
'<td class="t9Body" valign="top" width="100" align="center"><img src="#IMAGE_PREFIX#themes/theme_9/';

t:=t||'lst_reports.png" alt="" /></td>'||chr(10)||
'<td class="t9Body" valign="top" width="140" align="left">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="280" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692083060613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 9,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692083060613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_title
prompt  ......region template 15692176051613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCNoButtonsNoTitle" id="#REGION_ID#">'||chr(10)||
'<tr><td valign="top" class="t9RegionHeader">&nbsp;</td></tr>'||chr(10)||
'<tr><td class="t9Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692176051613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without buttons and title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692176051613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 15692276686613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9ButtonContainerWithRegionTitle" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td valign="bottom" class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##';

t:=t||'HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692276686613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692276686613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 15692359064613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div id="#REGION_ID#">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692359064613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692359064613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_custom_2
prompt  ......region template 15692471272613992
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div align="right" id="#REGION_ID#"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t9SBCCStyle3">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="200" height="1" alt="" /></td></tr>'||chr(10)||
'</table></div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692471272613992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Custom 2',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 22,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692471272613992 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 15692576412613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9SBNCStyle2" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeaderMin">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692576412613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692576412613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 15692668688613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9WizardContainer" id="#REGION_ID#">'||chr(10)||
'<tr><td valign="top">'||chr(10)||
'   <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'   <tr>'||chr(10)||
'      <td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'      <td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'  ';

t:=t||' </tr>'||chr(10)||
'   </table>'||chr(10)||
'</td></tr>'||chr(10)||
'<tr><td class="t9Body"><img src="#IMAGE_PREFIX#themes/theme_9/wizard_icon.gif" alt="confirm" style="float:left;">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="640" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692668688613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692668688613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 15692755333613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCReportsCharts" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></td';

t:=t||'>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692755333613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 9,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692755333613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 15692886743613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div align="right" id="#REGION_ID#"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t9SBCCStyle2">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="200" height="1" alt="" /></td></tr>'||chr(10)||
'</table>'||chr(10)||
'</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692886743613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 9,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692886743613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 15692978250613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t9GCCShowHide" id="#REGION_ID#"><div class="t9SHHeader"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_9/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_9/rollup_minus_dgray.gif'');" class="htmldbHideShowMinLink"><img src="#IMAGE_PREFIX#themes/theme_9/rollup_plus_dgray.gif" '||chr(10)||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /><';

t:=t||'/a>&nbsp;#TITLE#</div>'||chr(10)||
'<div class="t9Hide" id="region#REGION_SEQUENCE_ID#">'||chr(10)||
'  <div class="t9Body">'||chr(10)||
'  '||chr(10)||
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCNoTitle" id="#REGION_SEQUENCE_ID#">'||chr(10)||
'<tr><td align="right" valign="bottom" class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td valign="t';

t:=t||'op" class="t9RegionHeader">&nbsp;</td></tr>'||chr(10)||
'<tr><td class="t9Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>'||chr(10)||
''||chr(10)||
'  </div>'||chr(10)||
'</div></div>'||chr(10)||
''||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15692978250613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => 'Gray Head, white body');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15692978250613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 15693069011613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCBorderless" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></td>'||chr(10)||
'<';

t:=t||'/tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15693069011613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15693069011613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 15693173775613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9WizardContainer" id="#REGION_ID#">'||chr(10)||
'<tr><td valign="top">'||chr(10)||
'   <table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'   <tr>'||chr(10)||
'      <td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'      <td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'  ';

t:=t||' </tr>'||chr(10)||
'   </table>'||chr(10)||
'</td></tr>'||chr(10)||
'<tr><td class="t9Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="640" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15693173775613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15693173775613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 15693270909613993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9ButtonContainerWithoutRegionTitle" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">&nbsp;</td>'||chr(10)||
'<td valign="bottom" class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY';

t:=t||'##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"><img src="#IMAGE_PREFIX#themes/theme_9/spacer.gif" width="400" height="1" alt="" /></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15693270909613993 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15693270909613993 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 15693362674613994
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t9GCCReportsStyle1" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionHeader">#TITLE#</td>'||chr(10)||
'<td class="t9ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
''||chr(10)||
'</table></td';

t:=t||'>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter"></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15693362674613994 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 9,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15693362674613994 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 15693466155613994
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t9BreadcrumbContainer" id="#REGION_ID#">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 15693466155613994 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 9,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 15693466155613994 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/dhtml_list_image_with_sublist
prompt  ......list template 15693583365613994
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>15693583365613994 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML List (Image) with Sublist',
  p_theme_id  => 9,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_text
prompt  ......list template 15693683807613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><table cellspacing="0" cellpadding="0" border="0" class="t9HorizontalLinkedImagesandText"><tr>'||chr(10)||
'<td class="t9current" align="center">'||chr(10)||
'  <a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/></a>'||chr(10)||
'</td></tr><tr>'||chr(10)||
'<td class="t9noncurrent" align="center"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'</tr></table></td>';

t2:=t2||'<td><table class="t9HorizontalLinkedImagesandText"><tr>'||chr(10)||
'<td class="t9current" align="center">'||chr(10)||
'  <a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/></a>'||chr(10)||
'</td></tr><tr>'||chr(10)||
'<td class="t9noncurrent" align="center"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'</tr></table></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15693683807613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label Text',
  p_theme_id  => 9,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table cellspacing="0" cellpadding="2" border="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 15693786130613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t9current"><a href="#LINK#">#TEXT#</a></td><td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>';

t2:=t2||'<td class="t9noncurrent"><a href="#LINK#">#TEXT#</a></td><td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15693786130613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 9,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<table class="t9HorizontalLinks"><tr><td><img src="#IMAGE_PREFIX#themes/theme_9/separator2.png" alt="" /></td>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_links
prompt  ......list template 15693864663613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t9current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="t9noncurrent"><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15693864663613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered Links',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t9VerticalOrderedLinks">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_menu_with_sublist
prompt  ......list template 15693975797613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>15693975797613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Menu with Sublist',
  p_theme_id  => 9,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tree_list
prompt  ......list template 15694063904613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>15694063904613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tree List',
  p_theme_id  => 9,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="htmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 15694178480613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t9TabbedNavigation">'||chr(10)||
'<tr><td><img width="110" height="5" src="#IMAGE_PREFIX#themes/theme_9/red.gif" alt="" /></a></td></tr>'||chr(10)||
'<tr><td class="t9current"><a href="#LINK#">#TEXT#</a></td><td></tr></table>';

t2:=t2||'<td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t9TabbedNavigation">'||chr(10)||
'<tr><td><img width="110" height="5" src="#IMAGE_PREFIX#themes/theme_9/black.gif" alt="" /></a></td></tr>'||chr(10)||
'<tr><td class="t9noncurrent"><a href="#LINK#">#TEXT#</a></td><td></tr></table>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694178480613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 9,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table border="0" cellpadding="1" cellspacing="2" summary="" class="t9TabbedNavigation"><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 15694283946613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>15694283946613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 9,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 15694362760613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="t1current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></div>';

t2:=t2||'<div><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694362760613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 9,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="0">'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="t1VerticalLinkedImages">',
  p_list_template_after_rows=>'</div></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 15694478978613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t9current" valign="middle"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/grey_arrow.gif" width="10" height="10" border="0" alt="" /></a></td><td class="t9current"><a href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td class="t9noncurrent" valign="middle"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/grey_arrow.gif" width="10" height="10" border="0" alt="" /></a></td><td class="t9noncurrent"><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694478978613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<table class="t9VerticalUnorderedLinkswithBullet">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 15694576078613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<table class="t9ButtonList" cellspacing="0" cellpadding="0" border="0" summary=""><tr><td class="t9L"><img src="#IMAGE_PREFIX#themes/theme_9/but_left.png" alt="" /></td><td class="t9C"><a href="#LINK#">#TEXT#</a></td><td class="t9R"><img src="#IMAGE_PREFIX#themes/theme_9/but_right.png" alt="" /></td></tr></table>';

t2:=t2||'<table class="t9ButtonList" cellspacing="0" cellpadding="0" border="0" summary=""><tr><td class="t9L"><img src="#IMAGE_PREFIX#themes/theme_9/but2_left.png" alt="" /></td><td class="t9NC"><a href="#LINK#">#TEXT#</a></td><td class="t9R"><img src="#IMAGE_PREFIX#themes/theme_9/but2_right.png" alt="" /></td></tr></table>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694576078613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 9,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t9ButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 15694678332613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="t9current">#TEXT#<br /></div><div><img src="#IMAGE_PREFIX#themes/theme_9/arrow_down.png" width="19" height="12" alt="Down" /></div>';

t2:=t2||'<div>#TEXT#<br /></div><div><img src="#IMAGE_PREFIX#themes/theme_9/arrow_down.png" width="19" height="12" alt="Down" /></div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694678332613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 9,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div align="center" class="t9WizardProgressList">',
  p_list_template_after_rows=>'<div>&DONE.</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 15694759198613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t9current"><a href="#LINK#">#TEXT#</a>';

t2:=t2||'<li class="t9noncurrent"><a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694759198613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 9,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t9verticalunorderedlinksnobullet">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 15694863547613997
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t9navcurrent">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t9nav">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>15694863547613997 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 9,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t9VerticalSidebarNavigation">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 15694977841613997
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t9data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15694977841613997 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td colspan="2"><table cellpadding="0" border="0" cellspacing="0" summary="" class="t9standard">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="csv">#EXTERNAL_LINK##CSV_LINK#</td><td><table width="100%" border="0" summary="">#PAGINATION#</table></td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t9header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td>'||chr(10)||
'<td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_previous_page_template=>'<table class="t9pagination" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td>'||chr(10)||
'<td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS#</a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_next_set_template=>'<table class="t9pagination" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_previous_set_template=>'<table class="t9pagination" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td>'||chr(10)||
'<td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_row_style_checked=>'#EEEEEE',
  p_theme_id  => 9,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 15694977841613997 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/bottom_border_only
prompt  ......report template 15695059922613999
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t9data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15695059922613999 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Bottom Border Only',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td colspan="2"><table cellpadding="0" border="0" cellspacing="0" summary="" class="t9bottomborderonly">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="csv">#EXTERNAL_LINK##CSV_LINK#</td><td><table width="100%" border="0" summary="">#PAGINATION#</table></td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t9header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="next" /></a></td></tr></table>',
  p_previous_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="next" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>',
  p_next_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="next" /></a></td></tr></table>',
  p_previous_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="next" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 15695059922613999 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 15695167914613999
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><td class="t9current" valign="middle"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/grey_arrow.gif" width="10" height="10" alt="" /></a></td><td class="t9current">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15695167914613999 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" class="t9VerticalUnorderedLinkswithBullet" summary="">'||chr(10)||
'<tr><td colspan="2"><table summary="">#TOP_PAGINATION#</table></td></tr>'||chr(10)||
'',
  p_row_template_after_rows =>'<tr><td colspan="2"><table summary="">#PAGINATION#</table></td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>',
  p_next_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>',
  p_theme_id  => 9,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 15695286267613999
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t9header">#COLUMN_HEADER#</th><td class="t9data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15695286267613999 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t9ValueAttributePairs">',
  p_row_template_after_rows =>'</table>#EXTERNAL_LINK#</td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>',
  p_next_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>',
  p_theme_id  => 9,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 15695286267613999 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'<tr><td>&nbsp;</td></tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 15695372116614000
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t9data">#COLUMN_VALUE#</td>';

c2:=c2||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t9dataalt">#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15695372116614000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td colspan="2"><table cellpadding="0" border="0" cellspacing="0" summary="" class="t9standardalternatingrowcolors">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="csv">#EXTERNAL_LINK##CSV_LINK#</td><td><table width="100%" border="0" summary="">#PAGINATION#</table></td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t9header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>',
  p_next_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>',
  p_row_style_checked=>'#EEEEEE',
  p_theme_id  => 9,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 15695372116614000 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 15695466891614000
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t9data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15695466891614000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td colspan="2"><table cellpadding="0" border="0" cellspacing="0" summary="" class="t9borderless">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="csv">#EXTERNAL_LINK##CSV_LINK#</td><td><table width="100%" border="0" summary="">#PAGINATION#</table></td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t9header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="next" /></a></td></tr></table>',
  p_previous_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="next" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>',
  p_next_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="next" /></a></td></tr></table>',
  p_previous_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="next" /></a></td><td class="pagination"><a href="#LINK#" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>b',
  p_row_style_checked=>'#EEEEEE',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 15695466891614000 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 15695564495614000
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t9data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 15695564495614000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td colspan="2"><table cellpadding="0" border="0" cellspacing="0" summary="" class="t9standard">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="csv">#EXTERNAL_LINK##CSV_LINK#</td><td><table width="100%" border="0" summary="">#PAGINATION#</table></td></tr>'||chr(10)||
'</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t9header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'#TEXT#',
  p_next_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_NEXT#</a></td><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_page_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_PREVIOUS#</a></td></tr></table>',
  p_next_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_NEXT_SET#</a></td><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_next.png" border="0" width="12" height="19" alt="" /></a></td></tr></table>',
  p_previous_set_template=>'<table class="t9pagination" summary=""><tr><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_9/pagination_prev.png" border="0" width="12" height="19" alt="" /></a></td><td class="pagination"><a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="fielddata">#PAGINATION_PREVIOUS_SET#</a></td></tr></table>',
  p_row_style_checked=>'#EEEEEE',
  p_theme_id  => 9,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 15695564495614000 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 15695677242614000
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 15695677242614000 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t9NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 9,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label
prompt  ......label template 15695777703614001
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 15695777703614001 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_9/required_icon.png" width="8" height="12" alt="" /><span class="t9Required">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 9,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label
prompt  ......label template 15695862221614001
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 15695862221614001 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t9Optional">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 9,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_with_help
prompt  ......label template 15695963452614001
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 15695963452614001 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t9optionalwithhelp"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_with_help
prompt  ......label template 15696058694614001
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 15696058694614001 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_9/required_icon.png" width="8" height="12" alt="" /><span class="t9RequiredwithHelp"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 15696158733614001
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 15696158733614001 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<table cellpadding="0" cellspacing="0" border="0" class="t9breadcrumbs" summary=""><tr>',
  p_current_page_option=>'<td class="C">#NAME#</td>',
  p_non_current_page_option=>'<td class="C"><a href="#LINK#">#NAME#</a></td>',
  p_menu_link_attributes=>'',
  p_between_levels=>'<td class="C"><img src="#IMAGE_PREFIX#themes/theme_9/bread_next.png" alt="" /></td>',
  p_after_last=>'<td class="C">&nbsp;&nbsp;</td></tr></table>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 15696260848614006
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 15696260848614006 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<table cellpadding="0" cellspacing="0" border="0" class="t9breadcrumbs" summary=""><tr>',
  p_current_page_option=>'<td class="C">#NAME#</td>',
  p_non_current_page_option=>'<td class="C"><a href="#LINK#">#NAME#</a></td>',
  p_menu_link_attributes=>'',
  p_between_levels=>'<td class="C"><img src="#IMAGE_PREFIX#themes/theme_9/bread_next.png"/></td>',
  p_after_last=>'<td class="C">&nbsp;&nbsp;</td></tr></table>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 15696978039614009
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 15696978039614009 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_9/theme_V2.css" type="text/css" />'||chr(10)||
'',
  p_page_body_attr=>'onload="first_field()" style="margin:0;"',
  p_before_field_text=>' ',
  p_page_heading_text=>'<table width="92%" cellpadding="0" cellspacing="0" border="0" summary="" class="t9PopUp">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t9Body">',
  p_page_footer_text =>'</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9RegionFooter">&nbsp;</td></tr>'||chr(10)||
'</table>',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'class="t9popupButton"',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'class="t9popupButton"',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'class="t9popupButton"',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'class="t9popupButton"',
  p_after_field_text=>'</div><br />',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div style="padding-left:6px;">',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 15696367940614006
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 15696367940614006 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="100">#IDAY#</td>',
  p_month_title_format=> '<table class="t9StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_month_open_format=> '<table class="t9StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="center"  class="formRegionHeader"><table cellspacing="2" cellpadding="2">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top" width="100" class="formRegionBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t9WeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="t9DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t9WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t9Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t9Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t9NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t9Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t9DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t9DayCalendarHolder"> <tr> <td class="t9MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t9DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t9Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t9Today">',
  p_daily_time_open_format => '<th class="t9Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_theme_id  => 9,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 15696581012614008
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 15696581012614008 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="40" class="simpleHeadings">#IDY#</td>',
  p_month_title_format=> '<table class="t9SimpleCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="simpleHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>'||chr(10)||
'',
  p_month_open_format=> '  <tr>'||chr(10)||
'    <td align="center"  class="simpleHeader"><table cellspacing="0" cellpadding="0" class="simpleTable">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top" class="simpleBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="simpleBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="simpleBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top" class="simpleBody">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t9SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="t9DayOfWeek">#IDAY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t9SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t9Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t9Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t9NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t9Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t9DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t9SmallDayCalendarHolder"> <tr> <td class="t9MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t9SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t9Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t9Today">',
  p_daily_time_open_format => '<th class="t9Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_theme_id  => 9,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 15696782274614008
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 15696782274614008 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="60">#IDY#</td>',
  p_month_title_format=> '<table class="t9StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>',
  p_month_open_format=> '  <tr>'||chr(10)||
'    <td align="center"  class="formRegionHeader"><table cellspacing="0" cellpadding="0" class="condensedTable">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top"  width="60" class="formRegionBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t9WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t9MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="t9DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t9WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t9Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t9Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t9NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t9Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t9DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t9DayCalendarAlternative1Holder"> <tr><td class="t9MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t9DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t9Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t9Today">',
  p_daily_time_open_format => '<th class="t9Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_theme_id  => 9,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
prompt  ......theme 15697070520614011
--application/shared_components/user_interface/themes/underlined
begin
wwv_flow_api.create_theme (
  p_id =>15697070520614011 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 9,
  p_theme_name=>'Underlined',
  p_default_page_template=>15690571895613988 + wwv_flow_api.g_id_offset,
  p_error_template=>15690571895613988 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>15690080816613987 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>15690354300613988 + wwv_flow_api.g_id_offset,
  p_default_button_template=>15690983645613991 + wwv_flow_api.g_id_offset,
  p_default_region_template=>15693362674613994 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>15692755333613993 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>15691584177613992 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>15693362674613994 + wwv_flow_api.g_id_offset,
  p_default_tabform_template  =>15693362674613994 + wwv_flow_api.g_id_offset,
  p_default_wizard_template   =>15693173775613993 + wwv_flow_api.g_id_offset,
  p_default_menur_template    =>15693466155613994 + wwv_flow_api.g_id_offset,
  p_default_listr_template    =>15691584177613992 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>15694977841613997 + wwv_flow_api.g_id_offset,
  p_default_label_template    =>15695963452614001 + wwv_flow_api.g_id_offset,
  p_default_menu_template     =>15696158733614001 + wwv_flow_api.g_id_offset,
  p_default_calendar_template =>15696367940614006 + wwv_flow_api.g_id_offset,
  p_default_list_template     =>15694478978613997 + wwv_flow_api.g_id_offset,
  p_default_option_label      =>15695963452614001 + wwv_flow_api.g_id_offset,
  p_default_required_label    =>15696058694614001 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 102
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 102
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 102
--
 
begin
 
null;
 
end;
/

prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/delete_confirm_msg
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 15699471905614076 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/html_db
prompt  ......scheme 15697155117614020
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 15697155117614020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'HTML DB',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......scheme 15697269418614021
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 15697269418614021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......scheme 15697385809614021
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 15697385809614021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/deployment/definition
prompt  ...application deployment
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
begin
s := null;
wwv_flow_api.create_install (
  p_id => 16297481434569953 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_include_in_export_yn => 'Y',
  p_deinstall_script_clob => s,
  p_deinstall_message=> '');
end;
 
 
end;
/

--application/deployment/install
prompt  ...application install scripts
--
--application/deployment/checks
prompt  ...application deployment checks
--
 
begin
 
null;
 
end;
/

--application/deployment/buildoptions
prompt  ...application deployment build options
--
 
begin
 
null;
 
end;
/

--application/end_environment
commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
