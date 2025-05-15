CREATE PROCEDURE [dbo].[V7_UpdateCourseScheduleV44]

------------------------------------------------

-- Created By : A.A.D.H.Sureka

-- Created Date: 26/11/2012

-- Ticket: UpdateCourseScheduleV8

------------------------------------------------

-- Modified By  : Sarith Manjula

-- Modified Date: 01/01/2013

-- Description  : Resource Availability field 

------------------------------------------------

------------------------------------------------

-- Modified By  : Sewwandi Thilakawardana

-- Modified Date: 20/09/2013

-- Description  : Add bDisableInstructorConflict field 

------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 18-09-2013

-- Description  : Add New Field iNominationFormID

-------------------------------------------------

-- Modified By  : LAKSHAN

-- Modified Date: 30-05-2014

-- Description  : WaitList MT

-------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 23-10-2013

-- Description  : Add New Field iQuestionnaireID

------------------------------------------------

-- Modified By  : Mayuri suneth

-- Modified Date: 30-07-2014

-- Description  : log the  tblcourseSchedule values

------------------------------------------------

-- Modified By  : Sewwandi

-- Modified Date: 04 SEP 2014

-- Description  : add iRegistrationEndTimeFrame

------------------------------------------------

-- Modified By  : Sarith

-- Modified Date: 07 Oct 2014

-- Description  : Add to Time Slot roll-back log 

------------------------------------------------

-- Modified By  : Sarith

-- Modified Date: 28 Oct 2014

-- Description  : Add to Alternate Instructor 

------------------------------------------------

-- Modified By  : Mayuri suneth

-- Modified Date: 27 Nov 2014

-- Description  : Add to AbobeTemlateType and AbobeTemplateName

------------------------------------------------

------------------------------------------------

-- Modified By  : Ruwan 

-- Modified Date: 12 June 2015

-- Description  : Add to InstructorEmail varchar(100)

--------------------------------------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 30-10-2015

-- Description  : [NetExam] #60: Monsanto Invite Customization- update addInvite 

--------------------------------------------------------------------------------

-- Modified By  : Sarith Manjula

-- Modified Date: 02-01-2016

-- Description  : Add Webex Join Before Host

--------------------------------------------------------------------------------

-- Modified By  : Mayuri Suneth

-- Modified Date: 07 - 03-2016

-- Description  : [NetExam] #245: Add Venue Information

--------------------------------------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 28 -04-2016

-- Description  : Color Chooser for Class Level - Avigilon Update ClassColor

--------------------------------------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 04-05-2016

-- Description  : In Webconference GotoWebinar remove setting old className 

--------------------------------------------------------------------------------

-- Modified By  : Chinthana Lankathilaka

-- Modified Date: 06-07-2016

-- Description  : Update Secomdary Venue ID For Trac # 346

--------------------------------------------------------------------------------

-- Modified By  : Mayuri Suneth

-- Modified Date: 12-08-2016

-- Description  : Trac ticket  #453-  - update Custom Fild DeliveryLanguage  (Extreme Networks)

--------------------------------------------------------------------------------

-- Modified By  : Sarith Manjula

-- Modified Date: 28-09-2016

-- Description  : Added Webex Telephony

--------------------------------------------------------------------------------

-- Modified By  : Mayu suneth

-- Modified Date: 15-10-2016

-- Description  :Trac ticket  #499- update  MSDExternalID 

--------------------------------------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 01-11-2016

-- Description  : #506: Class Page Customization - Sonus Account -Update ReservedSeatsNote

--------------------------------------------------------------------------------------------------

-- Modified By  : Sarith Manjula

-- Modified Date: 17-11-2016

-- Description  : Added Webex Telephony Support

------------------------------------------------------------------------------------------------------

-- Created By  : Nadee Jayangani

-- Created Date: 21-11-2016

-- Description  :  Trac #496: Modification Logs for Class levels

------------------------------------------------------------------------------------------------------

-- Modified By  : mayuri Suneth

-- Modified Date: 08-12-2016

-- Description  : '#556- Location field to Class page - Added by  mayu 

--------------------------------------------------------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 13 -02-2017

-- Description  :  #608: Class page Enhancement - InfoComm- -Update  Email Description of class

--------------------------------------------------------------------------------------------------

-- Modified By  : Nadee Jayangani

-- Modified Date: 22 -02-2017

-- Description  :  #621: Class level Attendance Cert Enhancement - REACT - Update Cert file

-------------------------------------------------------------------------------------------------

-- Modified By  : Shrideshi Samaraweera

-- Modified Date: 02 -05-2017

-- Description  : Daily Surveys - PLTW

--------------------------------------------------------------------------------------------------

-- Modified By  : Shrideshi Samaraweera

-- Modified Date: 22 -05-2017

-- Description  : End of Course Surveys - PLTW

--------------------------------------------------------------------------------------------------

-- Modified By  : mayuri Suneth

-- Modified Date: 08-09-2017

-- Description  : Trac  #840-  Venue Room Update - Oracle

--------------------------------------------------------------------------------------------------

-- Modified By  : Sanjaya Perera

-- Modified Date: 09-11-2017

-- Description  : WLF-788-82195 - ATPs unable to modify scheduled classes

--------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------

-- Modified By  :  Gimhan Kasun

-- Modified Date: 24-11-2017

-- Description  : ILT Intractive Question implementation  

--------------------------------------------------------------------------------------------------

-- Modified By  :  Gimhan Kasun

-- Modified Date: 20-12-2017

-- Description  : ILT Intractive Question implementation  Add AttendanceCode  

--------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------

-- Modified By  :  Mayuri Suneth

-- Modified Date:  25 Sep 2018

-- Description  :NDFA evaluation app Admin Site Chnages - Check List In ClassLevel 

--------------------------------------------------------------------------------------------------

---- Modified By  : Amal Wijayasinghe 

---- Modified date  : 21-11-2018

---- Description    : SOW #12.4 | Course / Class Schedule Additional Custom Fields

--------------------------------------------------------------------------------------------------

---- Modified By  : Hasitha Mihiran

---- Modified date  : 16-08-2019

---- Description    : Support Ticket NJZ-192-84667

--------------------------------------------------------------------------------------------------

---- Modified By	: Shrideshi Samaraweera

---- Modified date  : 26-06-2019

---- Description    : Email Preferences - Sabre Travel Network

-- ========================================================================================

---- Modified By	: Mayuri Suneth

---- Modified date  : 7 Jan 2020

---- Description    : Add a 2nd-instructor  to class level - LBF-225-41962

--------------------------------------------------------------------------------------------------

-- Modified By:	Nadee Jayangani

-- Modified date:    02-04-2020

-- Description:      NetX-817 | Course Coordination Reminders on PiorityDispatch - PDC

--===============================================================================

---- Modified By	: Hasitha Mihiran

---- Modified date  : 2020-05-29

---- Description    : Add isWebEx Support Ticket ZZP-392-53070

--------------------------------------------------------------------------------------------------

-- Modified By:	Nadee Jayangani

-- Modified date:    12-06-2020

-- Description:     NetX-863 | Date Restriction for Exam on PDC & IAED | P2

--------------------------------------------------------------------------------------------------

-- Modified By:	Nadee Jayangani

-- Modified date: 19-08-2020

-- Description:    9.4 External URL: Increase the number of characters to 500– Partner

--------------------------------------------------------------------------------------------------



-- Modified By:	Chanuri Prabha

-- Modified date:    02-11-2020

-- Description:     Add language ID for OMRON 

--------------------------------------------------------------------------------------------------

-- Modified By:	Gishanda Prabath

-- Modified date:    17-05-2021

-- Description:     V7 Converstion

--------------------------------------------------------------------------------------------------

-- Modified By:	Deshani Tharaka

-- Modified date:    27/10/2021

-- Description:     Modification log max size duplication issue

--------------------------------------------------------------------------------------------------

-- Modified By:	Deshani Tharaka

-- Modified date:    19/04/2023

-- Description:    Add ReadyTechTemplateID

--------------------------------------------------------------------------------------------------

-- Modified By:	Kokila Kawshalya

-- Modified date:    06/05/2025

-- Description:    Add FlexCredit

--------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------

@iScheduleID int,

@iCSID int,

@iTZID int,

@ID varchar(50),

@ProductID nvarchar(50),

@RegistrationURL varchar(500) = NULL,

@dtStart datetime = NULL,

@dtEnd datetime = NULL,

@iVenue int,

@InstructorID char(32),

@EvalCode varchar(100),

@visibility int,

@iStatus int,

@iCertificateRequired int = NULL,

@txtCancellationPolicy nvarchar(max) = NULL,

@nCancellableInHours int = NULL,

@iReservedSeats int = NULL,

@iAllowWaitList int = NULL,

@strWaitListModeType nvarchar(250) = 'Auto',

@iMaxSize int = NULL,

@iMinSize int = NULL,

@btClassFullNotification int = NULL,

@updater_user_id char(32) = NULL,

@className nvarchar(400) = NULL,

@classDescription nvarchar(max) = NULL,

@facultyDescription nvarchar(max) = NULL,

@agendaDescription nvarchar(max) = NULL,

@iRegistrationTermsAndConditions int = 0,

@iATPID int = 0,

@iResourceAvailability int = 1,

@bDisableInstructorConflict bit = 0,

@iNominationFormID int = NULL,

@iQuestionnaireID int = NULL,

@btClassMinNotification bit = 0,

@iRegistrationEndTimeFrame int = NULL,

@bWebConferenceVenue bit = 0,

@isDeleteMeetingSuccess bit = 0,

@AlternateInstructorID char(32),

@AbobeTemlateType int = NULL,

@AbobeTemplateName nvarchar(max) = NULL,

@PrivateClassGUID nvarchar(max) = NULL,

@isClassEndDateAsCompletionDate bit = 0,

--,@strCity NVARCHAR(MAX) = NULL

--,@strState NVARCHAR(MAX) = NULL 

@strSelelctionCriteria nvarchar(max) = NULL,

@InstructorEmail varchar(100) = NULL,

@strClassType nvarchar(200) = NULL,

@RavelloBluePrintID int = NULL,

@AddInvite bit = 0,

@iWebexJoinBeforeHost int = 0,

@AddVenueDetails bit = 0,

@ClassColor nvarchar(20) = NULL,

@iSecondaryVenueID int = NULL,

@DeliveryLanguage nvarchar(max) = NULL,

@iWebexTelephony int = 0,

