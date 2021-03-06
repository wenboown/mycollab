CREATE TABLE `ECM_JOURNALGLOBAL_REVISION` (
  `REVISION_ID` bigint(20) NOT NULL,
  UNIQUE KEY `ECM_JOURNALGLOBAL_REVISION_IDX` (`REVISION_ID`)
) ;

CREATE TABLE `ECM_JOURNALJOURNAL` (
  `REVISION_ID` bigint(20) NOT NULL,
  `JOURNAL_ID` varchar(255)  DEFAULT NULL,
  `PRODUCER_ID` varchar(255)  DEFAULT NULL,
  `REVISION_DATA` longblob,
  UNIQUE KEY `ECM_JOURNALJOURNAL_IDX` (`REVISION_ID`)
) ;

CREATE TABLE `ECM_JOURNALLOCAL_REVISIONS` (
  `JOURNAL_ID` varchar(255)  NOT NULL,
  `REVISION_ID` bigint(20) NOT NULL
) ;

CREATE TABLE `ECM_P_VERSIONBINVAL` (
  `BINVAL_ID` varchar(64)  NOT NULL,
  `BINVAL_DATA` longblob NOT NULL,
  UNIQUE KEY `ECM_P_VERSIONBINVAL_IDX` (`BINVAL_ID`)
) ;

CREATE TABLE `ECM_P_VERSIONBUNDLE` (
  `NODE_ID` varbinary(16) NOT NULL,
  `BUNDLE_DATA` longblob NOT NULL,
  UNIQUE KEY `ECM_P_VERSIONBUNDLE_IDX` (`NODE_ID`)
) ;

CREATE TABLE `ECM_P_VERSIONNAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255)  NOT NULL,
  PRIMARY KEY (`ID`)
) ;

CREATE TABLE `ECM_P_VERSIONREFS` (
  `NODE_ID` varbinary(16) NOT NULL,
  `REFS_DATA` longblob NOT NULL,
  UNIQUE KEY `ECM_P_VERSIONREFS_IDX` (`NODE_ID`)
) ;

CREATE TABLE `ECM_P_WORKSPACEBINVAL` (
  `BINVAL_ID` varchar(64)  NOT NULL,
  `BINVAL_DATA` longblob NOT NULL,
  UNIQUE KEY `ECM_P_WORKSPACEBINVAL_IDX` (`BINVAL_ID`)
) ;

CREATE TABLE `ECM_P_WORKSPACEBUNDLE` (
  `NODE_ID` varbinary(16) NOT NULL,
  `BUNDLE_DATA` longblob NOT NULL,
  UNIQUE KEY `ECM_P_WORKSPACEBUNDLE_IDX` (`NODE_ID`)
) ;

CREATE TABLE `ECM_P_WORKSPACENAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255)  NOT NULL,
  PRIMARY KEY (`ID`)
) ;

CREATE TABLE `ECM_P_WORKSPACEREFS` (
  `NODE_ID` varbinary(16) NOT NULL,
  `REFS_DATA` longblob NOT NULL,
  UNIQUE KEY `ECM_P_WORKSPACEREFS_IDX` (`NODE_ID`)
) ;

CREATE TABLE `ECM_S_FSENTRY` (
  `FSENTRY_PATH` varbinary NOT NULL,
  `FSENTRY_NAME` varchar(255) NOT NULL,
  `FSENTRY_DATA` longblob,
  `FSENTRY_LASTMOD` bigint(20) NOT NULL,
  `FSENTRY_LENGTH` bigint(20) NOT NULL,
  UNIQUE KEY `ECM_S_FSENTRY_IDX` (`FSENTRY_PATH`,`FSENTRY_NAME`)
) ;


CREATE TABLE `WIKI_JOURNALGLOBAL_REVISION` (
  `REVISION_ID` bigint(20) NOT NULL,
  UNIQUE KEY `WIKI_JOURNALGLOBAL_REVISION_IDX` (`REVISION_ID`)
) ;

CREATE TABLE `WIKI_JOURNALJOURNAL` (
  `REVISION_ID` bigint(20) NOT NULL,
  `JOURNAL_ID` varchar(255)  DEFAULT NULL,
  `PRODUCER_ID` varchar(255)  DEFAULT NULL,
  `REVISION_DATA` longblob,
  UNIQUE KEY `WIKI_JOURNALJOURNAL_IDX` (`REVISION_ID`)
) ;

CREATE TABLE `WIKI_JOURNALLOCAL_REVISIONS` (
  `JOURNAL_ID` varchar(255)  NOT NULL,
  `REVISION_ID` bigint(20) NOT NULL
) ;

CREATE TABLE `WIKI_P_VERSIONBINVAL` (
  `BINVAL_ID` varchar(64)  NOT NULL,
  `BINVAL_DATA` longblob NOT NULL,
  UNIQUE KEY `WIKI_P_VERSIONBINVAL_IDX` (`BINVAL_ID`)
) ;

CREATE TABLE `WIKI_P_VERSIONBUNDLE` (
  `NODE_ID` varbinary(16) NOT NULL,
  `BUNDLE_DATA` longblob NOT NULL,
  UNIQUE KEY `WIKI_P_VERSIONBUNDLE_IDX` (`NODE_ID`)
) ;