@MSDExternalID nvarchar(1000) = NULL,

@ReservedSeatsNote nvarchar(500) = NULL,

@iWebexTelephonySupport int = 0,

@Location nvarchar(max) = NULL,

@EmailDesc nvarchar(max) = NULL,

@CertFile varchar(255) = NULL,

@DailySurveyEnabled bit = 0,

@EndOfCourseSurveyEnabled bit = 0,

@nvWebExlink nvarchar(max) = NULL,

@iVenueRoom int = NULL,

@iTrainingCredits int = NULL,

@iILTIntFormID int = NULL,

@nvAttendanceCode nvarchar(200) = NULL,

@EndOfCourseSurveyId int = 0,

@iSelectedCheckList int = 0,

@bGroupEvaluation bit = 0,

@strXilinxCourseProperties xml = NULL,

@bCancellationFees bit = 0,

@bNoShowFees bit = 0,

@isChangedCanclPlcy int = 0,

@isChangedClsDesc int = 0,

@SecondInstructor nvarchar(max) = NULL,

@NotifyCourseCoordinationTeambeforeDays int = NULL,

@isWebEx int = 0,

@iFinalDayExam int = 0,

@LanguageId int = NULL, --Added by Chanuri

@pricingMethod INT = NULL,

@EventId  VARCHAR(50) = NULL, --ON24 Integration 

@WebinarURL  NVARCHAR(2500) = NULL, --ON24 Integration 

@NextClassID int = null,

@ReadyTechTemplateID VARCHAR(50) = NULL, -- ReadyTech Integration -Tharaka 19/04/2023

@MaxWaitListSize int = 0,

@FlexCredit NVARCHAR(50) = NULL

AS

BEGIN

  SET NOCOUNT ON;



  --insert into tblmodclassLog values('1' , 'visibility', @visibility) 



  DECLARE @dtUpdated datetime;

  SET @dtUpdated = GETDATE();

  DECLARE @CurrentMaxSize int;

  DECLARE @iCompany int;

  DECLARE @CurrentReservedSeats int;

  DECLARE @BluePrintID int;

  SET @iCompany = (SELECT

    iCompany

  FROM tblCourse WITH (NOLOCK)

  WHERE iCSID = @iCSID);

  DECLARE @SID int;

  SET @SID = (SELECT

    ISNULL(CLS.iSID, 0)

  FROM tblCoursewareSurvey AS CS WITH (NOLOCK)

  INNER JOIN tblClassSurvey AS CLS WITH (NOLOCK)

    ON CS.iSID = CLS.iSID --determines survey based on incoming courseware

    AND CLS.iCompany = @iCompany

    AND CS.surveyType = 'DS');



  ----------------------------------------ATPs unable to modify scheduled classes - WLF-788-82195 - Sanjaya on 9Nov2017----------------------------

  DECLARE @iRoleID AS int;

  SET @iRoleID = (SELECT

    iRoleID

  FROM tblUserAccess WITH (NOLOCK)

  WHERE iCompany = @iCompany

  AND user_id = @updater_user_id);

  DECLARE @ATPAccess AS int;

  SELECT

    @ATPAccess = COUNT(*)

  FROM tblRoleCompanyModules WITH (NOLOCK)

  INNER JOIN tblCompanyModule WITH (NOLOCK)

    ON tblRoleCompanyModules.iCompanyModuleID = tblCompanyModule.iCompanyModuleID

  WHERE NEModuleID = 307

  AND iCompany = @iCompany

  AND iRoleID = @iRoleID;

  ----------------------------------------ATPs unable to modify scheduled classes - WLF-788-82195 - Sanjaya on 9Nov2017----------------------------





  DECLARE @VenueName NVARCHAR(1000)

  DECLARE @VenueCountry NVARCHAR(1000)

  DECLARE @VenueStreetAddress NVARCHAR(1000)

  DECLARE @VenueCity NVARCHAR(1000)

  DECLARE @VenueState NVARCHAR(1000)

  DECLARE @TZName NVARCHAR(1000)

  DECLARE @InstructorName NVARCHAR(1000)

  DECLARE @Modality NVARCHAR(1000)

  DECLARE @LanguageName NVARCHAR(1000)





  SELECT @VenueName =VenueName,

  @VenueCountry = Country,

  @VenueStreetAddress =StreetAddress,

  @VenueCity =City,

  @VenueState = State,

  @Modality = ( Case when tblVenueCategories.CategoryName = 'Web Conference' THEN 'ClassTypeVirtualClassroom' else 'ClassTypeClassroom' END  )

  FROM tblVenues  INNER JOIN tblVenueCategories  ON tblVenues.iVenueCategoryID = tblVenueCategories.iCategoryID

  WHERE VenueID = @iVenue AND CompanyID =@iCompany



  SELECT @TZName = Abbr FROM [dbo].[tblTimeZones] WHERE TZID = @iTZID

  SELECT @LanguageName = szDisplayName FROM tblLanguages WHERE iLangID = @LanguageId



 SELECT @InstructorName = fullname  FROM tblusers where user_id  = @InstructorID



  ---------------------------------------Gishanda ---------------------------------------------------------



  DECLARE @courseSchedule table (

	[iScheduleID] [int], [iCSID] [int] NOT NULL, [iTZID] [int] NULL, [dtStart] [datetime] NULL, [dtEnd] [datetime] NULL, [iVenueID] [int] NULL, [instructor_id] [char](32) NULL,

	[visibility] [int] NOT NULL, [status] [int] NOT NULL, [ID] [varchar](50) NULL, [ProductID] [nvarchar](50) NULL, [maxSize] [int] NULL, [minSize] [int] NULL, [TARContact] [varchar](100) NULL,

	[PrimaryContact] [varchar](100) NULL, [PrimaryContactEmail] [varchar](100) NULL, [PrimaryContactPhone] [varchar](50) NULL, [TechContact] [varchar](100) NULL, [TechEmail] [varchar](50) NULL,

	[TechPhone] [varchar](50) NULL, [NumStudents] [int] NULL, [btEnoughChairs] [int] NOT NULL, [btAdditionalSpace] [int] NOT NULL, [btEnoughPower] [int] NOT NULL, [btNetworkWiring] [int] NOT NULL,

	[btWorkStationsProvided] [int] NOT NULL, [btInternetAccess] [int] NOT NULL, [btIPAllocation] [int] NOT NULL, [btProjectorNeeded] [int] NOT NULL, [btVisaRequired] [int] NOT NULL, 

	[btInformationSent] [int] NOT NULL, [iVCID] [int] NULL, [SAP] [varchar](100) NULL, [SKU] [varchar](50) NULL, [btTravelBillable] [int] NOT NULL, [SalesRepresentative] [varchar](100) NULL, 

	[btCollateralShipped] [int] NOT NULL, [btEquipmentShipped] [int] NOT NULL, [btTarSent] [int] NOT NULL, [btCertificateSent] [int] NOT NULL, [Notes] [text] NULL, [EvalCode] [varchar](100) NULL, 

	[btCertificateRequired] [int] NULL, [iClassCost] [float] NULL, [btSitePreQualified] [int] NOT NULL, [btEquipmentRented] [int] NOT NULL, [btShippingBillable] [int] NOT NULL, 

	[btStudent5DayReminder] [int] NULL, [btStudent3DayReminder] [int] NULL, [btStudent1DayReminder] [int] NULL, [btInstructor5DayReminder] [int] NULL, [btInstructor3DayReminder] [int] NULL, 

	[btInstructor1DayReminder] [int] NULL, [RegistrationURL] [varchar](500) NULL, [btStudent2WeeksReminder] [int] NULL, [btStudent4WeeksFollowUp] [int] NULL, [btStudent3MonthFollowUp] [int] NULL,

	[btInstructor1DayEval] [int] NULL, [btInstructor2DayEval] [int] NULL, [btStudent3DaysAfterEval] [int] NULL, [btInstructor2WeeksReminder] [int] NULL, [iReservedSeats] [int] NULL, 

	[btAllowWaitList] [int] NULL, [iAllowedReplacementPeriod] [int] NULL, [btStudent3DaysAfterEvalReminder] [int] NULL, [dtCreated] [datetime] NULL, [creator_user_id] [char](32) NULL, 

	[dtUpdated] [datetime] NULL, [updater_user_id] [char](32) NULL, [txtCancellationPolicy] [nvarchar](max) NULL, [nCancellableInHours] [int] NULL, [PO] [varchar](100) NULL, 

	[NotesToStudent] [nvarchar](max) NULL, [btStudentEnrollmentEmail] [int] NULL, [btStudentWithdrawalEmail] [int] NULL, [btManagerEnrollmentEmail] [int] NULL, [btManagerWithdrawalEmail] [int] NULL, 

	[btClassFullNotification] [int] NULL, [iQuestionnaireStatus] [int] NOT NULL, [iAllowRoomates] [int] NULL, [iCustomMessageId] [int] NULL, [ClassName] [nvarchar](4000) NULL, 

	[dtFinalized] [datetime] NULL, [btRegistrationTermsAndConditions] [int] NULL, [MeetingID] [bigint] NULL, [AudienceURL] [nvarchar](max) NULL, [PresenterURL] [nvarchar](max) NULL, [iATPID] [int] NULL,

	[LiveMeetingID] [varchar](100) NULL, [uniqueGoToMeetingID] [varchar](100) NULL, [bitRetrievedAttendance] [bit] NULL, [audienceInviteText] [varchar](8000) NULL, 

	[presenterInviteText] [varchar](8000) NULL, [AttendeePassword] [varchar](50) NULL, [PresenterPassword] [varchar](50) NULL, [ClassDescription] [nvarchar](max) NULL, 

	[iResourceAvailability] [int] NULL, [bDisableInstructorConflict] [bit] NULL, [iQuestionnaireID] [int] NULL, [iNominationFormID] [int] NULL, [btClassMinNotification] [bit] NULL, 

	[TrainingGuestToken] [varchar](50) NULL, [btStudent7DayReminder] [int] NULL, [btStudent3WeeksReminder] [int] NULL, [FacultyDescription] [nvarchar](max) NULL, 

	[AgendaDescription] [nvarchar](max) NULL, [btStudent1DaySurveyReminder] [int] NULL, [btStudent10DaySurveyReminder] [int] NULL, [sfdcClassId] [varchar](50) NULL, [CancelVenueID] [int] NULL,

	[strModeType] [varchar](50) NULL, [btStudent3MonthsSurveyFollowUpReminder] [int] NULL, [iRegistrationEndTimeFrame] [int] NULL, [TrainingKey] [varchar](50) NULL, 

	[alternateInstructor_id] [char](32) NULL, [PrivateClassToken] [nvarchar](max) NULL, [AbobeTemlateType] [int] NULL, [AbobeTemplateName] [nvarchar](max) NULL, 

	[bIsClassEndDateAsCompletionDate] [bit] NULL, [State] [nvarchar](max) NULL, [ClassCity] [nvarchar](max) NULL, [EligibilityCriteria] [nvarchar](max) NULL, [InstructorEmail] [varchar](100) NULL,

	[nvClassType] [nvarchar](200) NULL, [AttachSurvey] [int] NULL, [BluePrintID] [int] NULL, [btStudent60DaysFollowUp] [int] NULL, [addInvite] [bit] NULL, [bRequiredClassSurvey] [bit] NULL, 

	[btInstructor1DaySigninSheet] [int] NULL, [iWebexJoinBeforeHost] [int] NULL, [AddVenueDetails] [bit] NULL, [classColor] [nvarchar](20) NULL, [iSecondaryVenueID] [int] NULL, 

	[templateName] [nvarchar](250) NULL, [MSDExternalID] [varchar](50) NULL, [btInstructorScheduleAssignment] [int] NULL, [DeliveryLanguage] [nvarchar](max) NULL, [RepeatType] [varchar](10) NULL, 

	[iWebexTelephony] [int] NULL, [ReservedSeatsNote] [nvarchar](500) NULL, [iWebexTelephonySupport] [int] NULL, [Location] [nvarchar](max) NULL, [EmailDesc] [nvarchar](max) NULL, 

	[CertFile] [varchar](255) NULL, [btNotifyInstructorsOfNewEnrollment] [int] NULL, [DailySurveyEnabled] [bit] NULL, [privateClassEmailsToSend] [nvarchar](max) NULL, [EndOfCourseSurveyEnabled] [bit] NULL, 

	[nvWebExlink] [nvarchar](max) NULL, [VenueRoomId] [int] NULL, [ILTInteractiveFormID] [int] NULL, [TrainingCredits] [int] NULL, [isReservedforUG] [int] NULL, [UserGroupId] [nvarchar](max) NULL, 

	[isPurchaseSeats] [int] NULL, [Comments] [varchar](200) NULL, [SfdcOrgId] [varchar](100) NULL, [isOrderApproved] [int] NULL, [CoreTrainingSurvey] [bit] NULL, [isSurveyRequired] [bit] NULL, 

	[isGroupEvaluation] [bit] NULL, [iCheckListID] [int] NULL, [ClassPreparationActivities] [nvarchar](1000) NULL, [PostClassActivities] [nvarchar](1000) NULL, [InstructorComments] [nvarchar](1000) NULL, 

	[isChangedCanclPlcy] [int] NULL, [isChangedClsDesc] [int] NULL, [btStudentRemovalEmail] [int] NULL, [btClassCancellationEmail] [int] NULL, [btSurveyReminderEmail] [int] NULL, [btWaitListReminderEmail] [int] NULL, 

	[btEndOfTrainingInstructorSurveyReport] [int] NULL, [btClassCancellationEmailInstructor] [int] NULL, [btInstructorChangedEmail] [int] NULL, [btStudentWithdrawalEmailContact] [int] NULL, 

	[btStudent1DayReminderContact] [int] NULL, [btStudent3DayReminderContact] [int] NULL, [btClassAssignmentToContact] [int] NULL, [btClassCancellationContact] [int] NULL, 

	[btStudentEnrollmentEmailContact] [int] NULL, [btVoucherBalanceReminderContact] [int] NULL, [btVoucherOrderConfirmationContact] [int] NULL, [btScheduleInvitationToEligibleUsersContact] [int] NULL,

	[btManagerEnrollmentEmailContact] [int] NULL, [bCancellationFees] [bit] NULL, [bNoShowFees] [bit] NULL, [SecondInstructor] [nvarchar](max) NULL, [btInstructor1DayBeforeStartReminder] [int] NULL, 

	[btPrimaryContact3DayBeforeStartReminder] [int] NULL, [btPrimaryContact1WeekBeforeStartReminder] [int] NULL, [bEnableGradebook] [bit] NULL, [iCourseCoordinationTeambeforeDays] [int] NULL, 

	[btStudent2WeeksFollowUp] [int] NULL, [isWebEx] [int] NULL, [MSTeamsMeetingID] [varchar](max) NULL, [iFinalDayExam] [int] NULL, [languageId] [int] NULL, [MeetingIdZoom] [nvarchar](max) NULL, 

	[btWheelchairAccess] [int] NULL, [pricingMethod] [int] NULL, [MaxWaitListSize] [int] NULL, [FlexCredit] [nvarchar](50) NULL

)

	

	INSERT INTO @courseSchedule

			   ([iScheduleID],[iCSID] ,[iTZID] ,[dtStart] ,[dtEnd] ,[iVenueID] ,[instructor_id] ,[visibility] ,[status] ,[ID] ,[ProductID] ,[maxSize] ,[minSize] ,[TARContact] ,[PrimaryContact] ,

			   [PrimaryContactEmail] ,[PrimaryContactPhone] ,[TechContact] ,[TechEmail] ,[TechPhone] ,[NumStudents] ,[btEnoughChairs] ,[btAdditionalSpace] ,[btEnoughPower] ,[btNetworkWiring] ,

			   [btWorkStationsProvided] ,[btInternetAccess] ,[btIPAllocation] ,[btProjectorNeeded] ,[btVisaRequired] ,[btInformationSent] ,[iVCID] ,[SAP] ,[SKU] ,[btTravelBillable] ,

			   [SalesRepresentative] ,[btCollateralShipped] ,[btEquipmentShipped] ,[btTarSent] ,[btCertificateSent] ,[Notes] ,[EvalCode] ,[btCertificateRequired] ,[iClassCost] ,[btSitePreQualified] ,

			   [btEquipmentRented] ,[btShippingBillable] ,[btStudent5DayReminder] ,[btStudent3DayReminder] ,[btStudent1DayReminder] ,[btInstructor5DayReminder] ,[btInstructor3DayReminder] ,

			   [btInstructor1DayReminder] ,[RegistrationURL] ,[btStudent2WeeksReminder] ,[btStudent4WeeksFollowUp] ,[btStudent3MonthFollowUp] ,[btInstructor1DayEval] ,[btInstructor2DayEval] ,

			   [btStudent3DaysAfterEval] ,[btInstructor2WeeksReminder] ,[iReservedSeats] ,[btAllowWaitList] ,[iAllowedReplacementPeriod] ,[btStudent3DaysAfterEvalReminder] ,[dtCreated] ,

			   [creator_user_id] ,[dtUpdated] ,[updater_user_id] ,[txtCancellationPolicy] ,[nCancellableInHours] ,[PO] ,[NotesToStudent] ,[btStudentEnrollmentEmail] ,[btStudentWithdrawalEmail] ,

			   [btManagerEnrollmentEmail] ,[btManagerWithdrawalEmail] ,[btClassFullNotification] ,[iQuestionnaireStatus] ,[iAllowRoomates] ,[iCustomMessageId] ,[ClassName] ,[dtFinalized] ,

			   [btRegistrationTermsAndConditions] ,[MeetingID] ,[AudienceURL] ,[PresenterURL] ,[iATPID] ,[LiveMeetingID] ,[uniqueGoToMeetingID] ,[bitRetrievedAttendance] ,[audienceInviteText] ,

			   [presenterInviteText] ,[AttendeePassword] ,[PresenterPassword] ,[ClassDescription] ,[iResourceAvailability] ,[bDisableInstructorConflict] ,[iQuestionnaireID] ,[iNominationFormID] ,

			   [btClassMinNotification] ,[TrainingGuestToken] ,[btStudent7DayReminder] ,[btStudent3WeeksReminder] ,[FacultyDescription] ,[AgendaDescription] ,[btStudent1DaySurveyReminder] ,

			   [btStudent10DaySurveyReminder] ,[sfdcClassId] ,[CancelVenueID] ,[strModeType] ,[btStudent3MonthsSurveyFollowUpReminder] ,[iRegistrationEndTimeFrame] ,[TrainingKey] ,

			   [alternateInstructor_id] ,[PrivateClassToken] ,[AbobeTemlateType] ,[AbobeTemplateName] ,[bIsClassEndDateAsCompletionDate] ,[State] ,[ClassCity] ,[EligibilityCriteria] ,

			   [InstructorEmail] ,[nvClassType] ,[AttachSurvey] ,[BluePrintID] ,[btStudent60DaysFollowUp] ,[addInvite] ,[bRequiredClassSurvey] ,[btInstructor1DaySigninSheet] ,[iWebexJoinBeforeHost] ,

			   [AddVenueDetails] ,[classColor] ,[iSecondaryVenueID] ,[templateName] ,[MSDExternalID] ,[btInstructorScheduleAssignment] ,[DeliveryLanguage] ,[RepeatType] ,[iWebexTelephony] ,

			   [ReservedSeatsNote] ,[iWebexTelephonySupport] ,[Location] ,[EmailDesc] ,[CertFile] ,[btNotifyInstructorsOfNewEnrollment] ,[DailySurveyEnabled] ,[privateClassEmailsToSend] ,

			   [EndOfCourseSurveyEnabled] ,[nvWebExlink] ,[VenueRoomId] ,[ILTInteractiveFormID] ,[TrainingCredits] ,[isReservedforUG] ,[UserGroupId] ,[isPurchaseSeats] ,[Comments] ,[SfdcOrgId] ,

			   [isOrderApproved] ,[CoreTrainingSurvey] ,[isSurveyRequired] ,[isGroupEvaluation] ,[iCheckListID] ,[ClassPreparationActivities] ,[PostClassActivities] ,[InstructorComments] ,

			   [isChangedCanclPlcy] ,[isChangedClsDesc] ,[btStudentRemovalEmail] ,[btClassCancellationEmail] ,[btSurveyReminderEmail] ,[btWaitListReminderEmail] ,[btEndOfTrainingInstructorSurveyReport] ,

			   [btClassCancellationEmailInstructor] ,[btInstructorChangedEmail] ,[btStudentWithdrawalEmailContact] ,[btStudent1DayReminderContact] ,[btStudent3DayReminderContact] ,[btClassAssignmentToContact] ,

			   [btClassCancellationContact] ,[btStudentEnrollmentEmailContact] ,[btVoucherBalanceReminderContact] ,[btVoucherOrderConfirmationContact] ,[btScheduleInvitationToEligibleUsersContact] ,

			   [btManagerEnrollmentEmailContact] ,[bCancellationFees] ,[bNoShowFees] ,[SecondInstructor] ,[btInstructor1DayBeforeStartReminder] ,[btPrimaryContact3DayBeforeStartReminder] ,

			   [btPrimaryContact1WeekBeforeStartReminder] ,[bEnableGradebook] ,[iCourseCoordinationTeambeforeDays] ,[btStudent2WeeksFollowUp] ,[isWebEx] ,[MSTeamsMeetingID] ,[iFinalDayExam] ,[languageId] ,

			   [MeetingIdZoom] ,[btWheelchairAccess] ,[pricingMethod], [MaxWaitListSize], [FlexCredit])

	SELECT	[iScheduleID] ,[iCSID] ,[iTZID] ,[dtStart] ,[dtEnd] ,[iVenueID] ,[instructor_id] ,[visibility] ,[status] ,[ID] ,[ProductID] ,[maxSize] ,[minSize] ,[TARContact] ,[PrimaryContact] ,

			[PrimaryContactEmail] ,[PrimaryContactPhone] ,[TechContact] ,[TechEmail] ,[TechPhone] ,[NumStudents] ,[btEnoughChairs] ,[btAdditionalSpace] ,[btEnoughPower] ,[btNetworkWiring] ,[btWorkStationsProvided] ,

			[btInternetAccess] ,[btIPAllocation] ,[btProjectorNeeded] ,[btVisaRequired] ,[btInformationSent] ,[iVCID] ,[SAP] ,[SKU] ,[btTravelBillable] ,[SalesRepresentative] ,[btCollateralShipped] ,

			[btEquipmentShipped] ,[btTarSent] ,[btCertificateSent] ,[Notes] ,[EvalCode] ,[btCertificateRequired] ,[iClassCost] ,[btSitePreQualified] ,[btEquipmentRented] ,[btShippingBillable] ,

			[btStudent5DayReminder] ,[btStudent3DayReminder] ,[btStudent1DayReminder] ,[btInstructor5DayReminder] ,[btInstructor3DayReminder] ,[btInstructor1DayReminder] ,[RegistrationURL] ,

			[btStudent2WeeksReminder] ,[btStudent4WeeksFollowUp] ,[btStudent3MonthFollowUp] ,[btInstructor1DayEval] ,[btInstructor2DayEval] ,[btStudent3DaysAfterEval] ,[btInstructor2WeeksReminder] ,

			[iReservedSeats] ,[btAllowWaitList] ,[iAllowedReplacementPeriod] ,[btStudent3DaysAfterEvalReminder] ,[dtCreated] ,[creator_user_id] ,[dtUpdated] ,[updater_user_id] ,[txtCancellationPolicy] ,

			[nCancellableInHours] ,[PO] ,[NotesToStudent] ,[btStudentEnrollmentEmail] ,[btStudentWithdrawalEmail] ,[btManagerEnrollmentEmail] ,[btManagerWithdrawalEmail] ,[btClassFullNotification] ,

			[iQuestionnaireStatus] ,[iAllowRoomates] ,[iCustomMessageId] ,[ClassName] ,[dtFinalized] ,[btRegistrationTermsAndConditions] ,[MeetingID] ,[AudienceURL] ,[PresenterURL] ,[iATPID] ,[LiveMeetingID] ,

			[uniqueGoToMeetingID] ,[bitRetrievedAttendance] ,[audienceInviteText] ,[presenterInviteText] ,[AttendeePassword] ,[PresenterPassword] ,[ClassDescription] ,[iResourceAvailability] ,

			[bDisableInstructorConflict] ,[iQuestionnaireID] ,[iNominationFormID] ,[btClassMinNotification] ,[TrainingGuestToken] ,[btStudent7DayReminder] ,[btStudent3WeeksReminder] ,[FacultyDescription] ,

			[AgendaDescription] ,[btStudent1DaySurveyReminder] ,[btStudent10DaySurveyReminder] ,[sfdcClassId] ,[CancelVenueID] ,[strModeType] ,[btStudent3MonthsSurveyFollowUpReminder] ,

			[iRegistrationEndTimeFrame] ,[TrainingKey] ,[alternateInstructor_id] ,[PrivateClassToken] ,[AbobeTemlateType] ,[AbobeTemplateName] ,[bIsClassEndDateAsCompletionDate] ,[State] ,[ClassCity] ,

			[EligibilityCriteria] ,[InstructorEmail] ,[nvClassType] ,[AttachSurvey] ,[BluePrintID] ,[btStudent60DaysFollowUp] ,[addInvite] ,[bRequiredClassSurvey] ,[btInstructor1DaySigninSheet] ,

			[iWebexJoinBeforeHost] ,[AddVenueDetails] ,[classColor] ,[iSecondaryVenueID] ,[templateName] ,[MSDExternalID] ,[btInstructorScheduleAssignment] ,[DeliveryLanguage] ,[RepeatType] ,[iWebexTelephony] ,

			[ReservedSeatsNote] ,[iWebexTelephonySupport] ,[Location] ,[EmailDesc] ,[CertFile] ,[btNotifyInstructorsOfNewEnrollment] ,[DailySurveyEnabled] ,[privateClassEmailsToSend] ,

			[EndOfCourseSurveyEnabled] ,[nvWebExlink] ,[VenueRoomId] ,[ILTInteractiveFormID] ,[TrainingCredits] ,[isReservedforUG] ,[UserGroupId] ,[isPurchaseSeats] ,[Comments] ,[SfdcOrgId] ,[isOrderApproved] ,

			[CoreTrainingSurvey] ,[isSurveyRequired] ,[isGroupEvaluation] ,[iCheckListID] ,[ClassPreparationActivities] ,[PostClassActivities] ,[InstructorComments] ,[isChangedCanclPlcy] ,[isChangedClsDesc] ,

			[btStudentRemovalEmail] ,[btClassCancellationEmail] ,[btSurveyReminderEmail] ,[btWaitListReminderEmail] ,[btEndOfTrainingInstructorSurveyReport] ,[btClassCancellationEmailInstructor] ,

			[btInstructorChangedEmail] ,[btStudentWithdrawalEmailContact] ,[btStudent1DayReminderContact] ,[btStudent3DayReminderContact] ,[btClassAssignmentToContact] ,[btClassCancellationContact] ,

			[btStudentEnrollmentEmailContact] ,[btVoucherBalanceReminderContact] ,[btVoucherOrderConfirmationContact] ,[btScheduleInvitationToEligibleUsersContact] ,[btManagerEnrollmentEmailContact] ,

			[bCancellationFees] ,[bNoShowFees] ,[SecondInstructor] ,[btInstructor1DayBeforeStartReminder] ,[btPrimaryContact3DayBeforeStartReminder] ,[btPrimaryContact1WeekBeforeStartReminder] ,

			[bEnableGradebook] ,[iCourseCoordinationTeambeforeDays] ,[btStudent2WeeksFollowUp] ,[isWebEx] ,[MSTeamsMeetingID] ,[iFinalDayExam] ,[languageId] ,[MeetingIdZoom] ,[btWheelchairAccess] ,

			[pricingMethod], [MaxWaitListSize], [FlexCredit]

	FROM tblCourseSchedule

	WHERE iScheduleID = @iScheduleID;



  -----------------------------------------Gishanda ---------------------------------------------------------



  IF @DailySurveyEnabled = 1

  BEGIN

    IF @SID > 0

    BEGIN

      IF NOT EXISTS (SELECT

          iSID

        FROM tblClassSurveyJoiner WITH (NOLOCK)

        WHERE iSID = @SID

        AND iScheduleID = @iScheduleID)

      BEGIN

        INSERT INTO tblClassSurveyJoiner (iCWID,

        iScheduleID,

        iSID)

          ----VALUES (6269,@iScheduleID,17)   

          VALUES (@iCSID, @iScheduleID, @SID);

      END;

    END;

  END;

  ELSE

  BEGIN

    IF EXISTS (SELECT

        iSID

      FROM tblClassSurveyJoiner WITH (NOLOCK)

      WHERE iSID = @SID

      AND iScheduleID = @iScheduleID)

    BEGIN

      DELETE FROM tblClassSurveyJoiner

      WHERE iSID = @SID

        AND iScheduleID = @iScheduleID;

    END;

  END;

  --End of Course survey



  DECLARE @ECSID int;

  --   SET @ECSID =

  --(

  --	SELECT ISNULL(CLS.iSID, 0)

  --	FROM tblCoursewareSurvey AS CS

  --		 INNER JOIN tblClassSurvey AS CLS ON CS.iSID = CLS.iSID --determines survey based on incoming courseware

  --											 AND CLS.iCompany = @iCompany

  --											 AND CS.surveyType = 'ECS'

  --);



  SET @ECSID = (SELECT

    ISNULL(CSJ.iSID, 0)

  FROM tblclasssurveyjoiner CSJ WITH (NOLOCK)

  WHERE CSJ.iScheduleID = @iScheduleID

  AND CSJ.iSID IN (SELECT

    CS.iSID

  FROM tblCoursewareSurvey CS WITH (NOLOCK)

  WHERE iCompany = @iCompany

  AND CS.surveyType = 'ECS'));

  IF (@EndOfCourseSurveyEnabled = 1)

  BEGIN

    -- IF(@ECSID >0)

    --BEGIN

    IF (@ECSID > 0)

    BEGIN

      DELETE FROM tblClassSurveyJoiner

      WHERE iScheduleID = @iScheduleID

        AND iSID = @ECSID;

    END;

    --IF NOT EXISTS(SELECT iSID FROM tblClassSurveyJoiner WHERE iSID=@ECSID AND  iScheduleID=@iScheduleID)

    --BEGIN

    INSERT INTO tblClassSurveyJoiner (iCWID,

    iScheduleID,

    iSID)

      VALUES (@iCSID, @iScheduleID, @EndOfCourseSurveyId);

    IF ((SELECT

        szName

      FROM tblCoursewareSurvey WITH (NOLOCK)

      WHERE iSID = @EndOfCourseSurveyId)

      IN ('2019 ONLINE Core Training Evaluation', '2019 ONSITE Core Training Evaluation'))

    BEGIN

      UPDATE tblcourseSchedule

      SET CoreTrainingSurvey = 1

      WHERE iScheduleID = @iScheduleID;

    END;

    ELSE

    BEGIN

      UPDATE tblcourseSchedule

      SET CoreTrainingSurvey = 0

      WHERE iScheduleID = @iScheduleID;

    END;

  -- END

  END;

  ELSE

  BEGIN

    IF EXISTS (SELECT

        iSID

      FROM tblClassSurveyJoiner WITH (NOLOCK)

      WHERE iSID = @ECSID

      AND iScheduleID = @iScheduleID)

    BEGIN

      DELETE FROM tblClassSurveyJoiner

      WHERE iScheduleID = @iScheduleID;

      UPDATE tblcourseSchedule

      SET CoreTrainingSurvey = 0

      WHERE iScheduleID = @iScheduleID;

    END;

  END;



  --insert into tblmodclassLog values('2' , 'visibility', @visibility) 



  --Begin log for class 

  DECLARE @prevalue nvarchar(1000);

  DECLARE @postvalue nvarchar(1000);

  DECLARE @prevalueDate datetime;

  DECLARE @postvalueDate datetime;

  DECLARE @field varchar(50);

  -- @dtUpdated

  -- name  -- mayuri



  SET @field = 'className';

  SELECT

    @prevalue = classname

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @className;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  --Alternate Instructor



  SET @field = 'Alternate Instructor';

  SELECT

    @prevalue = alternateInstructor_id

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @AlternateInstructorID;

  IF @prevalue <> @postvalue

  BEGIN

    SET @prevalue = (SELECT

      fullname

    FROM tblusers

    WHERE user_id = @prevalue);

    SET @postvalue = (SELECT

      fullname

    FROM tblusers WITH (NOLOCK)

    WHERE user_id = @AlternateInstructorID);

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  -- Disable Instructor Conflict Checks



  SET @field = 'DisableInstructorConflict';

  SELECT

    @prevalue = bDisableInstructorConflict

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @bDisableInstructorConflict;

  IF CAST(@prevalue AS bit) <> CAST(@postvalue AS bit)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  -- WaitListModeType

  SET @field = 'WaitListModeType';

  SELECT

    @prevalue = strModeType

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @strWaitListModeType;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  -- ClassMinNotification

  SET @field = 'ClassMinNotification';

  SELECT

    @prevalue = btClassMinNotification

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @btClassMinNotification;

  IF CAST(@prevalue AS bit) <> CAST(@postvalue AS bit)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Display Invite';

  SELECT

    @prevalue = addInvite

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @AddInvite;

  IF CAST(@prevalue AS bit) <> CAST(@postvalue AS bit)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'ClassEndDateAsCompletionDate';

  SELECT

    @prevalue = bIsClassEndDateAsCompletionDate

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @isClassEndDateAsCompletionDate;

  IF CAST(@prevalue AS bit) <> CAST(@postvalue AS bit)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Set Venue Details';

  SELECT

    @prevalue = AddVenueDetails

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @AddVenueDetails;

  IF CAST(@prevalue AS bit) <> CAST(@postvalue AS bit)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Notify Course-Coordination-Team';

  DECLARE @NCNamefield varchar(50);

  SET @NCNamefield = 'NotifyCourseCoordinationBeforeDay';

  SELECT

    @prevalue = iCourseCoordinationTeambeforeDays

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @NotifyCourseCoordinationTeambeforeDays;





  IF LEN(ISNULL(@prevalue, '')) <> LEN(ISNULL(@postvalue, ''))

  BEGIN



    DECLARE @NCTprevalue int;

    DECLARE @NCTpostvalue int;

    IF (LEN(ISNULL(@prevalue, '')) = 0)

      AND (LEN(ISNULL(@postvalue, '')) > 0)

    BEGIN

      SET @NCTprevalue = 0;

      SET @NCTpostvalue = 1;

      EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                           @iCSID,

                                           @iScheduleID,

                                           NULL,

                                           @updater_user_id,

                                           @dtUpdated,

                                           @field,

                                           @NCTprevalue,

                                           @NCTpostvalue;

      EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                           @iCSID,

                                           @iScheduleID,

                                           NULL,

                                           @updater_user_id,

                                           @dtUpdated,

                                           @NCNamefield,

                                           @prevalue,

                                           @postvalue;

    END;

    IF (LEN(ISNULL(@prevalue, '')) > 0)

      AND (LEN(ISNULL(@postvalue, '')) = 0)

    BEGIN

      SET @NCTprevalue = 1;

      SET @NCTpostvalue = 0;

      EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                           @iCSID,

                                           @iScheduleID,

                                           NULL,

      @updater_user_id,

                                           @dtUpdated,

                                           @field,

                                           @NCTprevalue,

                                           @NCTpostvalue;

      EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                           @iCSID,

                                           @iScheduleID,

                                           NULL,

                                           @updater_user_id,

                                           @dtUpdated,

                                           @NCNamefield,

                                           @prevalue,

                                           @postvalue;

    END;

  END;

  IF LEN(ISNULL(@prevalue, '')) > 0

    AND LEN(ISNULL(@postvalue, '')) > 0

    AND (CAST(@prevalue AS int) <> CAST(@postvalue AS int))

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @NCNamefield,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'class Color';

  SELECT

    @prevalue = classColor

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @ClassColor;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Location';

  SELECT

    @prevalue = Location

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @Location;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Email Desc';

  SELECT

    @prevalue = EmailDesc

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @EmailDesc;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Instructor Email';

  SELECT

    @prevalue = InstructorEmail

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @InstructorEmail;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'External Registration URL';

  SELECT

    @prevalue = RegistrationURL

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @RegistrationURL;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Resource Availability';

  SELECT

    @prevalue = iResourceAvailability

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iResourceAvailability;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Cancellable Hours';

  SELECT

    @prevalue = nCancellableInHours

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @nCancellableInHours;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    SET @prevalue = ('Days- ' + CAST((@prevalue / 24) AS varchar(200)) + ' Hour- ' + CAST((@prevalue % 24) AS varchar(200)));

    SET @postvalue = ('Days- ' + CAST((@postvalue / 24) AS varchar(200)) + ' Hour- ' + CAST((@postvalue % 24) AS varchar(200)));

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  SET @field = 'Registration End Time Frame';

  SELECT

    @prevalue = iRegistrationEndTimeFrame

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iRegistrationEndTimeFrame;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  SET @field = 'TrainingCredits';

  SELECT

    @prevalue = TrainingCredits

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iTrainingCredits;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'ATP';

  SELECT

    @prevalue = iATPID

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iATPID;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    SET @prevalue = (SELECT

      Name

    FROM tblATP

    WHERE iATPID = CAST(@prevalue AS int)

    AND iCompany = @iCompany);

    SET @postvalue = (SELECT

      Name

    FROM tblATP

    WHERE iATPID = CAST(@postvalue AS int)

    AND iCompany = @iCompany);

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  SET @field = 'TimeZone';

  SELECT

    @prevalue = iTZID

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iTZID;

  IF @prevalue <> @postvalue

  BEGIN

    DECLARE @preTimeZoneName varchar(500);

    DECLARE @TimeZoneName varchar(500);

    SET @preTimeZoneName = (SELECT

      TimeZoneName

    FROM tblTimeZones WITH (NOLOCK)

    WHERE TZID = @prevalue);

    SET @TimeZoneName = (SELECT

      TimeZoneName

    FROM tblTimeZones WITH (NOLOCK)

    WHERE TZID = @iTZID);

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @preTimeZoneName,

                                         @TimeZoneName;

  END;



  --insert into tblmodclassLog values('3' , 'visibility', @visibility) 



  SET @field = '2nd Instructor';

  SELECT

    @prevalue = SecondInstructor

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @SecondInstructor;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;







  SET @field = 'Eval Code';

  SELECT

    @prevalue = EvalCode

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @EvalCode;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  --  ProductID = @ProductID, 



  SET @field = 'Product ID';

  SELECT

    @prevalue = ProductID

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @ProductID;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

        NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;





  SET @field = 'Certificates Required';

  SELECT

    @prevalue = btCertificateRequired

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iCertificateRequired;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  SET @field = 'Max size';

  SELECT

    @prevalue = maxsize

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iMaxSize;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;





 IF (@iCompany = 11299)  --- Hexagon eCommerce Project - Product Updates -- mayu - 17102023

  BEGIN



  INSERT INTO [dbo].[tblClassEvents]

           ([Status]

           ,[CourseID]

           ,[ClassID]

           ,[Modality]

           ,[TimeZone]

           ,[VenueCountry]

           ,[StartDate]

           ,[EndDate]

           ,[availableseats]

           ,[VenueStreetAddress]

           ,[VenueCity]

           ,[VenueStateProvince]

           ,[VenueName]

           ,[PrimaryInstructor]

           ,[Language]

           ,[iCompany]

           ,[dtCreate]

           --,[dtUpdate]

           --,[szReason]

           ,[ClassName]

           ,[ClassDescription]

		   ,comment)

     VALUES(

			 1,

			 @iCSID,

			 @iScheduleID,

			 @Modality,

			 @TZName,

			 @VenueCountry,

			 @dtStart,

			 @dtEnd,

			 @iMaxSize,--*

			 @VenueStreetAddress,

			 @VenueCity,

			 @VenueState,

			 @VenueName,

			 @InstructorName,

			 @LanguageName,

			 @iCompany,

			 GETDATE(),

			 @className,

			 @classDescription,

			 'class max size changes'

	  )





  END



  END;

  --   minsize = @iMinSize,



  SET @field = 'Min size';

  SELECT

    @prevalue = minsize

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iMinSize;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  -- btClassFullNotification = @btClassFullNotification,



  SET @field = 'Class Full Notification';

  SELECT

    @prevalue = btClassFullNotification

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @btClassFullNotification;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                        @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  --  btAllowWaitList = @iAllowWaitList,



  SET @field = 'Allow Wait List';

  SELECT

    @prevalue = btAllowWaitList

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iAllowWaitList;

  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  --- enad mayu







  SET @field = 'status';

  SELECT

    @prevalue = STATUS

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iStatus;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;



	If(@prevalue =0 )--Cancellation Reason not clearing if I un-cancel a class FJE-463-44108

	BEGIN

			DELETE FROM tblClassCancellations WHERE iScheduleID=@iScheduleID

	END

  END;



  --insert into tblmodclassLog values('5' , 'visibility', @visibility) 

  SET @field = 'visibility';

  SELECT

    @prevalue = visibility

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @visibility;



  IF CAST(@prevalue AS int) <> CAST(@postvalue AS int)

  BEGIN

    -- insert into tblmodclassLog values('2' , @prevalue, @postvalue) 

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  --Duplicated Modification log

  --SET @field = 'Maxsize';

  --SELECT

  --  @prevalue = maxsize

  --FROM @courseSchedule 

  --WHERE iScheduleID = @iScheduleID;

  --SET @postvalue = @iMaxSize;

  --IF @prevalue <> @postvalue

  --BEGIN

  --  EXECUTE AddToCourseScheduleChangeLog @iCompany,

  --                                       @iCSID,

  --                                       @iScheduleID,

  --                                       NULL,

  --                                       @updater_user_id,

  --                                       --GETDATE,--Commented By deepthika @2021/07/21

		--								 @dtUpdated,--Add By deepthika @2021/07/21

  --                                       @field,

  --                                       @prevalue,

  --                                       @postvalue;

  --END;

  SET @field = 'Reserved Seats';

  SELECT

    @prevalue = iReservedSeats

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iReservedSeats;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;



										  IF (@iCompany = 11299)  --- Hexagon eCommerce Project - Product Updates -- mayu - 17102023

  BEGIN



  INSERT INTO [dbo].[tblClassEvents]

           ([Status]

           ,[CourseID]

           ,[ClassID]

           ,[Modality]

           ,[TimeZone]

           ,[VenueCountry]

           ,[StartDate]

           ,[EndDate]

           ,[availableseats]

           ,[VenueStreetAddress]

           ,[VenueCity]

           ,[VenueStateProvince]

           ,[VenueName]

           ,[PrimaryInstructor]

           ,[Language]

           ,[iCompany]

           ,[dtCreate]

           --,[dtUpdate]

           --,[szReason]

           ,[ClassName]

           ,[ClassDescription]

		   ,comment)

     VALUES(

			 0,

			 @iCSID,

			 @iScheduleID,

			 @Modality,

			 @TZName,

			 @VenueCountry,

			 @dtStart,

			 @dtEnd,

			 @iMaxSize,--*

			 @VenueStreetAddress,

			 @VenueCity,

			 @VenueState,

			 @VenueName,

			 @InstructorName,

			 @LanguageName,

			 @iCompany,

			 GETDATE(),

			 @className,

			 @classDescription,

			 'Reserved Seats changes'

	  )





  END

  END;

  SET @field = 'Instructor';

  SELECT

    @prevalue = instructor_id

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @InstructorID;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

    IF (LEN(@postvalue)) = 32

    BEGIN

      --2020-Feb-06 Ara\Gish Instructor Notification Mobile App

      EXEC [dbo].[Sp_CreateNotifications] 'Assign_Class',

                                          @iScheduleID,

                                          @postvalue;

    END;