CREATE TABLE `WIKI_P_VERSIONNAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255)  NOT NULL,
  PRIMARY KEY (`ID`)
) ;

CREATE TABLE `WIKI_P_VERSIONREFS` (
  `NODE_ID` varbinary(16) NOT NULL,
  `REFS_DATA` longblob NOT NULL,
  UNIQUE KEY `WIKI_P_VERSIONREFS_IDX` (`NODE_ID`)
) ;

CREATE TABLE `WIKI_P_WORKSPACEBINVAL` (
  `BINVAL_ID` varchar(64)  NOT NULL,
  `BINVAL_DATA` longblob NOT NULL,
  UNIQUE KEY `WIKI_P_WORKSPACEBINVAL_IDX` (`BINVAL_ID`)
) ;

CREATE TABLE `WIKI_P_WORKSPACEBUNDLE` (
  `NODE_ID` varbinary(16) NOT NULL,
  `BUNDLE_DATA` longblob NOT NULL,
  UNIQUE KEY `WIKI_P_WORKSPACEBUNDLE_IDX` (`NODE_ID`)
) ;

CREATE TABLE `WIKI_P_WORKSPACENAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255)  NOT NULL,
  PRIMARY KEY (`ID`)
) ;

CREATE TABLE `WIKI_P_WORKSPACEREFS` (
  `NODE_ID` varbinary(16) NOT NULL,
  `REFS_DATA` longblob NOT NULL,
  UNIQUE KEY `WIKI_P_WORKSPACEREFS_IDX` (`NODE_ID`)
) ;

CREATE TABLE `WIKI_S_FSENTRY` (
  `FSENTRY_PATH` varbinary  NOT NULL,
  `FSENTRY_NAME` varchar(255) NOT NULL,
  `FSENTRY_DATA` longblob,
  `FSENTRY_LASTMOD` bigint(20) NOT NULL,
  `FSENTRY_LENGTH` bigint(20) NOT NULL,
  UNIQUE KEY `WIKI_S_FSENTRY_IDX` (`FSENTRY_PATH`,`FSENTRY_NAME`)
) ;

--
-- Table structure for table s_user
--

DROP TABLE IF EXISTS s_user;


CREATE TABLE s_user (
  username varchar(45) NOT NULL,
  firstname varchar(45) NOT NULL,
  lastname varchar(45) NOT NULL,
  nickname varchar(45) DEFAULT NULL,
  birthday date DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  email varchar(255) NULL,
  website varchar(255) DEFAULT NULL,
  registeredTime timestamp DEFAULT NULL,
  lastAccessedTime timestamp DEFAULT NULL,
  company varchar(255) DEFAULT NULL,
  timezone varchar(45) DEFAULT NULL,
  language varchar(45) DEFAULT NULL,
  country varchar(45) DEFAULT NULL,
  workPhone varchar(20) DEFAULT NULL,
  homePhone varchar(20) DEFAULT NULL,
  facebookAccount varchar(45) DEFAULT NULL,
  twitterAccount varchar(45) DEFAULT NULL,
  skypeContact varchar(45) DEFAULT NULL,
  avatarId varchar(90) DEFAULT NULL,
  status varchar(45) DEFAULT NULL,
  requestAd boolean DEFAULT true,
  YYMMDDFormat varchar(45) DEFAULT NULL,
  humanDateFormat varchar(45) DEFAULT NULL,
  MMDDFormat varchar(45) DEFAULT NULL,
  PRIMARY KEY (username)
) ;

--
-- Table structure for table s_account
--

DROP TABLE IF EXISTS s_account;


CREATE TABLE s_account (
  id serial,
  createdTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  billingPlanId integer DEFAULT NULL,
  accountName varchar(100) DEFAULT NULL,
  status varchar(45) NOT NULL,
  subDomain varchar(45) DEFAULT NULL UNIQUE,
  reminderStatus varchar(45) DEFAULT NULL,
  siteName varchar(255) DEFAULT NULL,
  logoPath varchar(255) DEFAULT NULL,
  defaultTimezone varchar(45) DEFAULT NULL,
  faviconPath varchar(225) DEFAULT NULL,
  defaultCurrencyId varchar(4) DEFAULT NULL,
  defaultYYMMDDFormat varchar(45) DEFAULT NULL,
  defaultHumanDateFormat varchar(45) DEFAULT NULL,
  defaultMMDDFormat varchar(45) DEFAULT NULL,
  defaultLanguageTag varchar(10) DEFAULT NULL,
  displayEmailPublicly boolean DEFAULT NULL,
  trialFrom date DEFAULT NULL,
  trialTo date DEFAULT NULL,
  paymentMethod varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
) ;

--
-- Table structure for table s_activitystream
--

DROP TABLE IF EXISTS s_activitystream;


CREATE TABLE s_activitystream (
  id serial,
  sAccountId integer NOT NULL,
  type varchar(45) NOT NULL,
  typeId varchar(100) NOT NULL,
  createdTime timestamp DEFAULT NULL,
  action varchar(45) DEFAULT NULL,
  createdUser varchar(45) DEFAULT NULL,
  module varchar(45) DEFAULT NULL,
  nameField text,
  extraTypeId integer DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_crm_activitystream_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_crm_activitystream_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE
) ;

--
-- Table structure for table m_audit_log
--

DROP TABLE IF EXISTS m_audit_log;


CREATE TABLE m_audit_log (
  id serial,
  object_class varchar(255) NOT NULL,
  changeset text NOT NULL,
  createdTime timestamp NOT NULL,
  createdUser varchar(45) DEFAULT NULL,
  sAccountId integer NOT NULL,
  type varchar(45) NOT NULL,
  typeid integer NOT NULL,
  module varchar(45) NOT NULL,
  activityLogId integer DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_audit_log_1 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_audit_log_2 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_audit_log_3 FOREIGN KEY (activityLogId) REFERENCES s_activitystream (id) ON DELETE SET NULL ON UPDATE CASCADE
) ;



--
-- Table structure for table m_comment
--

DROP TABLE IF EXISTS m_comment;