IF (@iCompany = 11299)  --- Hexagon eCommerce Project - Product Updates -- mayu - 17102023

   BEGIN



  INSERT INTO [dbo].[tblClassEvents]

           ([Status]

           ,[CourseID]

           ,[ClassID]

           ,[Modality]

           ,[TimeZone]

           ,[VenueCountry]

           ,[StartDate]

           ,[EndDate]

           ,[availableseats]

           ,[VenueStreetAddress]

           ,[VenueCity]

           ,[VenueStateProvince]

           ,[VenueName]

           ,[PrimaryInstructor]

           ,[Language]

           ,[iCompany]

           ,[dtCreate]

           --,[dtUpdate]

           --,[szReason]

           ,[ClassName]

           ,[ClassDescription]

		   ,comment)

     VALUES(

			 1,

			 @iCSID,

			 @iScheduleID,

			 @Modality,

			 @TZName,

			 @VenueCountry,

			 @dtStart,

			 @dtEnd,

			 @iMaxSize,--*

			 @VenueStreetAddress,

			 @VenueCity,

			 @VenueState,

			 @VenueName,

			 @InstructorName,

			 @LanguageName,

			 @iCompany,

			 GETDATE(),

			 @className,

			 @classDescription,

			 'instructor changes'

	  )





  END



  END;

  SET @field = 'Venue';

  SELECT

    @prevalue = iVenueID

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = @iVenue;

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

      @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         --GETDATE,--Commented By deepthika @2021/07/22

										 @dtUpdated,--Add By deepthika @2021/07/22

                                         @field,

                                         @prevalue,

                                         @postvalue;