CREATE TABLE m_comment (
  id serial,
  comment text,
  createdUser varchar(45) NOT NULL,
  createdTime timestamp NOT NULL,
  type varchar(45) DEFAULT NULL,
  typeId varchar(100),
  sAccountId integer DEFAULT NULL,
  extraTypeId integer DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_comment_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_comment_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_customer
--

DROP TABLE IF EXISTS m_client;


CREATE TABLE m_client (
  id serial,
  name varchar(255) NOT NULL,
  website varchar(255) DEFAULT NULL,
  phoneOffice varchar(45) DEFAULT NULL,
  fax varchar(45) DEFAULT NULL,
  alternatePhone varchar(45) DEFAULT NULL,
  annualRevenue varchar(45) DEFAULT NULL,
  billingAddress varchar(255) DEFAULT NULL,
  city varchar(100) DEFAULT NULL,
  postalCode varchar(45) DEFAULT NULL,
  description text,
  state varchar(45) DEFAULT NULL,
  email varchar(45) DEFAULT NULL,
  ownership varchar(255) DEFAULT NULL,
  shippingAddress varchar(255) DEFAULT NULL,
  shippingCity varchar(100) DEFAULT NULL,
  shippingPostalCode varchar(45) DEFAULT NULL,
  shippingState varchar(45) DEFAULT NULL,
  numemployees integer DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  createdUser varchar(45) DEFAULT NULL,
  sAccountId integer NOT NULL,
  assignUser varchar(45) DEFAULT NULL,
  type varchar(45) DEFAULT NULL,
  industry varchar(45) DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  billingCountry varchar(45) DEFAULT NULL,
  shippingCountry varchar(45) DEFAULT NULL,
  avatarId varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_crm_account_6 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_crm_account_7 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_crm_account_8 FOREIGN KEY (assignUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE
) ;


--
-- Table structure for table m_form_custom_field_value
--

DROP TABLE IF EXISTS m_form_custom_field_value;


CREATE TABLE m_form_custom_field_value (
  id serial,
  module varchar(45) NOT NULL,
  typeid integer NOT NULL,
  number1 numeric DEFAULT NULL,
  number2 numeric DEFAULT NULL,
  number3 numeric DEFAULT NULL,
  number4 numeric DEFAULT NULL,
  number5 numeric DEFAULT NULL,
  int1 integer DEFAULT NULL,
  int2 integer DEFAULT NULL,
  int3 integer DEFAULT NULL,
  int4 integer DEFAULT NULL,
  int5 integer DEFAULT NULL,
  date1 timestamp DEFAULT NULL,
  date2 timestamp DEFAULT NULL,
  date3 timestamp DEFAULT NULL,
  date4 timestamp DEFAULT NULL,
  date5 timestamp DEFAULT NULL,
  text1 text,
  text2 text,
  text3 text,
  text4 text,
  text5 text,
  textarea1 text,
  textarea2 text,
  textarea3 text,
  textarea4 text,
  textarea5 text,
  bool1 boolean DEFAULT NULL,
  bool2 boolean DEFAULT NULL,
  bool3 boolean DEFAULT NULL,
  bool4 boolean DEFAULT NULL,
  bool5 boolean DEFAULT NULL,
  pick1 varchar(100) DEFAULT NULL,
  pick2 varchar(100) DEFAULT NULL,
  pick3 varchar(100) DEFAULT NULL,
  pick4 varchar(100) DEFAULT NULL,
  pick5 varchar(100) DEFAULT NULL,
  multipick1 text,
  multipick2 text,
  multipick3 text,
  multipick4 text,
  multipick5 text,
  PRIMARY KEY (id)
) ;


--
-- Table structure for table m_form_section
--

DROP TABLE IF EXISTS m_form_section;


CREATE TABLE m_form_section (
  id serial,
  name varchar(100) NOT NULL,
  layoutIndex integer NOT NULL,
  module varchar(45) NOT NULL,
  sAccountId integer NOT NULL,
  layoutType smallint NOT NULL,
  isDeleteSection boolean NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_form_section_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_form_section_field
--

DROP TABLE IF EXISTS m_form_section_field;


CREATE TABLE m_form_section_field (
  id serial,
  sectionId integer NOT NULL,
  isMandatory boolean NOT NULL,
  fieldIndex integer NOT NULL,
  displayName varchar(100) NOT NULL,
  fieldFormat varchar(200) NOT NULL,
  fieldname varchar(45) NOT NULL,
  fieldType varchar(1000) NOT NULL,
  isRequired boolean NOT NULL,
  isCustom boolean NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_form_section_field_2 FOREIGN KEY (sectionId) REFERENCES m_form_section (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_monitor_item
--

DROP TABLE IF EXISTS m_monitor_item;


CREATE TABLE m_monitor_item (
  id serial,
  username varchar(45) NOT NULL,
  createdTime timestamp NOT NULL,
  type varchar(45) NOT NULL,
  typeId varchar(100) NOT NULL,
  extraTypeId integer DEFAULT NULL,
  sAccountId integer NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_monitor_item_1 FOREIGN KEY (username) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_monitor_item_2 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

--
-- Table structure for table m_options
--

DROP TABLE IF EXISTS m_options;


CREATE TABLE m_options (
  id serial,
  type varchar(45)  NOT NULL,
  typeVal varchar(255)  NOT NULL,
  description text,
  orderIndex smallint DEFAULT NULL,
  sAccountId integer NOT NULL,
  createdTime timestamp NOT NULL,
  createdUser varchar(45) DEFAULT NULL,
  extraId integer DEFAULT NULL,
  isDefault boolean NOT NULL,
  refOption integer DEFAULT NULL,
  color varchar(6)  NOT NULL,
  fieldgroup varchar(45)  NOT NULL,
  isShow boolean DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_options_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_options_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE
) ;

--
-- Table structure for table m_prj_project
--

DROP TABLE IF EXISTS m_prj_project;


CREATE TABLE m_prj_project (
  id serial,
  name varchar(255) NOT NULL,
  createUser varchar(45) DEFAULT NULL,
  clientId integer DEFAULT NULL,
  priority varchar(45) DEFAULT NULL,
  shortName varchar(45) NOT NULL,
  planStartDate date DEFAULT NULL,
  planEndDate date DEFAULT NULL,
  targetBudget numeric DEFAULT NULL,
  homePage varchar(255) DEFAULT NULL,
  actualBudget numeric DEFAULT NULL,
  type varchar(45) DEFAULT NULL,
  status varchar(45) NOT NULL,
  description text,
  defaultBillingRate numeric DEFAULT NULL,
  defaultOvertimeBillingRate numeric DEFAULT NULL,
  currencyId varchar(4) DEFAULT NULL,
  progress numeric DEFAULT NULL,
  sAccountId integer NOT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  avatarId varchar(100) DEFAULT NULL,
  contextAsk boolean DEFAULT '1',
  deadline date DEFAULT NULL,
  isPublic boolean DEFAULT NULL,
  isTemplate boolean DEFAULT NULL,
  memLead varchar(45) DEFAULT NULL,
  color varchar(6) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_project_2 FOREIGN KEY (createUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_project_4 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_project_5 FOREIGN KEY (memLead) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_project_6 FOREIGN KEY (clientId) REFERENCES m_client (id) ON DELETE SET NULL ON UPDATE SET NULL
) ;

--
-- Table structure for table m_prj_role
--

DROP TABLE IF EXISTS m_prj_role;


CREATE TABLE m_prj_role (
  id serial,
  rolename varchar(255) NOT NULL,
  description text,
  sAccountId integer NOT NULL,
  projectId integer NOT NULL,
  isSystemRole boolean DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_role_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_role_2 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

--
-- Table structure for table m_prj_customize_view
--

DROP TABLE IF EXISTS m_prj_customize_view;


CREATE TABLE m_prj_customize_view (
  id serial,
  projectId integer NOT NULL,
  displayMessage boolean NOT NULL,
  displayMilestone boolean NOT NULL,
  displayFile boolean NOT NULL,
  displayTimeLogging boolean NOT NULL,
  displayPage boolean NOT NULL,
  displayInvoice boolean NOT NULL,
  displayTicket boolean DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_customize_view_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_invoice
--

DROP TABLE IF EXISTS m_prj_invoice;


CREATE TABLE m_prj_invoice (
  id serial,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  createdUser varchar(45) NOT NULL,
  assignUser varchar(45) DEFAULT NULL,
  amount numeric NOT NULL,
  currentId varchar(4) DEFAULT NULL,
  clientId integer DEFAULT NULL,
  contactUserFullName varchar(100) DEFAULT NULL,
  sAccountId integer NOT NULL,
  status varchar(45) NOT NULL,
  note varchar(400) DEFAULT NULL,
  description text,
  type varchar(45) NOT NULL,
  noId varchar(400) NOT NULL,
  projectId integer NOT NULL,
  issueDate date NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_invoice_2 FOREIGN KEY (clientId) REFERENCES m_client (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_invoice_3 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_invoice_4 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_kanban_board
--

DROP TABLE IF EXISTS m_prj_kanban_board;


CREATE TABLE m_prj_kanban_board (
  id serial,
  name varchar(255)  NOT NULL,
  projectId integer NOT NULL,
  sAccountId integer NOT NULL,
  lead varchar(45) DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_kanban_board_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_kanban_board_2 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_kanban_board_3 FOREIGN KEY (lead) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_member
--

DROP TABLE IF EXISTS m_prj_member;


CREATE TABLE m_prj_member (
  id serial,
  username varchar(45) NOT NULL,
  projectId integer NOT NULL,
  createdTime timestamp DEFAULT NULL,
  projectRoleId integer DEFAULT NULL,
  status varchar(45) NOT NULL,
  sAccountId integer NOT NULL,
  billingRate numeric DEFAULT NULL,
  overtimeBillingRate numeric DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_member_1 FOREIGN KEY (username) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_member_2 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_member_3 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_member_4 FOREIGN KEY (projectRoleId) REFERENCES m_prj_role (id) ON DELETE SET NULL ON UPDATE SET NULL
) ;


--
-- Table structure for table m_prj_message
--

DROP TABLE IF EXISTS m_prj_message;


CREATE TABLE m_prj_message (
  id serial,
  title varchar(1000) NOT NULL,
  message text,
  createdUser varchar(45) DEFAULT NULL,
  projectId integer NOT NULL,
  category varchar(45) DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  sAccountId integer NOT NULL,
  isStick boolean DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_message_1 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_message_2 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_message_3 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;


--
-- Table structure for table m_prj_milestone
--

DROP TABLE IF EXISTS m_prj_milestone;


CREATE TABLE m_prj_milestone (
  id serial,
  name varchar(255) NOT NULL,
  description text,
  startDate date DEFAULT NULL,
  endDate date DEFAULT NULL,
  assignUser varchar(45) DEFAULT NULL,
  flag varchar(45) DEFAULT NULL,
  projectId integer NOT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  sAccountId integer NOT NULL,
  status varchar(45) NOT NULL,
  createdUser varchar(45) DEFAULT NULL,
  prjKey integer DEFAULT NULL,
  dueDate date DEFAULT NULL,
  color varchar(6) DEFAULT NULL,
  priority varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT PK_m_prj_milestone_1 FOREIGN KEY (assignUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT PK_m_prj_milestone_2 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT PK_m_prj_milestone_3 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT PK_m_prj_milestone_4 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_notifications
--

DROP TABLE IF EXISTS m_prj_notifications;


CREATE TABLE m_prj_notifications (
  id serial,
  username varchar(45) NOT NULL,
  projectId integer NOT NULL,
  sAccountId integer NOT NULL,
  level varchar(45) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_notifications_1 FOREIGN KEY (username) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_notifications_2 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_notifications_3 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

--
-- Table structure for table m_prj_risk
--

DROP TABLE IF EXISTS m_prj_risk;


CREATE TABLE m_prj_risk (
  id serial,
  name varchar(400) NOT NULL,
  description text,
  projectId integer NOT NULL,
  createdUser varchar(45) DEFAULT NULL,
  assignUser varchar(45) DEFAULT NULL,
  consequence varchar(45) DEFAULT NULL,
  probability varchar(45) DEFAULT NULL,
  status varchar(45) DEFAULT NULL,
  raisedDate date DEFAULT NULL,
  dueDate date DEFAULT NULL,
  response varchar(255) DEFAULT NULL,
  resolution varchar(4000) DEFAULT NULL,
  source varchar(45) DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  sAccountId integer NOT NULL,
  startDate date DEFAULT NULL,
  endDate date DEFAULT NULL,
  milestoneId integer DEFAULT NULL,
  percentageComplete numeric DEFAULT NULL,
  priority varchar(45) NOT NULL,
  remainEstimate numeric DEFAULT NULL,
  originalEstimate numeric DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_risk1_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_risk1_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_risk1_3 FOREIGN KEY (assignUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_risk1_4 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_risk1_5 FOREIGN KEY (milestoneId) REFERENCES m_prj_milestone (id) ON DELETE SET NULL ON UPDATE CASCADE
) ;


--
-- Table structure for table m_prj_role_permission
--

DROP TABLE IF EXISTS m_prj_role_permission;


CREATE TABLE m_prj_role_permission (
  id serial,
  roleId integer NOT NULL,
  roleVal text NOT NULL,
  projectId integer NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_role_permission_1 FOREIGN KEY (roleid) REFERENCES m_prj_role (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_role_permission_2 FOREIGN KEY (projectid) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_standup
--

DROP TABLE IF EXISTS m_prj_standup;


CREATE TABLE m_prj_standup (
  id serial,
  sAccountId integer NOT NULL,
  projectId integer NOT NULL,
  whatlastday text,
  whattoday text,
  whatproblem text,
  forday date NOT NULL,
  logBy varchar(45) NOT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_standup_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_standup_2 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_standup_3 FOREIGN KEY (logBy) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_task
--

DROP TABLE IF EXISTS m_prj_task;


CREATE TABLE m_prj_task (
  id serial,
  name varchar(400) NOT NULL,
  percentagecomplete numeric NOT NULL,
  startDate date DEFAULT NULL,
  endDate date DEFAULT NULL,
  priority varchar(45) NOT NULL,
  duration smallint DEFAULT NULL,
  isestimated boolean DEFAULT NULL,
  projectId integer NOT NULL,
  dueDate date DEFAULT NULL,
  description text,
  taskindex integer DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  assignUser varchar(45) DEFAULT NULL,
  sAccountId integer NOT NULL,
  status varchar(45) DEFAULT NULL,
  createdUser varchar(45) DEFAULT NULL,
  originalEstimate numeric DEFAULT NULL,
  remainEstimate numeric DEFAULT NULL,
  parentTaskId integer DEFAULT NULL,
  milestoneId integer DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_task_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_task_3 FOREIGN KEY (assignUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_task_4 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_task_5 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_task_6 FOREIGN KEY (parentTaskId) REFERENCES m_prj_task (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_task_7 FOREIGN KEY (milestoneId) REFERENCES m_prj_milestone (id) ON DELETE SET NULL ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_time_logging
--

DROP TABLE IF EXISTS m_prj_time_logging;


CREATE TABLE m_prj_time_logging (
  id serial,
  projectId integer NOT NULL,
  type varchar(45) DEFAULT NULL,
  typeId integer DEFAULT NULL,
  note text,
  logValue numeric NOT NULL,
  loguser varchar(45) DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  sAccountId integer NOT NULL,
  logForDay timestamp NOT NULL,
  isBillable boolean NOT NULL,
  createdUser varchar(45) DEFAULT NULL,
  isOvertime boolean DEFAULT NULL,
  isApproved boolean DEFAULT NULL,
  approveUser varchar(45) DEFAULT NULL,
  approveTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_time_logging_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_time_logging_2 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_time_logging_3 FOREIGN KEY (loguser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_time_logging_4 FOREIGN KEY (approveUser) REFERENCES s_user (username)
) ;


--
-- Table structure for table m_prj_bug
--

DROP TABLE IF EXISTS m_prj_bug;


CREATE TABLE m_prj_bug (
  id serial,
  name varchar(4000) NOT NULL,
  detail text,
  assignUser varchar(45) DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  createdUser varchar(45) DEFAULT NULL,
  severity varchar(45) DEFAULT NULL,
  priority varchar(45) NOT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  status varchar(45) NOT NULL,
  dueDate date DEFAULT NULL,
  environment varchar(4000) DEFAULT NULL,
  resolution varchar(45) DEFAULT NULL,
  projectId integer NOT NULL,
  resolveddate timestamp DEFAULT NULL,
  description text,
  originalEstimate numeric DEFAULT NULL,
  remainEstimate numeric DEFAULT NULL,
  sAccountId integer NOT NULL,
  milestoneId integer DEFAULT NULL,
  startDate date DEFAULT NULL,
  endDate date DEFAULT NULL,
  percentagecomplete numeric DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_bug_1 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_bug_2 FOREIGN KEY (assignUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_bug_3 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_bug_4 FOREIGN KEY (milestoneId) REFERENCES m_prj_milestone (id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_bug_5 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_bug_related_item
--

--
-- Table structure for table `m_prj_bug_related_item`
--

DROP TABLE IF EXISTS m_prj_ticket_relation;


CREATE TABLE m_prj_ticket_relation (
  id int(11) NOT NULL AUTO_INCREMENT,
  ticketId int(10) unsigned NOT NULL,
  type varchar(45) NOT NULL,
  typeId int(11) NOT NULL,
  ticketType varchar(45) NOT NULL,
  rel varchar(45) NOT NULL,
  comment text,
  PRIMARY KEY (`id`),
  KEY `INDEX_m_prj_ticket_relation_item_2` (type) USING BTREE,
  KEY `INDEX_m_prj_ticket_relation_item_3` (typeId) USING BTREE
) ;


--
-- Table structure for table m_prj_component
--

DROP TABLE IF EXISTS m_prj_component;


CREATE TABLE m_prj_component (
  id serial,
  projectId integer NOT NULL,
  name varchar(1000) NOT NULL,
  userlead varchar(45) DEFAULT NULL,
  description text,
  createdUser varchar(45) DEFAULT NULL,
  sAccountId integer NOT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  status varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_component_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_component_2 FOREIGN KEY (userlead) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_component_3 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_component_4 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_tracker_related_bug
--

DROP TABLE IF EXISTS m_tracker_related_bug;


CREATE TABLE m_tracker_related_bug (
  id serial,
  bugid integer NOT NULL,
  relatedid integer NOT NULL,
  relatetype varchar(45) NOT NULL,
  comment varchar(4000) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_tracker_related_bug_1 FOREIGN KEY (bugid) REFERENCES m_prj_bug (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_tracker_related_bug_2 FOREIGN KEY (relatedid) REFERENCES m_prj_bug (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table m_prj_version
--

DROP TABLE IF EXISTS m_prj_version;


CREATE TABLE m_prj_version (
  id serial,
  projectId integer NOT NULL,
  description text,
  duedate date DEFAULT NULL,
  name varchar(255) NOT NULL,
  createdUser varchar(45) DEFAULT NULL,
  sAccountId integer NOT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  status varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_m_prj_version_1 FOREIGN KEY (projectId) REFERENCES m_prj_project (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_version_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_m_prj_version_3 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

CREATE TABLE m_prj_ticket_key (
  id integer UNSIGNED NOT NULL AUTO_INCREMENT,
  projectId integer UNSIGNED NOT NULL,
  ticketId integer UNSIGNED NOT NULL,
  ticketType varchar(45) NOT NULL,
  ticketKey integer UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  INDEX PK_m_prj_ticket_id_1_idx (projectId ASC) VISIBLE,
  CONSTRAINT PK_m_prj_ticket_id_1
    FOREIGN KEY (projectId)
    REFERENCES m_prj_project (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

--
-- Table structure for table s_account_theme
--

DROP TABLE IF EXISTS s_account_theme;


CREATE TABLE s_account_theme (
  id serial,
  topMenuBg varchar(6) DEFAULT NULL,
  topMenuBgSelected varchar(6) DEFAULT NULL,
  topMenuText varchar(6) DEFAULT NULL,
  topMenuTextSelected varchar(6) DEFAULT NULL,
  vTabsheetBg varchar(6) DEFAULT NULL,
  vTabsheetBgSelected varchar(6) DEFAULT NULL,
  vTabsheetText varchar(6) DEFAULT NULL,
  vTabsheetTextSelected varchar(6) DEFAULT NULL,
  actionBtn varchar(6) DEFAULT NULL,
  actionBtnText varchar(6) DEFAULT NULL,
  actionBtnBorder varchar(6) DEFAULT NULL,
  optionBtn varchar(6) DEFAULT NULL,=
  optionBtnText varchar(6) DEFAULT NULL,
  optionBtnBorder varchar(6) DEFAULT NULL,
  dangerBtn varchar(6) DEFAULT NULL,
  dangerBtnText varchar(6) DEFAULT NULL,
  dangerBtnBorder varchar(6) DEFAULT NULL,
  isDefault boolean DEFAULT FALSE,
  sAccountId integer DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_account_theme_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;


--
-- Dumping data for table s_account_theme
--

INSERT INTO s_account_theme(id, topMenuBg, topMenuBgSelected, topMenuText, topMenuTextSelected, vTabsheetBg, vTabsheetBgSelected, vTabsheetText, vTabsheetTextSelected, actionBtn, actionBtnText, optionBtn, optionBtnText, clearBtn, clearBtnText, controlBtn, controlBtnText, dangerBtn, dangerBtnText, toggleBtn, toggleBtnSelected, toggleBtnText, toggleBtnTextSelected, isDefault, sAccountId, actionBtnBorder, optionBtnBorder, dangerBtnBorder) VALUES ('1', 'FFFFFF', '3F5166', '000000', 'F1F1F1', '001529', '0190FE', 'B8BECA', 'FFFFFF', '1F9DFE', 'f7f7f7', 'ffffff', '1f9dfe', NULL, NULL, NULL, NULL, 'D32F2F', 'f7f7f7', NULL, NULL, NULL, NULL, '1', NULL, '1F9DFE', 'CCCCCC', 'D32F2F');



--
-- Table structure for table s_billing_plan
--

DROP TABLE IF EXISTS s_billing_plan;


CREATE TABLE s_billing_plan (
  id serial,
  billingType varchar(45) NOT NULL,
  numUsers integer NOT NULL,
  volume bigint NOT NULL,
  numProjects integer NOT NULL,
  pricing numeric NOT NULL,
  description varchar(1000) DEFAULT NULL,
  shoppingUrl varchar(400) DEFAULT NULL,
  productPath varchar(45) DEFAULT NULL,
  bankTransferPath varchar(400) DEFAULT NULL,
  yearlyShoppingUrl varchar(400) DEFAULT NULL,
  PRIMARY KEY (id)
) ;


--
-- Dumping data for table s_billing_plan
--

INSERT INTO s_billing_plan VALUES (6,'Community',99999999,999999999999,999999,0,NULL,NULL,NULL,NULL,NULL);

--
-- Table structure for table s_billing_subscription
--

DROP TABLE IF EXISTS s_billing_subscription;


CREATE TABLE s_billing_subscription (
  id serial,
  company varchar(400) DEFAULT NULL,
  email varchar(400)  NOT NULL,
  billingId integer NOT NULL,
  name varchar(400)  NOT NULL,
  subReference varchar(400)  NOT NULL,
  accountId integer NOT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  status varchar(45)  NOT NULL,
  country varchar(400) DEFAULT NULL,
  city varchar(400) DEFAULT NULL,
  address varchar(400) DEFAULT NULL,
  state varchar(400) DEFAULT NULL,
  zipcode varchar(45) DEFAULT NULL,
  phone varchar(45) DEFAULT NULL,
  contactName varchar(400) DEFAULT NULL,
  subscriptionCustomerUrl varchar(400) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_billing_subscription_1 FOREIGN KEY (billingId) REFERENCES s_billing_plan (id) ON UPDATE CASCADE,
  CONSTRAINT FK_s_billing_subscription_2 FOREIGN KEY (accountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_billing_subscription_history
--

DROP TABLE IF EXISTS s_billing_subscription_history;


CREATE TABLE s_billing_subscription_history (
  id serial,
  orderId varchar(45)  NOT NULL,
  createdTime timestamp DEFAULT NULL,
  subscriptionId integer NOT NULL,
  status varchar(45)  NOT NULL,
  expiredDate timestamp NOT NULL,
  totalPrice numeric NOT NULL,
  productName varchar(100)  NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_billing_subscription_history_1 FOREIGN KEY (subscriptionId) REFERENCES s_billing_subscription (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_country
--

DROP TABLE IF EXISTS s_country;


CREATE TABLE s_country (
  id serial,
  countryname varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ;



--
-- Table structure for table s_customer_feedback
--

DROP TABLE IF EXISTS s_customer_feedback;


CREATE TABLE s_customer_feedback (
  id serial,
  sAccountId integer NOT NULL,
  username varchar(45) NOT NULL,
  reasonToLeave text,
  leaveType integer DEFAULT NULL,
  otherTool varchar(400) DEFAULT NULL,
  reasonToBack text,
  PRIMARY KEY (id)
) ;



--
-- Table structure for table s_customer_lead
--

DROP TABLE IF EXISTS s_customer_lead;


CREATE TABLE s_customer_lead (
  id serial,
  firstname varchar(45)  NOT NULL,
  lastname varchar(45)  NOT NULL,
  company varchar(100)  NOT NULL,
  role varchar(100)  NOT NULL,
  phone varchar(45)  NOT NULL,
  country varchar(100)  NOT NULL,
  email varchar(100)  NOT NULL,
  registerDate timestamp DEFAULT NULL,
  edition varchar(45) DEFAULT NULL,
  version varchar(45) DEFAULT NULL,
  valid boolean DEFAULT NULL,
  PRIMARY KEY (id)
) ;



--
-- Table structure for table s_email_preference
--

DROP TABLE IF EXISTS s_email_preference;


CREATE TABLE s_email_preference (
  email varchar(45) NOT NULL,
  createdTime timestamp DEFAULT NULL,
  subscribe boolean NOT NULL,
  PRIMARY KEY (email)
) ;



--
-- Table structure for table s_favorite
--

DROP TABLE IF EXISTS s_favorite;


CREATE TABLE s_favorite (
  id serial,
  type varchar(45) NOT NULL,
  typeid varchar(45) NOT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  extraTypeId integer DEFAULT NULL,
  createdUser varchar(45) NOT NULL,
  sAccountId integer NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_favorite_1 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_favorite_2 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_live_instances
--

DROP TABLE IF EXISTS s_live_instances;


CREATE TABLE s_live_instances (
  id serial,
  appVersion varchar(45)  NOT NULL,
  javaVersion varchar(45)  NOT NULL,
  installedDate timestamp NOT NULL,
  sysId varchar(100)  NOT NULL,
  sysProperties varchar(100)  NOT NULL,
  lastUpdatedDate timestamp NOT NULL,
  numProjects smallint DEFAULT NULL,
  numUsers smallint DEFAULT NULL,
  edition varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
) ;



--
-- Table structure for table s_pro_edition_info
--

DROP TABLE IF EXISTS s_pro_edition_info;


CREATE TABLE s_pro_edition_info (
  id serial,
  company varchar(400) DEFAULT NULL,
  email varchar(400)  NOT NULL,
  internalProductName varchar(400) DEFAULT NULL,
  name varchar(400) DEFAULT NULL,
  quantity smallint DEFAULT NULL,
  issueDate timestamp NOT NULL,
  type varchar(45)  NOT NULL,
  cost numeric DEFAULT NULL,
  orderId varchar(100)  NOT NULL,
  country varchar(45) DEFAULT NULL,
  phone varchar(45) DEFAULT NULL,
  address1 varchar(400) DEFAULT NULL,
  address2 varchar(400) DEFAULT NULL,
  city varchar(400) DEFAULT NULL,
  PRIMARY KEY (id)
) ;



--
-- Table structure for table s_relay_email_notification
--

DROP TABLE IF EXISTS s_relay_email_notification;


CREATE TABLE s_relay_email_notification (
  id serial,
  sAccountId integer NOT NULL,
  type varchar(45) NOT NULL,
  typeId varchar(100) NOT NULL,
  action varchar(45) NOT NULL,
  changeBy varchar(45) NOT NULL,
  changeComment text,
  extraTypeId integer DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_relay_email_notification_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

--
-- Table structure for table s_roles
--

DROP TABLE IF EXISTS s_roles;


CREATE TABLE s_roles (
  rolename varchar(45) NOT NULL,
  description varchar(45) DEFAULT NULL,
  sAccountId integer NOT NULL,
  id serial,
  isSystemRole boolean DEFAULT NULL,
  isDefault boolean DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_roles_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;

--
-- Table structure for table s_role_permission
--

DROP TABLE IF EXISTS s_role_permission;


CREATE TABLE s_role_permission (
  id serial,
  roleid integer NOT NULL,
  roleVal text NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_role_permission_1 FOREIGN KEY (roleid) REFERENCES s_roles (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_save_search_result
--

DROP TABLE IF EXISTS s_save_search_result;


CREATE TABLE s_save_search_result (
  id serial,
  saveUser varchar(45) NOT NULL,
  sAccountId integer NOT NULL,
  queryText text NOT NULL,
  type varchar(45) NOT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  queryName varchar(400) NOT NULL,
  isShared boolean DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_FK_s_save_search_result_2 FOREIGN KEY (saveUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_save_search_result_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_table_customize_view
--

DROP TABLE IF EXISTS s_table_customize_view;


CREATE TABLE s_table_customize_view (
  id serial,
  createdUser varchar(45) NOT NULL,
  createdTime timestamp DEFAULT NULL,
  viewId varchar(45) NOT NULL,
  viewInfo text NOT NULL,
  sAccountId integer NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_table_customize_view_1 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_table_customize_view_2 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_tag
--

DROP TABLE IF EXISTS s_tag;


CREATE TABLE s_tag (
  id serial,
  name varchar(100) NOT NULL,
  type varchar(45) NOT NULL,
  typeid varchar(100) NOT NULL,
  sAccountId integer NOT NULL,
  extraTypeId integer DEFAULT NULL,
  createdTime timestamp DEFAULT NULL,
  createdUser varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_tag_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_tag_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_testimonial
--

DROP TABLE IF EXISTS s_testimonial;


CREATE TABLE s_testimonial (
  id serial,
  displayName varchar(100) NOT NULL,
  jobRole varchar(100) NOT NULL,
  company varchar(100) DEFAULT NULL,
  testimonial text NOT NULL,
  website varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
) ;

--
-- Table structure for table s_user_account
--

DROP TABLE IF EXISTS s_user_account;


CREATE TABLE s_user_account (
  id serial,
  username varchar(45) NOT NULL,
  accountId integer NOT NULL,
  isAccountOwner boolean NOT NULL,
  roleId integer DEFAULT NULL,
  registeredTime timestamp NOT NULL,
  registerStatus varchar(45) NOT NULL,
  lastAccessedTime timestamp DEFAULT NULL,
  registrationSource varchar(45) DEFAULT NULL,
  lastModuleVisit varchar(45) DEFAULT NULL,
  inviteUser varchar(45) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_user_account_1 FOREIGN KEY (accountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_user_account_2 FOREIGN KEY (username) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_user_account_3 FOREIGN KEY (roleId) REFERENCES s_roles (id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_s_user_account_4 FOREIGN KEY (inviteUser) REFERENCES s_user (username) ON DELETE SET NULL ON UPDATE CASCADE
) ;


--
-- Table structure for table s_user_permission
--

DROP TABLE IF EXISTS s_user_permission;


CREATE TABLE s_user_permission (
  Id serial,
  module varchar(45) NOT NULL,
  type varchar(45) NOT NULL,
  hasPermission varchar(45) NOT NULL,
  username varchar(45) NOT NULL,
  PRIMARY KEY (Id),
  CONSTRAINT s_user_permission FOREIGN KEY (username) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE
) ;



--
-- Table structure for table s_user_tracking
--

DROP TABLE IF EXISTS s_user_tracking;


CREATE TABLE s_user_tracking (
  id serial,
  username varchar(45) NOT NULL,
  userAgent text NOT NULL,
  createdTime timestamp DEFAULT NULL,
  sAccountId integer NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_user_tracking_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_user_tracking_2 FOREIGN KEY (username) REFERENCES s_user (username) ON UPDATE CASCADE
) ;



--
-- Table structure for table s_widgets
--

DROP TABLE IF EXISTS s_widgets;


CREATE TABLE s_widgets (
  id integer NOT NULL,
  sAccountId integer NOT NULL,
  extraTypeId integer DEFAULT NULL,
  name varchar(100)  NOT NULL,
  displayText varchar(1000)  NOT NULL,
  queryId integer DEFAULT NULL,
  queryText text,
  createdUser varchar(45) NOT NULL,
  createdTime timestamp DEFAULT NULL,
  lastUpdatedTime timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_s_widgets_1 FOREIGN KEY (sAccountId) REFERENCES s_account (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_s_widgets_2 FOREIGN KEY (createdUser) REFERENCES s_user (username) ON DELETE CASCADE ON UPDATE CASCADE
) ;


-- Dump completed on 2019-01-01 23:12:34