IF (@iCompany = 11299)  --- Hexagon eCommerce Project - Product Updates -- mayu - 17102023

   BEGIN



  INSERT INTO [dbo].[tblClassEvents]

           ([Status]

           ,[CourseID]

           ,[ClassID]

           ,[Modality]

           ,[TimeZone]

           ,[VenueCountry]

           ,[StartDate]

           ,[EndDate]

           ,[availableseats]

           ,[VenueStreetAddress]

           ,[VenueCity]

           ,[VenueStateProvince]

           ,[VenueName]

           ,[PrimaryInstructor]

           ,[Language]

           ,[iCompany]

           ,[dtCreate]

           --,[dtUpdate]

           --,[szReason]

           ,[ClassName]

           ,[ClassDescription]

		   ,comment)

     VALUES(

			 1,

			 @iCSID,

			 @iScheduleID,

			 @Modality,

			 @TZName,

			 @VenueCountry,

			 @dtStart,

			 @dtEnd,

			 @iMaxSize,--*

			 @VenueStreetAddress,

			 @VenueCity,

			 @VenueState,

			 @VenueName,

			 @InstructorName,

			 @LanguageName,

			 @iCompany,

			 GETDATE(),

			 @className,

			 @classDescription,

			 'venue changes'

	  )





  END

  END;

  SET @field = 'Start Date';

  SELECT

    @prevalueDate = dtStart

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalueDate = @dtStart;

  IF @prevalueDate <> @postvalueDate

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'End Date';

  SELECT

    @prevalueDate = dtEnd

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalueDate = @dtEnd;

  IF @prevalueDate <> @postvalueDate

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;



  --2019-Aug-15 Ara

  SET @field = 'Cancellation Policy';

  SELECT

    @prevalue = ISNULL(dbo.StripHTML(txtCancellationPolicy), '')

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = ISNULL(dbo.StripHTML(@txtCancellationPolicy), '');

  IF @prevalue <> @postvalue

  BEGIN

    EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SET @field = 'Class Description';

  SELECT

    @prevalue = ISNULL(dbo.StripHTML(classDescription), '')

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  SET @postvalue = ISNULL(dbo.StripHTML(@classDescription), '');

  IF @prevalue <> @postvalue

  BEGIN

 EXECUTE AddToCourseScheduleChangeLog @iCompany,

                                         @iCSID,

                                         @iScheduleID,

                                         NULL,

                                         @updater_user_id,

                                         @dtUpdated,

                                         @field,

                                         @prevalue,

                                         @postvalue;

  END;

  SELECT

    @CurrentMaxSize = maxsize,

    @CurrentReservedSeats = iReservedSeats

  FROM @courseSchedule 

  WHERE iScheduleID = @iScheduleID;

  --------------- before  Class Cancel,  select the @CurrentVenue

  IF @iVenue = -2

  BEGIN

    DECLARE @CurrentVenueID int;

    SET @CurrentVenueID = (SELECT

      iVenueID

    FROM @courseSchedule 

    WHERE iCSID = @iCSID

    AND iScheduleID = @iScheduleID);

  END;

  --log the  tblcourseSchedule values

  IF @bWebConferenceVenue = 1

  BEGIN

    INSERT INTO dbo.tblCourseSchedule_RollBackLog (iScheduleID,

    iCSID,

    iTZID,

    dtStart,

    dtEnd,

    iVenueID,

    instructor_id,

    visibility,

    STATUS,

    ID,

    ProductID,

    maxSize,

    minSize,

    TARContact,

    PrimaryContact,

    PrimaryContactEmail,

    PrimaryContactPhone,

    TechContact,

    TechEmail,

    TechPhone,

    NumStudents,

    btEnoughChairs,

    btAdditionalSpace,

    btEnoughPower,

    btNetworkWiring,

    btWorkStationsProvided,

    btInternetAccess,

    btIPAllocation,

    btProjectorNeeded,

    btVisaRequired,

    btInformationSent,

    iVCID,

    SAP,

    SKU,

    btTravelBillable,

    SalesRepresentative,

    btCollateralShipped,

    btEquipmentShipped,

    btTarSent,

    btCertificateSent,

    Notes,

    EvalCode,

    btCertificateRequired,

    iClassCost,

    btSitePreQualified,

    btEquipmentRented,

    btShippingBillable,

    btStudent5DayReminder,

    btStudent3DayReminder,

    btStudent1DayReminder,

    btInstructor5DayReminder,

    btInstructor3DayReminder,

    btInstructor1DayReminder,

    RegistrationURL,

    btStudent2WeeksReminder,

    btStudent4WeeksFollowUp,

    btStudent3MonthFollowUp,

    btInstructor1DayEval,

    btInstructor2DayEval,

    btStudent3DaysAfterEval,

    btInstructor2WeeksReminder,

    iReservedSeats,

    btAllowWaitList,

    iAllowedReplacementPeriod,

    btStudent3DaysAfterEvalReminder,

    dtCreated,

    creator_user_id,

    dtUpdated,

    updater_user_id,

    txtCancellationPolicy,

    nCancellableInHours,

    PO,

    NotesToStudent,

    btStudentEnrollmentEmail,

    btStudentWithdrawalEmail,

    btManagerEnrollmentEmail,

    btManagerWithdrawalEmail,

    btClassFullNotification,

    iQuestionnaireStatus,

    iAllowRoomates,

    iCustomMessageId,

    ClassName,

    dtFinalized,

    btRegistrationTermsAndConditions,

    MeetingID,

    AudienceURL,

    PresenterURL,

    iATPID,

    AttendeePassword,

    PresenterPassword,

    ClassDescription,

    iResourceAvailability,

    iNominationFormID,

    bDisableInstructorConflict,

    iQuestionnaireID,

    btClassMinNotification,

    TrainingGuestToken,

    strModeType,

    btStudent7DayReminder,

    btStudent3WeeksReminder,

    FacultyDescription,

    AgendaDescription,

    btStudent3MonthsSurveyFollowUpReminder,

    btStudent1DaySurveyReminder,

    btStudent10DaySurveyReminder,

    sfdcClassId,

    iRegistrationEndTimeFrame,

    dtUpdate,

    bRollbalck,

    CancelVenueID,

    alternateInstructor_id,

    AbobeTemlateType,

    AbobeTemplateName,

    PrivateClassToken,

    bIsClassEndDateAsCompletionDate,

    City,

    [State],

    EligibilityCriteria,

    InstructorEmail,

    nvClassType,

    BluePrintID,

    addInvite,

    iWebexJoinBeforeHost,

    AddVenueDetails,

    classColor,

    iSecondaryVenueID,

    DeliveryLanguage,

    iWebexTelephony,

    ReservedSeatsNote,

    iWebexTelephonySupport,

    Location,

    EmailDesc,

    CertFile,

    DailySurveyEnabled,

    EndOfCourseSurveyEnabled,

    VenueRoomId,

    TrainingCredits,

    btStudentRemovalEmail,

    btClassCancellationEmail,

    btSurveyReminderEmail,

    btWaitListReminderEmail,

    btEndOfTrainingInstructorSurveyReport,

    btClassCancellationEmailInstructor,

    btInstructorChangedEmail,

    btStudentWithdrawalEmailContact,

    btStudent1DayReminderContact,

    btStudent3DayReminderContact,

    btClassAssignmentToContact,

    btClassCancellationContact,

    btStudentEnrollmentEmailContact,

    btManagerEnrollmentEmailContact,

    btVoucherBalanceReminderContact,

    btVoucherOrderConfirmationContact,

    btScheduleInvitationToEligibleUsersContact,

    SecondInstructor,

    iCourseCoordinationTeambeforeDays,

    iFinalDayExam,EventId)

      SELECT

        iScheduleID,

        iCSID,

        iTZID,

        dtStart,

        dtEnd,

        CASE

          WHEN @isDeleteMeetingSuccess = 1 THEN -3    -- when the meeting deleted venue should be change 

          ELSE iVenueID

        END,

        instructor_id,

        visibility,

        STATUS,

        ID,

        ProductID,

        maxSize,

        minSize,

        TARContact,

        PrimaryContact,

        PrimaryContactEmail,

        PrimaryContactPhone,

        TechContact,

        TechEmail,

        TechPhone,

        NumStudents,

        btEnoughChairs,

        btAdditionalSpace,

        btEnoughPower,

        btNetworkWiring,

        btWorkStationsProvided,

        btInternetAccess,

        btIPAllocation,

        btProjectorNeeded,

        btVisaRequired,

        btInformationSent,

        iVCID,

        SAP,

        SKU,

        btTravelBillable,

        SalesRepresentative,

        btCollateralShipped,

        btEquipmentShipped,

        btTarSent,

        btCertificateSent,

        Notes,

        EvalCode,

        btCertificateRequired,

        iClassCost,

        btSitePreQualified,

        btEquipmentRented,

        btShippingBillable,

        btStudent5DayReminder,

        btStudent3DayReminder,

        btStudent1DayReminder,

        btInstructor5DayReminder,

        btInstructor3DayReminder,

        btInstructor1DayReminder,

        RegistrationURL,

        btStudent2WeeksReminder,

        btStudent4WeeksFollowUp,

        btStudent3MonthFollowUp,

        btInstructor1DayEval,

        btInstructor2DayEval,

        btStudent3DaysAfterEval,

        btInstructor2WeeksReminder,

        iReservedSeats,

        btAllowWaitList,

        iAllowedReplacementPeriod,

        btStudent3DaysAfterEvalReminder,

        dtCreated,

        creator_user_id,

        dtUpdated,

        updater_user_id,

        txtCancellationPolicy,

        nCancellableInHours,

        PO,

        NotesToStudent,

        btStudentEnrollmentEmail,

        btStudentWithdrawalEmail,

        btManagerEnrollmentEmail,

        btManagerWithdrawalEmail,

        btClassFullNotification,

        iQuestionnaireStatus,

        iAllowRoomates,

        iCustomMessageId,

        ClassName,

        dtFinalized,

        btRegistrationTermsAndConditions,

        MeetingID,

        AudienceURL,

        PresenterURL,

        iATPID,

        AttendeePassword,

        PresenterPassword,

        ClassDescription,

        iResourceAvailability,

        iNominationFormID,

        bDisableInstructorConflict,

        iQuestionnaireID,

        btClassMinNotification,

        TrainingGuestToken,

        strModeType,

        btStudent7DayReminder,

        btStudent3WeeksReminder,

        FacultyDescription,

        AgendaDescription,

        btStudent3MonthsSurveyFollowUpReminder,

        btStudent1DaySurveyReminder,

        btStudent10DaySurveyReminder,

        sfdcClassId,

        iRegistrationEndTimeFrame,

        @dtUpdated,

        0,

        CancelVenueID,

        alternateInstructor_id,

        AbobeTemlateType,

AbobeTemplateName,

        PrivateClassToken,

        bIsClassEndDateAsCompletionDate,

        ClassCity,

        [State],

        EligibilityCriteria,

        InstructorEmail,

        @strClassType,

        @RavelloBluePrintID,

        @AddInvite,

        iWebexJoinBeforeHost,

        @AddVenueDetails,

        @ClassColor,

        iSecondaryVenueID,

        DeliveryLanguage,

        iWebexTelephony,

        ReservedSeatsNote,

        iWebexTelephonySupport,

        Location,

        EmailDesc,

        CertFile,

        DailySurveyEnabled,

        EndOfCourseSurveyEnabled,

        VenueRoomId,

        TrainingCredits,

        btStudentRemovalEmail,

        btClassCancellationEmail,

        btSurveyReminderEmail,

        btWaitListReminderEmail,

        btEndOfTrainingInstructorSurveyReport,

        btClassCancellationEmailInstructor,

        btInstructorChangedEmail,

        btStudentWithdrawalEmailContact,

        btStudent1DayReminderContact,

        btStudent3DayReminderContact,

        btClassAssignmentToContact,

        btClassCancellationContact,

        btStudentEnrollmentEmailContact,

        btManagerEnrollmentEmailContact,

        btVoucherBalanceReminderContact,

        btVoucherOrderConfirmationContact,

        btScheduleInvitationToEligibleUsersContact,

        SecondInstructor,

        iCourseCoordinationTeambeforeDays,

        iFinalDayExam,EventId

      FROM dbo.tblCourseSchedule WITH (NOLOCK)

      WHERE iScheduleID = @iScheduleID;

    -- Add to Time slot rollback log

    INSERT INTO dbo.timeSlots_RollBackLog (reservationID,

    dtStart,

    dtEnd,

    slotType)

      SELECT

        reservationID,

        dtStart,

        dtEnd,

        slotType

      FROM dbo.timeSlots WITH (NOLOCK)

      WHERE reservationID = @iScheduleID;

    --   IF ( @iCompany <> 10229 )

    --BEGIN



    DECLARE @iConferenceType int;

    SELECT

      @iConferenceType = iConferenceType

    FROM tblVenues WITH (NOLOCK)

    WHERE VenueID = @iVenue;

    IF @iConferenceType = 8

    BEGIN

      IF @className IS NULL

        OR LEN(@className) = 0

      BEGIN

        SELECT

          @className = ClassName

        FROM @courseSchedule 

        WHERE iScheduleID = @iScheduleID;

      END;

      IF @classDescription IS NULL

        OR LEN(@classDescription) = 0

      BEGIN

        SELECT

          @classDescription = classDescription

        FROM @courseSchedule 

        WHERE iScheduleID = @iScheduleID;

      END;

    END;

  --END

  END;

  --CLASS END OR CLASS CANCELLED

  IF @iStatus = 3

    OR @iStatus = 0

  BEGIN

    SELECT

      @BluePrintID = tblCourseSchedule.BluePrintID

    FROM tblCourse WITH (NOLOCK)

    INNER JOIN tblCourseSchedule WITH (NOLOCK)

      ON tblCourse.iCSID = tblCourseSchedule.iCSID

    WHERE tblCourseSchedule.iScheduleID = @iScheduleID;

    IF NOT @BluePrintID IS NULL

    BEGIN

      DECLARE @TransactionType varchar(50);

      SET @TransactionType = 'DELETE';

      DECLARE @Now datetime;

      SET @Now = GETDATE();

      DELETE FROM tblTasks

      WHERE iReferenceId = @iScheduleID

        AND szType = 'NERavello.Task';

      EXEC AddRavelloScheduledTask @iCompany,

                                   @iScheduleID,

                                   @TransactionType,

                                   @Now;

    --EXEC [AddRavelloScheduledTaskV1] @iCompany,@iScheduleID,@TransactionType ,@Now,0,''

    END;

  END;

  --DECLARE @prv_dtstart datetime;

  --DECLARE @prv_dtend datetime;

  --SELECT

  --  @prv_dtend = dtEnd,

  --  @prv_dtstart = dtStart

  --FROM tblCourseSchedule WITH (NOLOCK)

  --WHERE iScheduleID = @iScheduleID;



  --BEGIN TRY  

  --INSERT INTO [tblCourseScheduleChangeLog]

  --           ([iCompany]

  --           ,[iCSID]

  --           ,[iScheduleID]

  --           ,[iSubScheduleID]

  --           ,[UpDaterUserId]

  --           ,[dtUpdate]

  --           ,[vcFieldName]

  --           ,[OriginalValue]

  --           ,[NewValue])

  --     VALUES

  --           (@iCompany

  --           ,@iCSID

  --           ,@iScheduleID

  --           ,NULL

  --           ,@updater_user_id

  --           ,@dtUpdated

  --           ,'dtEnd'

  --           ,@prv_dtend

  --           ,@dtEnd

  --           )

  --INSERT INTO [tblCourseScheduleChangeLog]

  --           ([iCompany]

  --           ,[iCSID]

  --           ,[iScheduleID]

  --           ,[iSubScheduleID]

  --           ,[UpDaterUserId]

  --           ,[dtUpdate]

  --           ,[vcFieldName]

  --           ,[OriginalValue]

  --           ,[NewValue])

  --     VALUES

  --           (@iCompany

  --           ,@iCSID

  --           ,@iScheduleID

  --           ,NULL

  --           ,@updater_user_id

  --           ,@dtUpdated

  --           ,'dtStart'

  --           ,@prv_dtstart

  --           ,@dtStart

  --           )

  --END TRY  

  --BEGIN CATCH 

  --	print 'error'

  --END CATCH

  -- insert into tblmodclassLog values('7' , 'visibility', @visibility) 



  UPDATE tblCourseSchedule

  SET iCSID = @iCSID,

      iTZID = @iTZID,

      ID = @ID,

      ProductID = @ProductID,

      RegistrationURL = @RegistrationURL,

      dtStart = @dtStart,

      dtEnd = @dtEnd,

      iVenueID = @iVenue,

      instructor_id = @InstructorID,

      EvalCode = @EvalCode,

      visibility = @visibility,

      STATUS = @iStatus,

      btCertificateRequired = @iCertificateRequired,

      txtCancellationPolicy = @txtCancellationPolicy,

      nCancellableInHours = @nCancellableInHours,

      iReservedSeats = @iReservedSeats,

      btAllowWaitList = @iAllowWaitList,

      strModeType = @strWaitListModeType,

      maxsize = @iMaxSize,

      minsize = @iMinSize,

      btClassFullNotification = @btClassFullNotification,

      dtUpdated = @dtUpdated,

      updater_user_id = @updater_user_id,

      classname = @className,

      ClassDescription = @classDescription,

      FacultyDescription = @facultyDescription,

      AgendaDescription = @agendaDescription,

      btRegistrationTermsAndConditions = @iRegistrationTermsAndConditions,

      --iATPID = @iATPID, 

      iResourceAvailability = @iResourceAvailability,

      bDisableInstructorConflict = @bDisableInstructorConflict,

      iNominationFormID = @iNominationFormID,

      iQuestionnaireID = @iQuestionnaireID,

      btClassMinNotification = @btClassMinNotification,

      iRegistrationEndTimeFrame = @iRegistrationEndTimeFrame,

      CancelVenueID = @CurrentVenueID,

      alternateInstructor_id = @AlternateInstructorID,

      AbobeTemlateType = @AbobeTemlateType,

      AbobeTemplateName = @AbobeTemplateName,

      PrivateClassToken = @PrivateClassGUID,

      bIsClassEndDateAsCompletionDate = @isClassEndDateAsCompletionDate,

      --,ClassCity = @strCity

      --,[State] =@strState 

      EligibilityCriteria = @strSelelctionCriteria,

      InstructorEmail = @InstructorEmail,

      nvClassType = @strClassType,

      BluePrintID = @RavelloBluePrintID,

      addInvite = @AddInvite,

      iWebexJoinBeforeHost = @iWebexJoinBeforeHost,

      AddVenueDetails = @AddVenueDetails,

      classColor = @ClassColor,

      iSecondaryVenueID = @iSecondaryVenueID,

      DeliveryLanguage = @DeliveryLanguage,

      iWebexTelephony = @iWebexTelephony,

      MSDExternalID = @MSDExternalID,

      ReservedSeatsNote = @ReservedSeatsNote,

      iWebexTelephonySupport = @iWebexTelephonySupport,

      Location = @Location,

      EmailDesc = @EmailDesc,

      CertFile = @CertFile,

      DailySurveyEnabled = @DailySurveyEnabled,

      EndOfCourseSurveyEnabled = @EndOfCourseSurveyEnabled,

      nvWebExlink = @nvWebExlink,

      VenueRoomId = @iVenueRoom,

      TrainingCredits = @iTrainingCredits,

      ILTInteractiveFormID = @iILTIntFormID,

      AttendeePassword = @nvAttendanceCode,

      iChecklistID = @iSelectedCheckList,

      isGroupEvaluation = @bGroupEvaluation,

      bCancellationFees = @bCancellationFees,

      bNoShowFees = @bNoShowFees,

      isChangedCanclPlcy = @isChangedCanclPlcy, --Hasitha NJZ-192-84667

      isChangedClsDesc = @isChangedClsDesc,

      SecondInstructor = @SecondInstructor,

      iCourseCoordinationTeambeforeDays = @NotifyCourseCoordinationTeambeforeDays,

      isWebEx = @isWebEx,

      iFinalDayExam = @iFinalDayExam,

      LanguageId = @LanguageId, --Added by Chanuri

	  pricingMethod = @pricingMethod -- URM-360-21175

	  , EventId=@EventId ,--ON24 Integration 

	 WebinarURL=@WebinarURL, --ON24 Integration

	 NextClassID = @NextClassID,

	 ReadyTechTemplateID = @ReadyTechTemplateID, -- ReadyTech Integration -Tharaka 19/04/2023

	 MaxWaitListSize = @MaxWaitListSize,

	 FlexCredit=@FlexCredit

  WHERE iScheduleID = @iScheduleID;

  ----------------------------------------ATPs unable to modify scheduled classes - WLF-788-82195 - Sanjaya on 9Nov2017----------------------------

  IF @ATPAccess = 0

  BEGIN

    UPDATE tblCourseSchedule

    SET iATPID = @iATPID

    WHERE iScheduleID = @iScheduleID;

    -- xilinx class properties



    IF @strXilinxCourseProperties IS NOT NULL

    BEGIN

      IF EXISTS (SELECT

          *

        FROM tblCourseProperties_Xillinx

        WHERE CoursewareID = @iScheduleID

        AND CoursewareType = 'Class')

      BEGIN

        UPDATE tblCourseProperties_Xillinx

        SET istatus = 0,

            dtdeleted = GETDATE()

        WHERE CoursewareID = @iScheduleID

        AND CoursewareType = 'Class';

      END;

      INSERT INTO [dbo].[tblCourseProperties_Xillinx] ([CoursewareID],

      [CoursewareType],

      [XilinxProductType],

      [XilinxSoftware],

      [XilinxSoftwareVersion],

      [XilinxArchitecture],

      [XilinxHardware],

      [XilinxSDSoC],

      [XilinxSDAccel],

      [XilinxSDNet],

      [XilinxHLS],

      [XilinxIPI],

      [XilinxZynqMPSoC],

      [XilinxUSUS],

      [XilinxPR],

      [XilinxPetaLinux],

      [XilinxRevision],

      [XilinxUFDM],

      [XilinxDC],

      [XilinxAWS],

      [XilinxFaaS],

      [XilinxXBB],

      [XilinxSWStacks],

      [XilinxRFSoC],

      [XilinxEverest],

      [dtadded],

      [istatus])

        SELECT

          @iScheduleID,

          'Class',

          a.b.value('XilinxProductType[1]', 'nvarchar(4000)') AS XilinxProductType,

          a.b.value('XilinxSoftware[1]', 'nvarchar(4000)') AS XilinxSoftware,

          a.b.value('XilinxSoftwareVersion[1]', 'nvarchar(4000)') AS XilinxSoftwareVersion,

          a.b.value('XilinxArchitecture[1]', 'nvarchar(4000)') AS XilinxArchitecture,

          a.b.value('XilinxHardware[1]', 'nvarchar(4000)') AS XilinxHardware,

          a.b.value('XilinxSDSoC[1]', 'nvarchar(4000)') AS XilinxSDSoC,

          a.b.value('XilinxSDAccel[1]', 'nvarchar(4000)') AS XilinxSDAccel,

          a.b.value('XilinxSDNet[1]', 'nvarchar(4000)') AS XilinxSDNet,

          a.b.value('XilinxHLS[1]', 'nvarchar(4000)') AS XilinxHLS,

          a.b.value('XilinxIPI[1]', 'nvarchar(4000)') AS XilinxIPI,

          a.b.value('XilinxZynqMPSoC[1]', 'nvarchar(4000)') AS XilinxZynqMPSoC,

          a.b.value('XilinxUSUS[1]', 'nvarchar(4000)') AS XilinxUSUS,

          a.b.value('XilinxPR[1]', 'nvarchar(4000)') AS XilinxPR,

          a.b.value('XilinxPetaLinux[1]', 'nvarchar(4000)') AS XilinxPetaLinux,

          a.b.value('XilinxRevision[1]', 'nvarchar(4000)') AS XilinxRevision,

          a.b.value('XilinxUFDM[1]', 'nvarchar(4000)') AS XilinxUFDM,

          a.b.value('XilinxDC[1]', 'nvarchar(4000)') AS XilinxDC,

          a.b.value('XilinxAWS[1]', 'nvarchar(4000)') AS XilinxAWS,

          a.b.value('XilinxFaaS[1]', 'nvarchar(4000)') AS XilinxFaaS,

          a.b.value('XilinxXBB[1]', 'nvarchar(4000)') AS XilinxXBB,

          a.b.value('XilinxSWStacks[1]', 'nvarchar(4000)') AS XilinxSWStacks,

          a.b.value('XilinxRFSoC[1]', 'nvarchar(4000)') AS XilinxRFSoC,

          a.b.value('XilinxEverest[1]', 'nvarchar(4000)') AS XilinxEverest,

          GETDATE(),

          1

        FROM @strXilinxCourseProperties.nodes('root') a (b);

    END;

  END;

----------------------------------------ATPs unable to modify scheduled classes - WLF-788-82195 - Sanjaya on 9Nov2017----------------------------

----------------------------------------07/11/2013----------------------------

--DECLARE @TEMP INT

--IF((@iMaxSize- @iReservedSeats) > (@CurrentMaxSize - @CurrentReservedSeats))

--BEGIN

--	SET @TEMP = ((@iMaxSize- @iReservedSeats) - (@CurrentMaxSize - @CurrentReservedSeats))

--	WHILE(@TEMP > 0)

--	BEGIN

--		EXEC APIWaitListProcessV2 @iCompany, @iScheduleID, @iCSID

--		SET @TEMP = @TEMP -1

--	END

--END

--END

--Print 'start waitlist'

--DECLARE @TEMP INT

--SELECT @iMaxSize,@iReservedSeats,(@iMaxSize- @iReservedSeats),(@CurrentMaxSize - @CurrentReservedSeats)

--IF((@iMaxSize- @iReservedSeats) > (@CurrentMaxSize - @CurrentReservedSeats))

--BEGIN

--	SET @TEMP = ((@iMaxSize- @iReservedSeats) - (@CurrentMaxSize - @CurrentReservedSeats)) 

--	SELECT @TEMP

--	WHILE(@TEMP = 1)

--	BEGIN

--	SELECT @TEMP,@iCompany,@iScheduleID,@iCSID 

--		EXEC APIWaitListProcessV2 @iCompany, @iScheduleID, @iCSID 

--		SET @TEMP = @TEMP -1 

--	END

END;
