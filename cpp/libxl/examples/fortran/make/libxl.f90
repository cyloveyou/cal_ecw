!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!                                                                           !
!                         LibXL Fortran headers                             !
!                                                                           !
!                 Copyright (c) 2008 - 2025 XLware s.r.o.                   !
!                                                                           !
!            Thank you to Mark Finnis for providing this module.            !
!                                                                           !
!   THIS FILE AND THE SOFTWARE CONTAINED HEREIN IS PROVIDED 'AS IS' AND     !
!                COMES WITH NO WARRANTIES OF ANY KIND.                      !
!                                                                           !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  module LibXL

  use, intrinsic :: ISO_C_BINDING

  implicit none

  enum, bind(C)
      enumerator :: COLOR_BLACK = 8,COLOR_WHITE,COLOR_RED,COLOR_BRIGHTGREEN,COLOR_BLUE,COLOR_YELLOW,COLOR_PINK,COLOR_TURQUOISE,  &
                    COLOR_DARKRED,COLOR_GREEN,COLOR_DARKBLUE,COLOR_DARKYELLOW,COLOR_VIOLET,COLOR_TEAL,COLOR_GRAY25,COLOR_GRAY50,  &
                    COLOR_PERIWINKLE_CF,COLOR_PLUM_CF,COLOR_IVORY_CF,COLOR_LIGHTTURQUOISE_CF,COLOR_DARKPURPLE_CF,COLOR_CORAL_CF,  &
                    COLOR_OCEANBLUE_CF,COLOR_ICEBLUE_CF,COLOR_DARKBLUE_CL,COLOR_PINK_CL,COLOR_YELLOW_CL,COLOR_TURQUOISE_CL,  &
                    COLOR_VIOLET_CL,COLOR_DARKRED_CL,COLOR_TEAL_CL,COLOR_BLUE_CL,COLOR_SKYBLUE,COLOR_LIGHTTURQUOISE,  &
                    COLOR_LIGHTGREEN,COLOR_LIGHTYELLOW,COLOR_PALEBLUE,COLOR_ROSE,COLOR_LAVENDER,COLOR_TAN,COLOR_LIGHTBLUE,  &
                    COLOR_AQUA,COLOR_LIME,COLOR_GOLD,COLOR_LIGHTORANGE,COLOR_ORANGE,COLOR_BLUEGRAY,COLOR_GRAY40,COLOR_DARKTEAL,  &
                    COLOR_SEAGREEN,COLOR_DARKGREEN,COLOR_OLIVEGREEN,COLOR_BROWN,COLOR_PLUM,COLOR_INDIGO,COLOR_GRAY80,  &
                    COLOR_DEFAULT_FOREGROUND = Int(z'0040'),COLOR_DEFAULT_BACKGROUND = Int(z'0041'),COLOR_TOOLTIP = Int(z'0051'),  &
                    COLOR_NONE = Int(z'7F'),COLOR_AUTO = Int(z'7FFF') 
  end enum

  enum, bind(C)
      enumerator :: NUMFORMAT_GENERAL,NUMFORMAT_NUMBER,NUMFORMAT_NUMBER_D2,NUMFORMAT_NUMBER_SEP,NUMFORMAT_NUMBER_SEP_D2,  &
                    NUMFORMAT_CURRENCY_NEGBRA,NUMFORMAT_CURRENCY_NEGBRARED,NUMFORMAT_CURRENCY_D2_NEGBRA,  &
                    NUMFORMAT_CURRENCY_D2_NEGBRARED,NUMFORMAT_PERCENT,NUMFORMAT_PERCENT_D2,NUMFORMAT_SCIENTIFIC_D2,  &
                    NUMFORMAT_FRACTION_ONEDIG,NUMFORMAT_FRACTION_TWODIG,NUMFORMAT_DATE,NUMFORMAT_CUSTOM_D_MON_YY,  &
                    NUMFORMAT_CUSTOM_D_MON,NUMFORMAT_CUSTOM_MON_YY,NUMFORMAT_CUSTOM_HMM_AM,NUMFORMAT_CUSTOM_HMMSS_AM,  &
                    NUMFORMAT_CUSTOM_HMM,NUMFORMAT_CUSTOM_HMMSS,NUMFORMAT_CUSTOM_MDYYYY_HMM,NUMFORMAT_NUMBER_SEP_NEGBRA = 37,  &
                    NUMFORMAT_NUMBER_SEP_NEGBRARED,NUMFORMAT_NUMBER_D2_SEP_NEGBRA,NUMFORMAT_NUMBER_D2_SEP_NEGBRARED,  &
                    NUMFORMAT_ACCOUNT,NUMFORMAT_ACCOUNTCUR,NUMFORMAT_ACCOUNT_D2,NUMFORMAT_ACCOUNT_D2_CUR,NUMFORMAT_CUSTOM_MMSS,  &
                    NUMFORMAT_CUSTOM_H0MMSS,NUMFORMAT_CUSTOM_MMSS0,NUMFORMAT_CUSTOM_000P0E_PLUS0,NUMFORMAT_TEXT 
  end enum

  enum, bind(C)
      enumerator :: ALIGNH_GENERAL,ALIGNH_LEFT,ALIGNH_CENTER,ALIGNH_RIGHT,ALIGNH_FILL,ALIGNH_JUSTIFY,ALIGNH_MERGE,ALIGNH_DISTRIBUTED 
  end enum

  enum, bind(C)
      enumerator :: ALIGNV_TOP,ALIGNV_CENTER,ALIGNV_BOTTOM,ALIGNV_JUSTIFY,ALIGNV_DISTRIBUTED 
  end enum

  enum, bind(C)
      enumerator :: BORDERSTYLE_NONE,BORDERSTYLE_THIN,BORDERSTYLE_MEDIUM,BORDERSTYLE_DASHED,BORDERSTYLE_DOTTED,BORDERSTYLE_THICK,  &
                    BORDERSTYLE_DOUBLE,BORDERSTYLE_HAIR,BORDERSTYLE_MEDIUMDASHED,BORDERSTYLE_DASHDOT,BORDERSTYLE_MEDIUMDASHDOT,  &
                    BORDERSTYLE_DASHDOTDOT,BORDERSTYLE_MEDIUMDASHDOTDOT,BORDERSTYLE_SLANTDASHDOT 
  end enum

  enum, bind(C)
      enumerator :: BORDERDIAGONAL_NONE,BORDERDIAGONAL_DOWN,BORDERDIAGONAL_UP,BORDERDIAGONAL_BOTH 
  end enum

  enum, bind(C)
      enumerator :: FILLPATTERN_NONE,FILLPATTERN_SOLID,FILLPATTERN_GRAY50,FILLPATTERN_GRAY75,FILLPATTERN_GRAY25,  &
                    FILLPATTERN_HORSTRIPE,FILLPATTERN_VERSTRIPE,FILLPATTERN_REVDIAGSTRIPE,FILLPATTERN_DIAGSTRIPE,  &
                    FILLPATTERN_DIAGCROSSHATCH,FILLPATTERN_THICKDIAGCROSSHATCH,FILLPATTERN_THINHORSTRIPE,  &
                    FILLPATTERN_THINVERSTRIPE,FILLPATTERN_THINREVDIAGSTRIPE,FILLPATTERN_THINDIAGSTRIPE,  &
                    FILLPATTERN_THINHORCROSSHATCH,FILLPATTERN_THINDIAGCROSSHATCH,FILLPATTERN_GRAY12P5,FILLPATTERN_GRAY6P25 
  end enum

  enum, bind(C)
      enumerator :: SCRIPT_NORMAL,SCRIPT_SUPER,SCRIPT_SUB 
  end enum

  enum, bind(C)
      enumerator :: UNDERLINE_NONE,UNDERLINE_SINGLE,UNDERLINE_DOUBLE,UNDERLINE_SINGLEACC = Int(z'21'),  &
                    UNDERLINE_DOUBLEACC = Int(z'22') 
  end enum

  enum, bind(C)
      enumerator :: PAPER_DEFAULT,PAPER_LETTER,PAPER_LETTERSMALL,PAPER_TABLOID,PAPER_LEDGER,PAPER_LEGAL,PAPER_STATEMENT,  &
                    PAPER_EXECUTIVE,PAPER_A3,PAPER_A4,PAPER_A4SMALL,PAPER_A5,PAPER_B4,PAPER_B5,PAPER_FOLIO,PAPER_QUATRO,  &
                    PAPER_10x14,PAPER_10x17,PAPER_NOTE,PAPER_ENVELOPE_9,PAPER_ENVELOPE_10,PAPER_ENVELOPE_11,PAPER_ENVELOPE_12,  &
                    PAPER_ENVELOPE_14,PAPER_C_SIZE,PAPER_D_SIZE,PAPER_E_SIZE,PAPER_ENVELOPE_DL,PAPER_ENVELOPE_C5,  &
                    PAPER_ENVELOPE_C3,PAPER_ENVELOPE_C4,PAPER_ENVELOPE_C6,PAPER_ENVELOPE_C65,PAPER_ENVELOPE_B4,PAPER_ENVELOPE_B5,  &
                    PAPER_ENVELOPE_B6,PAPER_ENVELOPE,PAPER_ENVELOPE_MONARCH,PAPER_US_ENVELOPE,PAPER_FANFOLD,  &
                    PAPER_GERMAN_STD_FANFOLD,PAPER_GERMAN_LEGAL_FANFOLD,PAPER_B4_ISO,PAPER_JAPANESE_POSTCARD,PAPER_9x11,  &
                    PAPER_10x11,PAPER_15x11,PAPER_ENVELOPE_INVITE,PAPER_US_LETTER_EXTRA = 50,PAPER_US_LEGAL_EXTRA,  &
                    PAPER_US_TABLOID_EXTRA,PAPER_A4_EXTRA,PAPER_LETTER_TRANSVERSE,PAPER_A4_TRANSVERSE,  &
                    PAPER_LETTER_EXTRA_TRANSVERSE,PAPER_SUPERA,PAPER_SUPERB,PAPER_US_LETTER_PLUS,PAPER_A4_PLUS,  &
                    PAPER_A5_TRANSVERSE,PAPER_B5_TRANSVERSE,PAPER_A3_EXTRA,PAPER_A5_EXTRA,PAPER_B5_EXTRA,PAPER_A2,  &
                    PAPER_A3_TRANSVERSE,PAPER_A3_EXTRA_TRANSVERSE,PAPER_JAPANESE_DOUBLE_POSTCARD,PAPER_A6,  &
                    PAPER_JAPANESE_ENVELOPE_KAKU2,PAPER_JAPANESE_ENVELOPE_KAKU3,PAPER_JAPANESE_ENVELOPE_CHOU3,  &
                    PAPER_JAPANESE_ENVELOPE_CHOU4,PAPER_LETTER_ROTATED,PAPER_A3_ROTATED,PAPER_A4_ROTATED,PAPER_A5_ROTATED,  &
                    PAPER_B4_ROTATED,PAPER_B5_ROTATED,PAPER_JAPANESE_POSTCARD_ROTATED,PAPER_DOUBLE_JAPANESE_POSTCARD_ROTATED,  &
                    PAPER_A6_ROTATED,PAPER_JAPANESE_ENVELOPE_KAKU2_ROTATED,PAPER_JAPANESE_ENVELOPE_KAKU3_ROTATED,  &
                    PAPER_JAPANESE_ENVELOPE_CHOU3_ROTATED,PAPER_JAPANESE_ENVELOPE_CHOU4_ROTATED,PAPER_B6,PAPER_B6_ROTATED,  &
                    PAPER_12x11,PAPER_JAPANESE_ENVELOPE_YOU4,PAPER_JAPANESE_ENVELOPE_YOU4_ROTATED,PAPER_PRC16K,PAPER_PRC32K,  &
                    PAPER_PRC32K_BIG,PAPER_PRC_ENVELOPE1,PAPER_PRC_ENVELOPE2,PAPER_PRC_ENVELOPE3,PAPER_PRC_ENVELOPE4,  &
                    PAPER_PRC_ENVELOPE5,PAPER_PRC_ENVELOPE6,PAPER_PRC_ENVELOPE7,PAPER_PRC_ENVELOPE8,PAPER_PRC_ENVELOPE9,  &
                    PAPER_PRC_ENVELOPE10,PAPER_PRC16K_ROTATED,PAPER_PRC32K_ROTATED,PAPER_PRC32KBIG_ROTATED,  &
                    PAPER_PRC_ENVELOPE1_ROTATED,PAPER_PRC_ENVELOPE2_ROTATED,PAPER_PRC_ENVELOPE3_ROTATED,  &
                    PAPER_PRC_ENVELOPE4_ROTATED,PAPER_PRC_ENVELOPE5_ROTATED,PAPER_PRC_ENVELOPE6_ROTATED,  &
                    PAPER_PRC_ENVELOPE7_ROTATED,PAPER_PRC_ENVELOPE8_ROTATED,PAPER_PRC_ENVELOPE9_ROTATED,PAPER_PRC_ENVELOPE10_ROTATED 
  end enum

  enum, bind(C)
      enumerator :: SHEETTYPE_SHEET,SHEETTYPE_CHART,SHEETTYPE_UNKNOWN 
  end enum

  enum, bind(C)
      enumerator :: CELLTYPE_EMPTY,CELLTYPE_NUMBER,CELLTYPE_STRING,CELLTYPE_BOOLEAN,CELLTYPE_BLANK,CELLTYPE_ERROR,  &
                    CELLTYPE_STRICTDATE 
  end enum

  enum, bind(C)
      enumerator :: ERRORTYPE_NULL = Int(z'00'),ERRORTYPE_DIV_0 = Int(z'07'),ERRORTYPE_VALUE = Int(z'0F'),  &
                    ERRORTYPE_REF = Int(z'17'),ERRORTYPE_NAME = Int(z'1D'),ERRORTYPE_NUM = Int(z'24'),ERRORTYPE_NA = Int(z'2A'),  &
                    ERRORTYPE_NOERROR = Int(z'FF') 
  end enum

  enum, bind(C)
      enumerator :: PICTURETYPE_PNG,PICTURETYPE_JPEG,PICTURETYPE_GIF,PICTURETYPE_WMF,PICTURETYPE_DIB,PICTURETYPE_EMF,  &
                    PICTURETYPE_PICT,PICTURETYPE_TIFF,PICTURETYPE_ERROR = Int(z'FF') 
  end enum

  enum, bind(C)
      enumerator :: SHEETSTATE_VISIBLE,SHEETSTATE_HIDDEN,SHEETSTATE_VERYHIDDEN 
  end enum

  enum, bind(C)
      enumerator :: SCOPE_UNDEFINED = -2,SCOPE_WORKBOOK = -1 
  end enum

  enum, bind(C)
      enumerator :: POSITION_MOVE_AND_SIZE,POSITION_ONLY_MOVE,POSITION_ABSOLUTE 
  end enum

  enum, bind(C)
      enumerator :: OPERATOR_EQUAL,OPERATOR_GREATER_THAN,OPERATOR_GREATER_THAN_OR_EQUAL,OPERATOR_LESS_THAN,  &
                    OPERATOR_LESS_THAN_OR_EQUAL,OPERATOR_NOT_EQUAL 
  end enum

  enum, bind(C)
      enumerator :: FILTER_VALUE,FILTER_TOP10,FILTER_CUSTOM,FILTER_DYNAMIC,FILTER_COLOR,FILTER_ICON,FILTER_EXT,FILTER_NOT_SET 
  end enum

  enum, bind(C)
      enumerator :: IERR_NO_ERROR = 0,IERR_EVAL_ERROR = 1,IERR_EMPTY_CELLREF = 2,IERR_NUMBER_STORED_AS_TEXT = 4,  &
                    IERR_INCONSIST_RANGE = 8,IERR_INCONSIST_FMLA = 16,IERR_TWODIG_TEXTYEAR = 32,IERR_UNLOCK_FMLA = 64,  &
                    IERR_DATA_VALIDATION = 128 
  end enum

  enum, bind(C)
      enumerator :: PROT_DEFAULT = -1,PROT_ALL = 0,PROT_OBJECTS = 1,PROT_SCENARIOS = 2,PROT_FORMAT_CELLS = 4,  &
                    PROT_FORMAT_COLUMNS = 8,PROT_FORMAT_ROWS = 16,PROT_INSERT_COLUMNS = 32,PROT_INSERT_ROWS = 64,  &
                    PROT_INSERT_HYPERLINKS = 128,PROT_DELETE_COLUMNS = 256,PROT_DELETE_ROWS = 512,PROT_SEL_LOCKED_CELLS = 1024,  &
                    PROT_SORT = 2048,PROT_AUTOFILTER = 4096,PROT_PIVOTTABLES = 8192,PROT_SEL_UNLOCKED_CELLS = 16384 
  end enum

  enum, bind(C)
      enumerator :: VALIDATION_TYPE_NONE,VALIDATION_TYPE_WHOLE,VALIDATION_TYPE_DECIMAL,VALIDATION_TYPE_LIST,VALIDATION_TYPE_DATE,  &
                    VALIDATION_TYPE_TIME,VALIDATION_TYPE_TEXTLENGTH,VALIDATION_TYPE_CUSTOM 
  end enum

  enum, bind(C)
      enumerator :: VALIDATION_OP_BETWEEN,VALIDATION_OP_NOTBETWEEN,VALIDATION_OP_EQUAL,VALIDATION_OP_NOTEQUAL,  &
                    VALIDATION_OP_LESSTHAN,VALIDATION_OP_LESSTHANOREQUAL,VALIDATION_OP_GREATERTHAN,VALIDATION_OP_GREATERTHANOREQUAL 
  end enum

  enum, bind(C)
      enumerator :: VALIDATION_ERRSTYLE_STOP,VALIDATION_ERRSTYLE_WARNING,VALIDATION_ERRSTYLE_INFORMATION 
  end enum

  enum, bind(C)
      enumerator :: CALCMODE_MANUAL,CALCMODE_AUTO,CALCMODE_AUTONOTABLE 
  end enum

  enum, bind(C)
      enumerator :: CHECKEDTYPE_UNCHECKED,CHECKEDTYPE_CHECKED,CHECKEDTYPE_MIXED 
  end enum

  enum, bind(C)
      enumerator :: OBJECT_UNKNOWN,OBJECT_BUTTON,OBJECT_CHECKBOX,OBJECT_DROP,OBJECT_GBOX,OBJECT_LABEL,OBJECT_LIST,OBJECT_RADIO,  &
                    OBJECT_SCROLL,OBJECT_SPIN,OBJECT_EDITBOX,OBJECT_DIALOG 
  end enum

  enum, bind(C)
      enumerator :: CFORMAT_BEGINWITH,CFORMAT_CONTAINSBLANKS,CFORMAT_CONTAINSERRORS,CFORMAT_CONTAINSTEXT,CFORMAT_DUPLICATEVALUES,  &
                    CFORMAT_ENDSWITH,CFORMAT_EXPRESSION,CFORMAT_NOTCONTAINSBLANKS,CFORMAT_NOTCONTAINSERRORS,  &
                    CFORMAT_NOTCONTAINSTEXT,CFORMAT_UNIQUEVALUES 
  end enum

  enum, bind(C)
      enumerator :: CFOPERATOR_LESSTHAN,CFOPERATOR_LESSTHANOREQUAL,CFOPERATOR_EQUAL,CFOPERATOR_NOTEQUAL,  &
                    CFOPERATOR_GREATERTHANOREQUAL,CFOPERATOR_GREATERTHAN,CFOPERATOR_BETWEEN,CFOPERATOR_NOTBETWEEN,  &
                    CFOPERATOR_CONTAINSTEXT,CFOPERATOR_NOTCONTAINS,CFOPERATOR_BEGINSWITH,CFOPERATOR_ENDSWITH 
  end enum

  enum, bind(C)
      enumerator :: CFTP_LAST7DAYS,CFTP_LASTMONTH,CFTP_LASTWEEK,CFTP_NEXTMONTH,CFTP_NEXTWEEK,CFTP_THISMONTH,CFTP_THISWEEK,  &
                    CFTP_TODAY,CFTP_TOMORROW,CFTP_YESTERDAY 
  end enum

  enum, bind(C)
      enumerator :: CFVO_MIN,CFVO_MAX,CFVO_FORMULA,CFVO_NUMBER,CFVO_PERCENT,CFVO_PERCENTILE 
  end enum

  interface
    type(C_PTR) function xlCreateBook() bind(C,name = 'xlCreateBookCA')
      import
    end function

    type(C_PTR) function xlCreateXMLBook() bind(C,name = 'xlCreateXMLBookCA')
      import
    end function

    integer(C_INT) function xlBookLoad(handle,filename) bind(C,name = 'xlBookLoadA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
    end function

    integer(C_INT) function xlBookSave(handle,filename) bind(C,name = 'xlBookSaveA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
    end function

    integer(C_INT) function xlBookLoadUsingTempFile(handle,filename,tempFile) bind(C,name = 'xlBookLoadUsingTempFileA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
      character(kind = C_CHAR), dimension(*) :: tempFile
    end function

    integer(C_INT) function xlBookSaveUsingTempFile(handle,filename,useTempFile) bind(C,name = 'xlBookSaveUsingTempFileA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
      integer(C_INT), value :: useTempFile
    end function

    integer(C_INT) function xlBookLoadPartially(handle,filename,sheetIndex,firstRow,lastRow) bind(C,name = 'xlBookLoadPartiallyA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
      integer(C_INT), value :: sheetIndex
      integer(C_INT), value :: firstRow
      integer(C_INT), value :: lastRow
    end function

    integer(C_INT) function xlBookLoadPartiallyUsingTempFile(handle,filename,sheetIndex,firstRow,lastRow,tempFile)  &
        bind(C,name = 'xlBookLoadPartiallyUsingTempFileA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
      integer(C_INT), value :: sheetIndex
      integer(C_INT), value :: firstRow
      integer(C_INT), value :: lastRow
      character(kind = C_CHAR), dimension(*) :: tempFile
    end function

    integer(C_INT) function xlBookLoadWithoutEmptyCells(handle,filename) bind(C,name = 'xlBookLoadWithoutEmptyCellsA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
    end function

    integer(C_INT) function xlBookLoadInfo(handle,filename) bind(C,name = 'xlBookLoadInfoA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
    end function

    integer(C_INT) function xlBookLoadRaw(handle,data,size) bind(C,name = 'xlBookLoadRawA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: data
      integer(C_INT), value :: size
    end function

    integer(C_INT) function xlBookLoadRawPartially(handle,data,size,sheetIndex,firstRow,lastRow)  &
        bind(C,name = 'xlBookLoadRawPartiallyA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: data
      integer(C_INT), value :: size
      integer(C_INT), value :: sheetIndex
      integer(C_INT), value :: firstRow
      integer(C_INT), value :: lastRow
    end function

    integer(C_INT) function xlBookSaveRaw(handle,data,size) bind(C,name = 'xlBookSaveRawA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: data
      integer(C_INT) :: size
    end function

    type(C_PTR) function xlBookAddSheet(handle,name,initSheet) bind(C,name = 'xlBookAddSheetA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
      type(C_PTR), value :: initSheet
    end function

    type(C_PTR) function xlBookInsertSheet(handle,index,name,initSheet) bind(C,name = 'xlBookInsertSheetA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      character(kind = C_CHAR), dimension(*) :: name
      type(C_PTR), value :: initSheet
    end function

    type(C_PTR) function xlBookGetSheet(handle,index) bind(C,name = 'xlBookGetSheetA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    type(C_PTR) function xlBookGetSheetNamePtr(handle,index) bind(C,name = 'xlBookGetSheetNameA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlBookSheetType(handle,index) bind(C,name = 'xlBookSheetTypeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlBookMoveSheet(handle,srcIndex,dstIndex) bind(C,name = 'xlBookMoveSheetA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: srcIndex
      integer(C_INT), value :: dstIndex
    end function

    integer(C_INT) function xlBookDelSheet(handle,index) bind(C,name = 'xlBookDelSheetA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlBookSheetCount(handle) bind(C,name = 'xlBookSheetCountA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlBookAddFormat(handle,initFormat) bind(C,name = 'xlBookAddFormatA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: initFormat
    end function

    type(C_PTR) function xlBookAddFont(handle,initFont) bind(C,name = 'xlBookAddFontA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: initFont
    end function

    type(C_PTR) function xlBookAddRichString(handle) bind(C,name = 'xlBookAddRichStringA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlBookAddCustomNumFormat(handle,customNumFormat) bind(C,name = 'xlBookAddCustomNumFormatA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: customNumFormat
    end function

    type(C_PTR) function xlBookCustomNumFormatPtr(handle,fmt) bind(C,name = 'xlBookCustomNumFormatA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: fmt
    end function

    type(C_PTR) function xlBookFormat(handle,index) bind(C,name = 'xlBookFormatA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlBookFormatSize(handle) bind(C,name = 'xlBookFormatSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlBookFont(handle,index) bind(C,name = 'xlBookFontA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlBookFontSize(handle) bind(C,name = 'xlBookFontSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlBookAddConditionalFormat(handle) bind(C,name = 'xlBookAddConditionalFormatA')
      import
      type(C_PTR), value :: handle
    end function

    real(C_DOUBLE) function xlBookDatePack(handle,year,month,day,hour,min,sec,msec) bind(C,name = 'xlBookDatePackA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: year
      integer(C_INT), value :: month
      integer(C_INT), value :: day
      integer(C_INT), value :: hour
      integer(C_INT), value :: min
      integer(C_INT), value :: sec
      integer(C_INT), value :: msec
    end function

    integer(C_INT) function xlBookDateUnpack(handle,value,year,month,day,hour,min,sec,msec) bind(C,name = 'xlBookDateUnpackA')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: value
      integer(C_INT) :: year
      integer(C_INT) :: month
      integer(C_INT) :: day
      integer(C_INT) :: hour
      integer(C_INT) :: min
      integer(C_INT) :: sec
      integer(C_INT) :: msec
    end function

    integer(C_INT) function xlBookColorPack(handle,red,green,blue) bind(C,name = 'xlBookColorPackA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: red
      integer(C_INT), value :: green
      integer(C_INT), value :: blue
    end function

    subroutine xlBookColorUnpack(handle,color,red,green,blue) bind(C,name = 'xlBookColorUnpackA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
      integer(C_INT) :: red
      integer(C_INT) :: green
      integer(C_INT) :: blue
    end subroutine

    integer(C_INT) function xlBookActiveSheet(handle) bind(C,name = 'xlBookActiveSheetA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookSetActiveSheet(handle,index) bind(C,name = 'xlBookSetActiveSheetA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end subroutine

    integer(C_INT) function xlBookPictureSize(handle) bind(C,name = 'xlBookPictureSizeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlBookGetPicture(handle,index,data,size) bind(C,name = 'xlBookGetPictureA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      character(kind = C_CHAR), dimension(*) :: data
      integer(C_INT) :: size
    end function

    integer(C_INT) function xlBookAddPicture(handle,filename) bind(C,name = 'xlBookAddPictureA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
    end function

    integer(C_INT) function xlBookAddPicture2(handle,data,size) bind(C,name = 'xlBookAddPicture2A')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: data
      integer(C_INT), value :: size
    end function

    integer(C_INT) function xlBookAddPictureAsLink(handle,filename,insert) bind(C,name = 'xlBookAddPictureAsLinkA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: filename
      integer(C_INT), value :: insert
    end function

    type(C_PTR) function xlBookDefaultFontPtr(handle,fontSize) bind(C,name = 'xlBookDefaultFontA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: fontSize
    end function

    subroutine xlBookSetDefaultFont(handle,fontName,fontSize) bind(C,name = 'xlBookSetDefaultFontA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: fontName
      integer(C_INT), value :: fontSize
    end subroutine

    integer(C_INT) function xlBookRefR1C1(handle) bind(C,name = 'xlBookRefR1C1A')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookSetRefR1C1(handle,refR1C1) bind(C,name = 'xlBookSetRefR1C1A')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: refR1C1
    end subroutine

    subroutine xlBookSetKey(handle,name,key) bind(C,name = 'xlBookSetKeyA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
      character(kind = C_CHAR), dimension(*) :: key
    end subroutine

    integer(C_INT) function xlBookRgbMode(handle) bind(C,name = 'xlBookRgbModeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookSetRgbMode(handle,rgbMode) bind(C,name = 'xlBookSetRgbModeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rgbMode
    end subroutine

    integer(C_INT) function xlBookCalcMode(handle) bind(C,name = 'xlBookCalcModeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookSetCalcMode(handle,calcMode) bind(C,name = 'xlBookSetCalcModeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: calcMode
    end subroutine

    integer(C_INT) function xlBookVersion(handle) bind(C,name = 'xlBookVersionA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlBookBiffVersion(handle) bind(C,name = 'xlBookBiffVersionA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlBookIsDate1904(handle) bind(C,name = 'xlBookIsDate1904A')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookSetDate1904(handle,date1904) bind(C,name = 'xlBookSetDate1904A')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: date1904
    end subroutine

    integer(C_INT) function xlBookIsTemplate(handle) bind(C,name = 'xlBookIsTemplateA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookSetTemplate(handle,tmpl) bind(C,name = 'xlBookSetTemplateA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: tmpl
    end subroutine

    integer(C_INT) function xlBookIsWriteProtected(handle) bind(C,name = 'xlBookIsWriteProtectedA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlBookSetLocale(handle,locale) bind(C,name = 'xlBookSetLocaleA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: locale
    end function

    type(C_PTR) function xlBookErrorMessagePtr(handle) bind(C,name = 'xlBookErrorMessageA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlBookRelease(handle) bind(C,name = 'xlBookReleaseA')
      import
      type(C_PTR), value :: handle
    end subroutine
  end interface

  interface
    integer(C_INT) function xlSheetCellType(handle,row,col) bind(C,name = 'xlSheetCellTypeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetIsFormula(handle,row,col) bind(C,name = 'xlSheetIsFormulaA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    type(C_PTR) function xlSheetCellFormat(handle,row,col) bind(C,name = 'xlSheetCellFormatA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    subroutine xlSheetSetCellFormat(handle,row,col,format) bind(C,name = 'xlSheetSetCellFormatA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR), value :: format
    end subroutine

    type(C_PTR) function xlSheetReadStrPtr(handle,row,col,format) bind(C,name = 'xlSheetReadStrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR) :: format
    end function

    integer(C_INT) function xlSheetWriteStr(handle,row,col,value,format) bind(C,name = 'xlSheetWriteStrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: value
      type(C_PTR), value :: format
    end function

    integer(C_INT) function xlSheetWriteStrAsNum(handle,row,col,value,format) bind(C,name = 'xlSheetWriteStrAsNumA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: value
      type(C_PTR), value :: format
    end function

    type(C_PTR) function xlSheetReadRichStr(handle,row,col,format) bind(C,name = 'xlSheetReadRichStrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR) :: format
    end function

    integer(C_INT) function xlSheetWriteRichStr(handle,row,col,richString,format) bind(C,name = 'xlSheetWriteRichStrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR), value :: richString
      type(C_PTR), value :: format
    end function

    real(C_DOUBLE) function xlSheetReadNum(handle,row,col,format) bind(C,name = 'xlSheetReadNumA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR) :: format
    end function

    integer(C_INT) function xlSheetWriteNum(handle,row,col,value,format) bind(C,name = 'xlSheetWriteNumA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      real(C_DOUBLE), value :: value
      type(C_PTR), value :: format
    end function

    integer(C_INT) function xlSheetReadBool(handle,row,col,format) bind(C,name = 'xlSheetReadBoolA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR) :: format
    end function

    integer(C_INT) function xlSheetWriteBool(handle,row,col,value,format) bind(C,name = 'xlSheetWriteBoolA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      integer(C_INT), value :: value
      type(C_PTR), value :: format
    end function

    integer(C_INT) function xlSheetReadBlank(handle,row,col,format) bind(C,name = 'xlSheetReadBlankA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR) :: format
    end function

    integer(C_INT) function xlSheetWriteBlank(handle,row,col,format) bind(C,name = 'xlSheetWriteBlankA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR), value :: format
    end function

    type(C_PTR) function xlSheetReadFormulaPtr(handle,row,col,format) bind(C,name = 'xlSheetReadFormulaA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      type(C_PTR) :: format
    end function

    integer(C_INT) function xlSheetWriteFormula(handle,row,col,value,format) bind(C,name = 'xlSheetWriteFormulaA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: value
      type(C_PTR), value :: format
    end function

    integer(C_INT) function xlSheetWriteFormulaNum(handle,row,col,expr,value,format) bind(C,name = 'xlSheetWriteFormulaNumA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: expr
      real(C_DOUBLE), value :: value
      type(C_PTR), value :: format
    end function

    integer(C_INT) function xlSheetWriteFormulaStr(handle,row,col,expr,value,format) bind(C,name = 'xlSheetWriteFormulaStrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: expr
      character(kind = C_CHAR), dimension(*) :: value
      type(C_PTR), value :: format
    end function

    integer(C_INT) function xlSheetWriteFormulaBool(handle,row,col,expr,value,format) bind(C,name = 'xlSheetWriteFormulaBoolA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: expr
      integer(C_INT), value :: value
      type(C_PTR), value :: format
    end function

    type(C_PTR) function xlSheetReadCommentPtr(handle,row,col) bind(C,name = 'xlSheetReadCommentA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    subroutine xlSheetWriteComment(handle,row,col,value,author,width,height) bind(C,name = 'xlSheetWriteCommentA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      character(kind = C_CHAR), dimension(*) :: value
      character(kind = C_CHAR), dimension(*) :: author
      integer(C_INT), value :: width
      integer(C_INT), value :: height
    end subroutine

    subroutine xlSheetRemoveComment(handle,row,col) bind(C,name = 'xlSheetRemoveCommentA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end subroutine

    integer(C_INT) function xlSheetIsDate(handle,row,col) bind(C,name = 'xlSheetIsDateA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetIsRichStr(handle,row,col) bind(C,name = 'xlSheetIsRichStrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetReadError(handle,row,col) bind(C,name = 'xlSheetReadErrorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    subroutine xlSheetWriteError(handle,row,col,error,format) bind(C,name = 'xlSheetWriteErrorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      integer(C_INT), value :: error
      type(C_PTR), value :: format
    end subroutine

    real(C_DOUBLE) function xlSheetColWidth(handle,col) bind(C,name = 'xlSheetColWidthA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: col
    end function

    real(C_DOUBLE) function xlSheetRowHeight(handle,row) bind(C,name = 'xlSheetRowHeightA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
    end function

    integer(C_INT) function xlSheetColWidthPx(handle,col) bind(C,name = 'xlSheetColWidthPxA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetRowHeightPx(handle,row) bind(C,name = 'xlSheetRowHeightPxA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
    end function

    integer(C_INT) function xlSheetSetCol(handle,colFirst,colLast,width,format,hidden) bind(C,name = 'xlSheetSetColA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      real(C_DOUBLE), value :: width
      type(C_PTR), value :: format
      integer(C_INT), value :: hidden
    end function

    integer(C_INT) function xlSheetSetRow(handle,row,height,format,hidden) bind(C,name = 'xlSheetSetRowA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      real(C_DOUBLE), value :: height
      type(C_PTR), value :: format
      integer(C_INT), value :: hidden
    end function

    integer(C_INT) function xlSheetRowHidden(handle,row) bind(C,name = 'xlSheetRowHiddenA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
    end function

    integer(C_INT) function xlSheetSetRowHidden(handle,row,hidden) bind(C,name = 'xlSheetSetRowHiddenA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: hidden
    end function

    integer(C_INT) function xlSheetColHidden(handle,col) bind(C,name = 'xlSheetColHiddenA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetSetColHidden(handle,col,hidden) bind(C,name = 'xlSheetSetColHiddenA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: col
      integer(C_INT), value :: hidden
    end function

    real(C_DOUBLE) function xlSheetDefaultRowHeight(handle) bind(C,name = 'xlSheetDefaultRowHeightA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetDefaultRowHeight(handle,height) bind(C,name = 'xlSheetSetDefaultRowHeightA')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: height
    end subroutine

    integer(C_INT) function xlSheetGetMerge(handle,row,col,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetGetMergeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    integer(C_INT) function xlSheetSetMerge(handle,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetSetMergeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end function

    integer(C_INT) function xlSheetDelMerge(handle,row,col) bind(C,name = 'xlSheetDelMergeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetMergeSize(handle) bind(C,name = 'xlSheetMergeSizeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetMerge(handle,index,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetMergeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    integer(C_INT) function xlSheetDelMergeByIndex(handle,index) bind(C,name = 'xlSheetDelMergeByIndexA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlSheetPictureSize(handle) bind(C,name = 'xlSheetPictureSizeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetGetPicture(handle,index,rowTop,colLeft,rowBottom,colRight,width,height,offset_x,offset_y)  &
        bind(C,name = 'xlSheetGetPictureA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      integer(C_INT) :: rowTop
      integer(C_INT) :: colLeft
      integer(C_INT) :: rowBottom
      integer(C_INT) :: colRight
      integer(C_INT) :: width
      integer(C_INT) :: height
      integer(C_INT) :: offset_x
      integer(C_INT) :: offset_y
    end function

    integer(C_INT) function xlSheetRemovePictureByIndex(handle,index) bind(C,name = 'xlSheetRemovePictureByIndexA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    subroutine xlSheetSetPicture(handle,row,col,pictureId,scale,offset_x,offset_y,pos) bind(C,name = 'xlSheetSetPictureA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      integer(C_INT), value :: pictureId
      real(C_DOUBLE), value :: scale
      integer(C_INT), value :: offset_x
      integer(C_INT), value :: offset_y
      integer(C_INT), value :: pos
    end subroutine

    subroutine xlSheetSetPicture2(handle,row,col,pictureId,width,height,offset_x,offset_y,pos) bind(C,name = 'xlSheetSetPicture2A')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      integer(C_INT), value :: pictureId
      integer(C_INT), value :: width
      integer(C_INT), value :: height
      integer(C_INT), value :: offset_x
      integer(C_INT), value :: offset_y
      integer(C_INT), value :: pos
    end subroutine

    integer(C_INT) function xlSheetRemovePicture(handle,row,col) bind(C,name = 'xlSheetRemovePictureA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetGetHorPageBreak(handle,index) bind(C,name = 'xlSheetGetHorPageBreakA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlSheetGetHorPageBreakSize(handle) bind(C,name = 'xlSheetGetHorPageBreakSizeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetGetVerPageBreak(handle,index) bind(C,name = 'xlSheetGetVerPageBreakA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlSheetGetVerPageBreakSize(handle) bind(C,name = 'xlSheetGetVerPageBreakSizeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetSetHorPageBreak(handle,row,pageBreak) bind(C,name = 'xlSheetSetHorPageBreakA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: pageBreak
    end function

    integer(C_INT) function xlSheetSetVerPageBreak(handle,col,pageBreak) bind(C,name = 'xlSheetSetVerPageBreakA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: col
      integer(C_INT), value :: pageBreak
    end function

    subroutine xlSheetSplit(handle,row,col) bind(C,name = 'xlSheetSplitA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end subroutine

    integer(C_INT) function xlSheetSplitInfo(handle,row,col) bind(C,name = 'xlSheetSplitInfoA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: row
      integer(C_INT) :: col
    end function

    integer(C_INT) function xlSheetGroupRows(handle,rowFirst,rowLast,collapsed) bind(C,name = 'xlSheetGroupRowsA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: collapsed
    end function

    integer(C_INT) function xlSheetGroupCols(handle,colFirst,colLast,collapsed) bind(C,name = 'xlSheetGroupColsA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      integer(C_INT), value :: collapsed
    end function

    integer(C_INT) function xlSheetGroupSummaryBelow(handle) bind(C,name = 'xlSheetGroupSummaryBelowA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetGroupSummaryBelow(handle,below) bind(C,name = 'xlSheetSetGroupSummaryBelowA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: below
    end subroutine

    integer(C_INT) function xlSheetGroupSummaryRight(handle) bind(C,name = 'xlSheetGroupSummaryRightA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetGroupSummaryRight(handle,right) bind(C,name = 'xlSheetSetGroupSummaryRightA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: right
    end subroutine

    integer(C_INT) function xlSheetClear(handle,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetClearA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end function

    integer(C_INT) function xlSheetInsertCol(handle,colFirst,colLast) bind(C,name = 'xlSheetInsertColA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end function

    integer(C_INT) function xlSheetInsertRow(handle,rowFirst,rowLast) bind(C,name = 'xlSheetInsertRowA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
    end function

    integer(C_INT) function xlSheetRemoveCol(handle,colFirst,colLast) bind(C,name = 'xlSheetRemoveColA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end function

    integer(C_INT) function xlSheetRemoveRow(handle,rowFirst,rowLast) bind(C,name = 'xlSheetRemoveRowA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
    end function

    integer(C_INT) function xlSheetInsertColAndKeepRanges(handle,colFirst,colLast) bind(C,name = 'xlSheetInsertColAndKeepRangesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end function

    integer(C_INT) function xlSheetInsertRowAndKeepRanges(handle,rowFirst,rowLast) bind(C,name = 'xlSheetInsertRowAndKeepRangesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
    end function

    integer(C_INT) function xlSheetRemoveColAndKeepRanges(handle,colFirst,colLast) bind(C,name = 'xlSheetRemoveColAndKeepRangesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end function

    integer(C_INT) function xlSheetRemoveRowAndKeepRanges(handle,rowFirst,rowLast) bind(C,name = 'xlSheetRemoveRowAndKeepRangesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
    end function

    integer(C_INT) function xlSheetCopyCell(handle,rowSrc,colSrc,rowDst,colDst) bind(C,name = 'xlSheetCopyCellA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowSrc
      integer(C_INT), value :: colSrc
      integer(C_INT), value :: rowDst
      integer(C_INT), value :: colDst
    end function

    integer(C_INT) function xlSheetFirstRow(handle) bind(C,name = 'xlSheetFirstRowA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetLastRow(handle) bind(C,name = 'xlSheetLastRowA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetFirstCol(handle) bind(C,name = 'xlSheetFirstColA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetLastCol(handle) bind(C,name = 'xlSheetLastColA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetFirstFilledRow(handle) bind(C,name = 'xlSheetFirstFilledRowA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetLastFilledRow(handle) bind(C,name = 'xlSheetLastFilledRowA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetFirstFilledCol(handle) bind(C,name = 'xlSheetFirstFilledColA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetLastFilledCol(handle) bind(C,name = 'xlSheetLastFilledColA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetDisplayGridlines(handle) bind(C,name = 'xlSheetDisplayGridlinesA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetDisplayGridlines(handle,show) bind(C,name = 'xlSheetSetDisplayGridlinesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: show
    end subroutine

    integer(C_INT) function xlSheetPrintGridlines(handle) bind(C,name = 'xlSheetPrintGridlinesA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetPrintGridlines(handle,print) bind(C,name = 'xlSheetSetPrintGridlinesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: print
    end subroutine

    integer(C_INT) function xlSheetZoom(handle) bind(C,name = 'xlSheetZoomA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetZoom(handle,zoom) bind(C,name = 'xlSheetSetZoomA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: zoom
    end subroutine

    integer(C_INT) function xlSheetPrintZoom(handle) bind(C,name = 'xlSheetPrintZoomA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetPrintZoom(handle,zoom) bind(C,name = 'xlSheetSetPrintZoomA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: zoom
    end subroutine

    integer(C_INT) function xlSheetGetPrintFit(handle,wPages,hPages) bind(C,name = 'xlSheetGetPrintFitA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: wPages
      integer(C_INT) :: hPages
    end function

    subroutine xlSheetSetPrintFit(handle,wPages,hPages) bind(C,name = 'xlSheetSetPrintFitA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: wPages
      integer(C_INT), value :: hPages
    end subroutine

    integer(C_INT) function xlSheetLandscape(handle) bind(C,name = 'xlSheetLandscapeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetLandscape(handle,landscape) bind(C,name = 'xlSheetSetLandscapeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: landscape
    end subroutine

    integer(C_INT) function xlSheetPaper(handle) bind(C,name = 'xlSheetPaperA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetPaper(handle,paper) bind(C,name = 'xlSheetSetPaperA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: paper
    end subroutine

    type(C_PTR) function xlSheetHeaderPtr(handle) bind(C,name = 'xlSheetHeaderA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetSetHeader(handle,header,margin) bind(C,name = 'xlSheetSetHeaderA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: header
      real(C_DOUBLE), value :: margin
    end function

    real(C_DOUBLE) function xlSheetHeaderMargin(handle) bind(C,name = 'xlSheetHeaderMarginA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlSheetFooterPtr(handle) bind(C,name = 'xlSheetFooterA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetSetFooter(handle,footer,margin) bind(C,name = 'xlSheetSetFooterA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: footer
      real(C_DOUBLE), value :: margin
    end function

    real(C_DOUBLE) function xlSheetFooterMargin(handle) bind(C,name = 'xlSheetFooterMarginA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetHCenter(handle) bind(C,name = 'xlSheetHCenterA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetHCenter(handle,hCenter) bind(C,name = 'xlSheetSetHCenterA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: hCenter
    end subroutine

    integer(C_INT) function xlSheetVCenter(handle) bind(C,name = 'xlSheetVCenterA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetVCenter(handle,vCenter) bind(C,name = 'xlSheetSetVCenterA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: vCenter
    end subroutine

    real(C_DOUBLE) function xlSheetMarginLeft(handle) bind(C,name = 'xlSheetMarginLeftA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetMarginLeft(handle,margin) bind(C,name = 'xlSheetSetMarginLeftA')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: margin
    end subroutine

    real(C_DOUBLE) function xlSheetMarginRight(handle) bind(C,name = 'xlSheetMarginRightA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetMarginRight(handle,margin) bind(C,name = 'xlSheetSetMarginRightA')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: margin
    end subroutine

    real(C_DOUBLE) function xlSheetMarginTop(handle) bind(C,name = 'xlSheetMarginTopA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetMarginTop(handle,margin) bind(C,name = 'xlSheetSetMarginTopA')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: margin
    end subroutine

    real(C_DOUBLE) function xlSheetMarginBottom(handle) bind(C,name = 'xlSheetMarginBottomA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetMarginBottom(handle,margin) bind(C,name = 'xlSheetSetMarginBottomA')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: margin
    end subroutine

    integer(C_INT) function xlSheetPrintRowCol(handle) bind(C,name = 'xlSheetPrintRowColA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetPrintRowCol(handle,print) bind(C,name = 'xlSheetSetPrintRowColA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: print
    end subroutine

    integer(C_INT) function xlSheetPrintRepeatRows(handle,rowFirst,rowLast) bind(C,name = 'xlSheetPrintRepeatRowsA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
    end function

    subroutine xlSheetSetPrintRepeatRows(handle,rowFirst,rowLast) bind(C,name = 'xlSheetSetPrintRepeatRowsA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
    end subroutine

    integer(C_INT) function xlSheetPrintRepeatCols(handle,colFirst,colLast) bind(C,name = 'xlSheetPrintRepeatColsA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    subroutine xlSheetSetPrintRepeatCols(handle,colFirst,colLast) bind(C,name = 'xlSheetSetPrintRepeatColsA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end subroutine

    integer(C_INT) function xlSheetPrintArea(handle,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetPrintAreaA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    subroutine xlSheetSetPrintArea(handle,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetSetPrintAreaA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end subroutine

    subroutine xlSheetClearPrintRepeats(handle) bind(C,name = 'xlSheetClearPrintRepeatsA')
      import
      type(C_PTR), value :: handle
    end subroutine

    subroutine xlSheetClearPrintArea(handle) bind(C,name = 'xlSheetClearPrintAreaA')
      import
      type(C_PTR), value :: handle
    end subroutine

    integer(C_INT) function xlSheetGetNamedRange(handle,name,rowFirst,rowLast,colFirst,colLast,scopeId,hidden)  &
        bind(C,name = 'xlSheetGetNamedRangeA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
      integer(C_INT), value :: scopeId
      integer(C_INT) :: hidden
    end function

    integer(C_INT) function xlSheetSetNamedRange(handle,name,rowFirst,rowLast,colFirst,colLast,scopeId)  &
        bind(C,name = 'xlSheetSetNamedRangeA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      integer(C_INT), value :: scopeId
    end function

    integer(C_INT) function xlSheetDelNamedRange(handle,name,scopeId) bind(C,name = 'xlSheetDelNamedRangeA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
      integer(C_INT), value :: scopeId
    end function

    integer(C_INT) function xlSheetNamedRangeSize(handle) bind(C,name = 'xlSheetNamedRangeSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlSheetNamedRangePtr(handle,index,rowFirst,rowLast,colFirst,colLast,scopeId,hidden)  &
        bind(C,name = 'xlSheetNamedRangeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
      integer(C_INT) :: scopeId
      integer(C_INT) :: hidden
    end function

    integer(C_INT) function xlSheetTableSize(handle) bind(C,name = 'xlSheetTableSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlSheetTablePtr(handle,index,rowFirst,rowLast,colFirst,colLast,headerRowCount,totalsRowCount)  &
        bind(C,name = 'xlSheetTableA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
      integer(C_INT) :: headerRowCount
      integer(C_INT) :: totalsRowCount
    end function

    integer(C_INT) function xlSheetHyperlinkSize(handle) bind(C,name = 'xlSheetHyperlinkSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlSheetHyperlinkPtr(handle,index,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetHyperlinkA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    integer(C_INT) function xlSheetDelHyperlink(handle,index) bind(C,name = 'xlSheetDelHyperlinkA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    subroutine xlSheetAddHyperlink(handle,hyperlink,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlSheetAddHyperlinkA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: hyperlink
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end subroutine

    integer(C_INT) function xlSheetHyperlinkIndex(handle,row,col) bind(C,name = 'xlSheetHyperlinkIndexA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end function

    integer(C_INT) function xlSheetIsAutoFilter(handle) bind(C,name = 'xlSheetIsAutoFilterA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlSheetAutoFilter(handle) bind(C,name = 'xlSheetAutoFilterA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetApplyFilter(handle) bind(C,name = 'xlSheetApplyFilterA')
      import
      type(C_PTR), value :: handle
    end subroutine

    subroutine xlSheetRemoveFilter(handle) bind(C,name = 'xlSheetRemoveFilterA')
      import
      type(C_PTR), value :: handle
    end subroutine

    type(C_PTR) function xlSheetNamePtr(handle) bind(C,name = 'xlSheetNameA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetName(handle,name) bind(C,name = 'xlSheetSetNameA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
    end subroutine

    integer(C_INT) function xlSheetProtect(handle) bind(C,name = 'xlSheetProtectA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetProtect(handle,protect) bind(C,name = 'xlSheetSetProtectA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: protect
    end subroutine

    subroutine xlSheetSetProtectEx(handle,protect,password,enhancedProtection) bind(C,name = 'xlSheetSetProtectExA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: protect
      character(kind = C_CHAR), dimension(*) :: password
      integer(C_INT), value :: enhancedProtection
    end subroutine

    integer(C_INT) function xlSheetHidden(handle) bind(C,name = 'xlSheetHiddenA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetSetHidden(handle,hidden) bind(C,name = 'xlSheetSetHiddenA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: hidden
    end function

    subroutine xlSheetGetTopLeftView(handle,row,col) bind(C,name = 'xlSheetGetTopLeftViewA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: row
      integer(C_INT) :: col
    end subroutine

    subroutine xlSheetSetTopLeftView(handle,row,col) bind(C,name = 'xlSheetSetTopLeftViewA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end subroutine

    integer(C_INT) function xlSheetRightToLeft(handle) bind(C,name = 'xlSheetRightToLeftA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetRightToLeft(handle,rightToLeft) bind(C,name = 'xlSheetSetRightToLeftA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rightToLeft
    end subroutine

    subroutine xlSheetSetAutoFitArea(handle,rowFirst,colFirst,rowLast,colLast) bind(C,name = 'xlSheetSetAutoFitAreaA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colLast
    end subroutine

    subroutine xlSheetAddrToRowCol(handle,addr,row,col,rowRelative,colRelative) bind(C,name = 'xlSheetAddrToRowColA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: addr
      integer(C_INT) :: row
      integer(C_INT) :: col
      integer(C_INT) :: rowRelative
      integer(C_INT) :: colRelative
    end subroutine

    type(C_PTR) function xlSheetRowColToAddrPtr(handle,row,col,rowRelative,colRelative) bind(C,name = 'xlSheetRowColToAddrA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
      integer(C_INT), value :: rowRelative
      integer(C_INT), value :: colRelative
    end function

    integer(C_INT) function xlSheetTabColor(handle) bind(C,name = 'xlSheetTabColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetSetTabColor(handle,color) bind(C,name = 'xlSheetSetTabColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlSheetGetTabRgbColor(handle,red,green,blue) bind(C,name = 'xlSheetGetTabRgbColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: red
      integer(C_INT) :: green
      integer(C_INT) :: blue
    end function

    subroutine xlSheetSetTabRgbColor(handle,red,green,blue) bind(C,name = 'xlSheetSetTabRgbColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: red
      integer(C_INT), value :: green
      integer(C_INT), value :: blue
    end subroutine

    integer(C_INT) function xlSheetAddIgnoredError(handle,rowFirst,colFirst,rowLast,colLast,iError)  &
        bind(C,name = 'xlSheetAddIgnoredErrorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colLast
      integer(C_INT), value :: iError
    end function

    subroutine xlSheetAddDataValidation(handle,type,op,rowFirst,rowLast,colFirst,colLast,value1,value2)  &
        bind(C,name = 'xlSheetAddDataValidationA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: type
      integer(C_INT), value :: op
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      character(kind = C_CHAR), dimension(*) :: value1
      character(kind = C_CHAR), dimension(*) :: value2
    end subroutine

    subroutine xlSheetAddDataValidationEx(handle,type,op,rowFirst,rowLast,colFirst,colLast,value1,value2,allowBlank,hideDropDown,  &
        showInputMessage,showErrorMessage,promptTitle,prompt,errorTitle,error,errorStyle)  &
        bind(C,name = 'xlSheetAddDataValidationExA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: type
      integer(C_INT), value :: op
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      character(kind = C_CHAR), dimension(*) :: value1
      character(kind = C_CHAR), dimension(*) :: value2
      integer(C_INT), value :: allowBlank
      integer(C_INT), value :: hideDropDown
      integer(C_INT), value :: showInputMessage
      integer(C_INT), value :: showErrorMessage
      character(kind = C_CHAR), dimension(*) :: promptTitle
      character(kind = C_CHAR), dimension(*) :: prompt
      character(kind = C_CHAR), dimension(*) :: errorTitle
      character(kind = C_CHAR), dimension(*) :: error
      integer(C_INT), value :: errorStyle
    end subroutine

    subroutine xlSheetAddDataValidationDouble(handle,type,op,rowFirst,rowLast,colFirst,colLast,value1,value2)  &
        bind(C,name = 'xlSheetAddDataValidationDoubleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: type
      integer(C_INT), value :: op
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      real(C_DOUBLE), value :: value1
      real(C_DOUBLE), value :: value2
    end subroutine

    subroutine xlSheetAddDataValidationDoubleEx(handle,type,op,rowFirst,rowLast,colFirst,colLast,value1,value2,allowBlank,  &
        hideDropDown,showInputMessage,showErrorMessage,promptTitle,prompt,errorTitle,error,errorStyle)  &
        bind(C,name = 'xlSheetAddDataValidationDoubleExA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: type
      integer(C_INT), value :: op
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
      real(C_DOUBLE), value :: value1
      real(C_DOUBLE), value :: value2
      integer(C_INT), value :: allowBlank
      integer(C_INT), value :: hideDropDown
      integer(C_INT), value :: showInputMessage
      integer(C_INT), value :: showErrorMessage
      character(kind = C_CHAR), dimension(*) :: promptTitle
      character(kind = C_CHAR), dimension(*) :: prompt
      character(kind = C_CHAR), dimension(*) :: errorTitle
      character(kind = C_CHAR), dimension(*) :: error
      integer(C_INT), value :: errorStyle
    end subroutine

    subroutine xlSheetRemoveDataValidations(handle) bind(C,name = 'xlSheetRemoveDataValidationsA')
      import
      type(C_PTR), value :: handle
    end subroutine

    integer(C_INT) function xlSheetFormControlSize(handle) bind(C,name = 'xlSheetFormControlSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlSheetFormControl(handle,index) bind(C,name = 'xlSheetFormControlA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    type(C_PTR) function xlSheetAddConditionalFormatting(handle) bind(C,name = 'xlSheetAddConditionalFormattingA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlSheetGetActiveCell(handle,row,col) bind(C,name = 'xlSheetGetActiveCellA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: row
      integer(C_INT) :: col
    end function

    subroutine xlSheetSetActiveCell(handle,row,col) bind(C,name = 'xlSheetSetActiveCellA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: row
      integer(C_INT), value :: col
    end subroutine

    type(C_PTR) function xlSheetSelectionRangePtr(handle) bind(C,name = 'xlSheetSelectionRangeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlSheetAddSelectionRange(handle,sqref) bind(C,name = 'xlSheetAddSelectionRangeA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: sqref
    end subroutine

    subroutine xlSheetRemoveSelection(handle) bind(C,name = 'xlSheetRemoveSelectionA')
      import
      type(C_PTR), value :: handle
    end subroutine
  end interface

  interface
    type(C_PTR) function xlFormatFont(handle) bind(C,name = 'xlFormatFontA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormatSetFont(handle,fontHandle) bind(C,name = 'xlFormatSetFontA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: fontHandle
    end function

    integer(C_INT) function xlFormatNumFormat(handle) bind(C,name = 'xlFormatNumFormatA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetNumFormat(handle,numFormat) bind(C,name = 'xlFormatSetNumFormatA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: numFormat
    end subroutine

    integer(C_INT) function xlFormatAlignH(handle) bind(C,name = 'xlFormatAlignHA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetAlignH(handle,align) bind(C,name = 'xlFormatSetAlignHA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: align
    end subroutine

    integer(C_INT) function xlFormatAlignV(handle) bind(C,name = 'xlFormatAlignVA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetAlignV(handle,align) bind(C,name = 'xlFormatSetAlignVA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: align
    end subroutine

    integer(C_INT) function xlFormatWrap(handle) bind(C,name = 'xlFormatWrapA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetWrap(handle,wrap) bind(C,name = 'xlFormatSetWrapA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: wrap
    end subroutine

    integer(C_INT) function xlFormatRotation(handle) bind(C,name = 'xlFormatRotationA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormatSetRotation(handle,rotation) bind(C,name = 'xlFormatSetRotationA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rotation
    end function

    integer(C_INT) function xlFormatIndent(handle) bind(C,name = 'xlFormatIndentA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetIndent(handle,indent) bind(C,name = 'xlFormatSetIndentA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: indent
    end subroutine

    integer(C_INT) function xlFormatShrinkToFit(handle) bind(C,name = 'xlFormatShrinkToFitA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetShrinkToFit(handle,shrinkToFit) bind(C,name = 'xlFormatSetShrinkToFitA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: shrinkToFit
    end subroutine

    subroutine xlFormatSetBorder(handle,style) bind(C,name = 'xlFormatSetBorderA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    subroutine xlFormatSetBorderColor(handle,color) bind(C,name = 'xlFormatSetBorderColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatBorderLeft(handle) bind(C,name = 'xlFormatBorderLeftA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderLeft(handle,style) bind(C,name = 'xlFormatSetBorderLeftA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlFormatBorderRight(handle) bind(C,name = 'xlFormatBorderRightA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderRight(handle,style) bind(C,name = 'xlFormatSetBorderRightA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlFormatBorderTop(handle) bind(C,name = 'xlFormatBorderTopA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderTop(handle,style) bind(C,name = 'xlFormatSetBorderTopA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlFormatBorderBottom(handle) bind(C,name = 'xlFormatBorderBottomA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderBottom(handle,style) bind(C,name = 'xlFormatSetBorderBottomA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlFormatBorderLeftColor(handle) bind(C,name = 'xlFormatBorderLeftColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderLeftColor(handle,color) bind(C,name = 'xlFormatSetBorderLeftColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatBorderRightColor(handle) bind(C,name = 'xlFormatBorderRightColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderRightColor(handle,color) bind(C,name = 'xlFormatSetBorderRightColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatBorderTopColor(handle) bind(C,name = 'xlFormatBorderTopColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderTopColor(handle,color) bind(C,name = 'xlFormatSetBorderTopColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatBorderBottomColor(handle) bind(C,name = 'xlFormatBorderBottomColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderBottomColor(handle,color) bind(C,name = 'xlFormatSetBorderBottomColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatBorderDiagonal(handle) bind(C,name = 'xlFormatBorderDiagonalA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderDiagonal(handle,border) bind(C,name = 'xlFormatSetBorderDiagonalA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: border
    end subroutine

    integer(C_INT) function xlFormatBorderDiagonalStyle(handle) bind(C,name = 'xlFormatBorderDiagonalStyleA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderDiagonalStyle(handle,style) bind(C,name = 'xlFormatSetBorderDiagonalStyleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlFormatBorderDiagonalColor(handle) bind(C,name = 'xlFormatBorderDiagonalColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetBorderDiagonalColor(handle,color) bind(C,name = 'xlFormatSetBorderDiagonalColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatFillPattern(handle) bind(C,name = 'xlFormatFillPatternA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetFillPattern(handle,pattern) bind(C,name = 'xlFormatSetFillPatternA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: pattern
    end subroutine

    integer(C_INT) function xlFormatPatternForegroundColor(handle) bind(C,name = 'xlFormatPatternForegroundColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetPatternForegroundColor(handle,color) bind(C,name = 'xlFormatSetPatternForegroundColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatPatternBackgroundColor(handle) bind(C,name = 'xlFormatPatternBackgroundColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetPatternBackgroundColor(handle,color) bind(C,name = 'xlFormatSetPatternBackgroundColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFormatLocked(handle) bind(C,name = 'xlFormatLockedA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetLocked(handle,locked) bind(C,name = 'xlFormatSetLockedA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: locked
    end subroutine

    integer(C_INT) function xlFormatHidden(handle) bind(C,name = 'xlFormatHiddenA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormatSetHidden(handle,hidden) bind(C,name = 'xlFormatSetHiddenA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: hidden
    end subroutine
  end interface

  interface
    integer(C_INT) function xlFontSize(handle) bind(C,name = 'xlFontSizeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetSize(handle,size) bind(C,name = 'xlFontSetSizeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: size
    end subroutine

    integer(C_INT) function xlFontItalic(handle) bind(C,name = 'xlFontItalicA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetItalic(handle,italic) bind(C,name = 'xlFontSetItalicA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: italic
    end subroutine

    integer(C_INT) function xlFontStrikeOut(handle) bind(C,name = 'xlFontStrikeOutA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetStrikeOut(handle,strikeOut) bind(C,name = 'xlFontSetStrikeOutA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: strikeOut
    end subroutine

    integer(C_INT) function xlFontColor(handle) bind(C,name = 'xlFontColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetColor(handle,color) bind(C,name = 'xlFontSetColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlFontBold(handle) bind(C,name = 'xlFontBoldA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetBold(handle,bold) bind(C,name = 'xlFontSetBoldA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: bold
    end subroutine

    integer(C_INT) function xlFontScript(handle) bind(C,name = 'xlFontScriptA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetScript(handle,script) bind(C,name = 'xlFontSetScriptA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: script
    end subroutine

    integer(C_INT) function xlFontUnderline(handle) bind(C,name = 'xlFontUnderlineA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetUnderline(handle,underline) bind(C,name = 'xlFontSetUnderlineA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: underline
    end subroutine

    type(C_PTR) function xlFontNamePtr(handle) bind(C,name = 'xlFontNameA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFontSetName(handle,name) bind(C,name = 'xlFontSetNameA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: name
    end subroutine
  end interface

  interface
    integer(C_INT) function xlAutoFilterGetRef(handle,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlAutoFilterGetRefA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    subroutine xlAutoFilterSetRef(handle,rowFirst,rowLast,colFirst,colLast) bind(C,name = 'xlAutoFilterSetRefA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end subroutine

    type(C_PTR) function xlAutoFilterColumn(handle,colId) bind(C,name = 'xlAutoFilterColumnA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: colId
    end function

    integer(C_INT) function xlAutoFilterColumnSize(handle) bind(C,name = 'xlAutoFilterColumnSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlAutoFilterColumnByIndex(handle,index) bind(C,name = 'xlAutoFilterColumnByIndexA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlAutoFilterGetSortRange(handle,rowFirst,rowLast,colFirst,colLast)  &
        bind(C,name = 'xlAutoFilterGetSortRangeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: rowFirst
      integer(C_INT) :: rowLast
      integer(C_INT) :: colFirst
      integer(C_INT) :: colLast
    end function

    integer(C_INT) function xlAutoFilterGetSort(handle,columnIndex,descending) bind(C,name = 'xlAutoFilterGetSortA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: columnIndex
      integer(C_INT) :: descending
    end function

    integer(C_INT) function xlAutoFilterSetSort(handle,columnIndex,descending) bind(C,name = 'xlAutoFilterSetSortA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: columnIndex
      integer(C_INT), value :: descending
    end function

    integer(C_INT) function xlAutoFilterAddSort(handle,columnIndex,descending) bind(C,name = 'xlAutoFilterAddSortA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: columnIndex
      integer(C_INT), value :: descending
    end function
  end interface

  interface
    integer(C_INT) function xlFilterColumnIndex(handle) bind(C,name = 'xlFilterColumnIndexA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFilterColumnFilterType(handle) bind(C,name = 'xlFilterColumnFilterTypeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFilterColumnFilterSize(handle) bind(C,name = 'xlFilterColumnFilterSizeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlFilterColumnFilterPtr(handle,index) bind(C,name = 'xlFilterColumnFilterA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    subroutine xlFilterColumnAddFilter(handle,value) bind(C,name = 'xlFilterColumnAddFilterA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: value
    end subroutine

    integer(C_INT) function xlFilterColumnGetTop10(handle,value,top,percent) bind(C,name = 'xlFilterColumnGetTop10A')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE) :: value
      integer(C_INT) :: top
      integer(C_INT) :: percent
    end function

    subroutine xlFilterColumnSetTop10(handle,value,top,percent) bind(C,name = 'xlFilterColumnSetTop10A')
      import
      type(C_PTR), value :: handle
      real(C_DOUBLE), value :: value
      integer(C_INT), value :: top
      integer(C_INT), value :: percent
    end subroutine

    integer(C_INT) function xlFilterColumnGetCustomFilter(handle,op1,v1,op2,v2,andOp)  &
        bind(C,name = 'xlFilterColumnGetCustomFilterA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: op1
      character(kind = C_CHAR), dimension(*) :: v1
      integer(C_INT) :: op2
      character(kind = C_CHAR), dimension(*) :: v2
      integer(C_INT) :: andOp
    end function

    subroutine xlFilterColumnSetCustomFilter(handle,op,cond) bind(C,name = 'xlFilterColumnSetCustomFilterA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: op
      character(kind = C_CHAR), dimension(*) :: cond
    end subroutine

    subroutine xlFilterColumnSetCustomFilterEx(handle,op1,v1,op2,v2,andOp) bind(C,name = 'xlFilterColumnSetCustomFilterExA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: op1
      character(kind = C_CHAR), dimension(*) :: v1
      integer(C_INT), value :: op2
      character(kind = C_CHAR), dimension(*) :: v2
      integer(C_INT), value :: andOp
    end subroutine

    subroutine xlFilterColumnClear(handle) bind(C,name = 'xlFilterColumnClearA')
      import
      type(C_PTR), value :: handle
    end subroutine
  end interface

  interface
    type(C_PTR) function xlRichStringAddFont(handle,initFont) bind(C,name = 'xlRichStringAddFontA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: initFont
    end function

    subroutine xlRichStringAddText(handle,text,font) bind(C,name = 'xlRichStringAddTextA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: text
      type(C_PTR), value :: font
    end subroutine

    type(C_PTR) function xlRichStringGetTextPtr(handle,index,font) bind(C,name = 'xlRichStringGetTextA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      type(C_PTR) :: font
    end function

    integer(C_INT) function xlRichStringTextSize(handle) bind(C,name = 'xlRichStringTextSizeA')
      import
      type(C_PTR), value :: handle
    end function
  end interface

  interface
    integer(C_INT) function xlFormControlObjectType(handle) bind(C,name = 'xlFormControlObjectTypeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormControlChecked(handle) bind(C,name = 'xlFormControlCheckedA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetChecked(handle,checked) bind(C,name = 'xlFormControlSetCheckedA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: checked
    end subroutine

    type(C_PTR) function xlFormControlFmlaGroupPtr(handle) bind(C,name = 'xlFormControlFmlaGroupA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetFmlaGroup(handle,group) bind(C,name = 'xlFormControlSetFmlaGroupA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: group
    end subroutine

    type(C_PTR) function xlFormControlFmlaLinkPtr(handle) bind(C,name = 'xlFormControlFmlaLinkA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetFmlaLink(handle,link) bind(C,name = 'xlFormControlSetFmlaLinkA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: link
    end subroutine

    type(C_PTR) function xlFormControlFmlaRangePtr(handle) bind(C,name = 'xlFormControlFmlaRangeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetFmlaRange(handle,range) bind(C,name = 'xlFormControlSetFmlaRangeA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: range
    end subroutine

    type(C_PTR) function xlFormControlFmlaTxbxPtr(handle) bind(C,name = 'xlFormControlFmlaTxbxA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetFmlaTxbx(handle,txbx) bind(C,name = 'xlFormControlSetFmlaTxbxA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: txbx
    end subroutine

    type(C_PTR) function xlFormControlNamePtr(handle) bind(C,name = 'xlFormControlNameA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlFormControlLinkedCellPtr(handle) bind(C,name = 'xlFormControlLinkedCellA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlFormControlListFillRangePtr(handle) bind(C,name = 'xlFormControlListFillRangeA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlFormControlMacroPtr(handle) bind(C,name = 'xlFormControlMacroA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlFormControlAltTextPtr(handle) bind(C,name = 'xlFormControlAltTextA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormControlLocked(handle) bind(C,name = 'xlFormControlLockedA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormControlDefaultSize(handle) bind(C,name = 'xlFormControlDefaultSizeA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormControlPrint(handle) bind(C,name = 'xlFormControlPrintA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlFormControlDisabled(handle) bind(C,name = 'xlFormControlDisabledA')
      import
      type(C_PTR), value :: handle
    end function

    type(C_PTR) function xlFormControlItemPtr(handle,index) bind(C,name = 'xlFormControlItemA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
    end function

    integer(C_INT) function xlFormControlItemSize(handle) bind(C,name = 'xlFormControlItemSizeA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlAddItem(handle,value) bind(C,name = 'xlFormControlAddItemA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: value
    end subroutine

    subroutine xlFormControlInsertItem(handle,index,value) bind(C,name = 'xlFormControlInsertItemA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: index
      character(kind = C_CHAR), dimension(*) :: value
    end subroutine

    subroutine xlFormControlClearItems(handle) bind(C,name = 'xlFormControlClearItemsA')
      import
      type(C_PTR), value :: handle
    end subroutine

    integer(C_INT) function xlFormControlDropLines(handle) bind(C,name = 'xlFormControlDropLinesA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetDropLines(handle,lines) bind(C,name = 'xlFormControlSetDropLinesA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: lines
    end subroutine

    integer(C_INT) function xlFormControlDx(handle) bind(C,name = 'xlFormControlDxA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetDx(handle,dx) bind(C,name = 'xlFormControlSetDxA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: dx
    end subroutine

    integer(C_INT) function xlFormControlFirstButton(handle) bind(C,name = 'xlFormControlFirstButtonA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetFirstButton(handle,firstButton) bind(C,name = 'xlFormControlSetFirstButtonA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: firstButton
    end subroutine

    integer(C_INT) function xlFormControlHoriz(handle) bind(C,name = 'xlFormControlHorizA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetHoriz(handle,horiz) bind(C,name = 'xlFormControlSetHorizA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: horiz
    end subroutine

    integer(C_INT) function xlFormControlInc(handle) bind(C,name = 'xlFormControlIncA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetInc(handle,inc) bind(C,name = 'xlFormControlSetIncA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: inc
    end subroutine

    integer(C_INT) function xlFormControlGetMax(handle) bind(C,name = 'xlFormControlGetMaxA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetMax(handle,max) bind(C,name = 'xlFormControlSetMaxA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: max
    end subroutine

    integer(C_INT) function xlFormControlGetMin(handle) bind(C,name = 'xlFormControlGetMinA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetMin(handle,min) bind(C,name = 'xlFormControlSetMinA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: min
    end subroutine

    type(C_PTR) function xlFormControlMultiSelPtr(handle) bind(C,name = 'xlFormControlMultiSelA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetMultiSel(handle,value) bind(C,name = 'xlFormControlSetMultiSelA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: value
    end subroutine

    integer(C_INT) function xlFormControlSel(handle) bind(C,name = 'xlFormControlSelA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlFormControlSetSel(handle,sel) bind(C,name = 'xlFormControlSetSelA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: sel
    end subroutine

    integer(C_INT) function xlFormControlFromAnchor(handle,col,colOff,row,rowOff) bind(C,name = 'xlFormControlFromAnchorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: col
      integer(C_INT) :: colOff
      integer(C_INT) :: row
      integer(C_INT) :: rowOff
    end function

    integer(C_INT) function xlFormControlToAnchor(handle,col,colOff,row,rowOff) bind(C,name = 'xlFormControlToAnchorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT) :: col
      integer(C_INT) :: colOff
      integer(C_INT) :: row
      integer(C_INT) :: rowOff
    end function
  end interface

  interface
    subroutine xlConditionalFormattingAddRange(handle,rowFirst,rowLast,colFirst,colLast)  &
        bind(C,name = 'xlConditionalFormattingAddRangeA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: rowFirst
      integer(C_INT), value :: rowLast
      integer(C_INT), value :: colFirst
      integer(C_INT), value :: colLast
    end subroutine

    subroutine xlConditionalFormattingAddRule(handle,type,cFormat,value,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAddRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: type
      type(C_PTR), value :: cFormat
      character(kind = C_CHAR), dimension(*) :: value
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAddTopRule(handle,cFormat,value,bottom,percent,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAddTopRuleA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: cFormat
      integer(C_INT), value :: value
      integer(C_INT), value :: bottom
      integer(C_INT), value :: percent
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAddOpNumRule(handle,op,cFormat,value1,value2,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAddOpNumRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: op
      type(C_PTR), value :: cFormat
      real(C_DOUBLE), value :: value1
      real(C_DOUBLE), value :: value2
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAddOpStrRule(handle,op,cFormat,value1,value2,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAddOpStrRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: op
      type(C_PTR), value :: cFormat
      character(kind = C_CHAR), dimension(*) :: value1
      character(kind = C_CHAR), dimension(*) :: value2
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAddAboveAverageRule(handle,cFormat,aboveAverage,equalAverage,stdDev,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAddAboveAverageRuleA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: cFormat
      integer(C_INT), value :: aboveAverage
      integer(C_INT), value :: equalAverage
      integer(C_INT), value :: stdDev
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAddTimePeriodRule(handle,cFormat,timePeriod,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAddTimePeriodRuleA')
      import
      type(C_PTR), value :: handle
      type(C_PTR), value :: cFormat
      integer(C_INT), value :: timePeriod
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAdd2ColorScaleRule(handle,minColor,maxColor,minType,minValue,maxType,maxValue,stopIfTrue)  &
        bind(C,name = 'xlConditionalFormattingAdd2ColorScaleRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: minColor
      integer(C_INT), value :: maxColor
      integer(C_INT), value :: minType
      real(C_DOUBLE), value :: minValue
      integer(C_INT), value :: maxType
      real(C_DOUBLE), value :: maxValue
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAdd2ColorScaleFormulaRule(handle,minColor,maxColor,minType,minValue,maxType,maxValue,  &
        stopIfTrue) bind(C,name = 'xlConditionalFormattingAdd2ColorScaleFormulaRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: minColor
      integer(C_INT), value :: maxColor
      integer(C_INT), value :: minType
      character(kind = C_CHAR), dimension(*) :: minValue
      integer(C_INT), value :: maxType
      character(kind = C_CHAR), dimension(*) :: maxValue
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAdd3ColorScaleRule(handle,minColor,midColor,maxColor,minType,minValue,midType,midValue,  &
        maxType,maxValue,stopIfTrue) bind(C,name = 'xlConditionalFormattingAdd3ColorScaleRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: minColor
      integer(C_INT), value :: midColor
      integer(C_INT), value :: maxColor
      integer(C_INT), value :: minType
      real(C_DOUBLE), value :: minValue
      integer(C_INT), value :: midType
      real(C_DOUBLE), value :: midValue
      integer(C_INT), value :: maxType
      real(C_DOUBLE), value :: maxValue
      integer(C_INT), value :: stopIfTrue
    end subroutine

    subroutine xlConditionalFormattingAdd3ColorScaleFormulaRule(handle,minColor,midColor,maxColor,minType,minValue,midType,  &
        midValue,maxType,maxValue,stopIfTrue) bind(C,name = 'xlConditionalFormattingAdd3ColorScaleFormulaRuleA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: minColor
      integer(C_INT), value :: midColor
      integer(C_INT), value :: maxColor
      integer(C_INT), value :: minType
      character(kind = C_CHAR), dimension(*) :: minValue
      integer(C_INT), value :: midType
      character(kind = C_CHAR), dimension(*) :: midValue
      integer(C_INT), value :: maxType
      character(kind = C_CHAR), dimension(*) :: maxValue
      integer(C_INT), value :: stopIfTrue
    end subroutine
  end interface

  interface
    type(C_PTR) function xlConditionalFormatFont(handle) bind(C,name = 'xlConditionalFormatFontA')
      import
      type(C_PTR), value :: handle
    end function

    integer(C_INT) function xlConditionalFormatNumFormat(handle) bind(C,name = 'xlConditionalFormatNumFormatA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetNumFormat(handle,numFormat) bind(C,name = 'xlConditionalFormatSetNumFormatA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: numFormat
    end subroutine

    type(C_PTR) function xlConditionalFormatCustomNumFormatPtr(handle) bind(C,name = 'xlConditionalFormatCustomNumFormatA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetCustomNumFormat(handle,customNumFormat)  &
        bind(C,name = 'xlConditionalFormatSetCustomNumFormatA')
      import
      type(C_PTR), value :: handle
      character(kind = C_CHAR), dimension(*) :: customNumFormat
    end subroutine

    subroutine xlConditionalFormatSetBorder(handle,style) bind(C,name = 'xlConditionalFormatSetBorderA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    subroutine xlConditionalFormatSetBorderColor(handle,color) bind(C,name = 'xlConditionalFormatSetBorderColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderLeft(handle) bind(C,name = 'xlConditionalFormatBorderLeftA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderLeft(handle,style) bind(C,name = 'xlConditionalFormatSetBorderLeftA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderRight(handle) bind(C,name = 'xlConditionalFormatBorderRightA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderRight(handle,style) bind(C,name = 'xlConditionalFormatSetBorderRightA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderTop(handle) bind(C,name = 'xlConditionalFormatBorderTopA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderTop(handle,style) bind(C,name = 'xlConditionalFormatSetBorderTopA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderBottom(handle) bind(C,name = 'xlConditionalFormatBorderBottomA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderBottom(handle,style) bind(C,name = 'xlConditionalFormatSetBorderBottomA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: style
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderLeftColor(handle) bind(C,name = 'xlConditionalFormatBorderLeftColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderLeftColor(handle,color) bind(C,name = 'xlConditionalFormatSetBorderLeftColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderRightColor(handle) bind(C,name = 'xlConditionalFormatBorderRightColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderRightColor(handle,color) bind(C,name = 'xlConditionalFormatSetBorderRightColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderTopColor(handle) bind(C,name = 'xlConditionalFormatBorderTopColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderTopColor(handle,color) bind(C,name = 'xlConditionalFormatSetBorderTopColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlConditionalFormatBorderBottomColor(handle) bind(C,name = 'xlConditionalFormatBorderBottomColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetBorderBottomColor(handle,color) bind(C,name = 'xlConditionalFormatSetBorderBottomColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlConditionalFormatFillPattern(handle) bind(C,name = 'xlConditionalFormatFillPatternA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetFillPattern(handle,pattern) bind(C,name = 'xlConditionalFormatSetFillPatternA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: pattern
    end subroutine

    integer(C_INT) function xlConditionalFormatPatternForegroundColor(handle)  &
        bind(C,name = 'xlConditionalFormatPatternForegroundColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetPatternForegroundColor(handle,color)  &
        bind(C,name = 'xlConditionalFormatSetPatternForegroundColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine

    integer(C_INT) function xlConditionalFormatPatternBackgroundColor(handle)  &
        bind(C,name = 'xlConditionalFormatPatternBackgroundColorA')
      import
      type(C_PTR), value :: handle
    end function

    subroutine xlConditionalFormatSetPatternBackgroundColor(handle,color)  &
        bind(C,name = 'xlConditionalFormatSetPatternBackgroundColorA')
      import
      type(C_PTR), value :: handle
      integer(C_INT), value :: color
    end subroutine
  end interface


  contains


      function C_to_F_string(c_string_pointer) result (f_string)
      type(C_PTR), intent(in) :: c_string_pointer
      character(:), allocatable :: f_string

      character(kind = C_CHAR), dimension(:), pointer :: char_array_pointer => NULL()
      integer :: i,c_string_len

      interface
          function C_STRLEN(str_ptr) bind(C,name = "strlen" ) result (len)
          use, intrinsic :: ISO_C_BINDING, only:C_PTR,C_SIZE_T
              type(C_PTR), value :: str_ptr
              integer(kind = C_SIZE_T)  :: len
          end function C_STRLEN
      end interface

      if (.not.C_ASSOCIATED(c_string_pointer)) then
          allocate(character(0)::f_string)
          return
      end if
      c_string_len = C_STRLEN(c_string_pointer)

      call C_F_POINTER(c_string_pointer, char_array_pointer, [c_string_len])
      if (.not.associated(char_array_pointer)) then
          allocate(character(0)::f_string)
          return
      end if

      allocate(character(c_string_len)::f_string)
      do  i = 1,c_string_len
          f_string(i:i)=char_array_pointer(i)
      end do
      end function C_to_F_string


  function xlBookGetSheetName(handle,index) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlBookGetSheetNamePtr(handle,index))
  end function


  function xlBookCustomNumFormat(handle,fmt) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: fmt
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlBookCustomNumFormatPtr(handle,fmt))
  end function


  function xlBookDefaultFont(handle,fontSize) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT) :: fontSize
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlBookDefaultFontPtr(handle,fontSize))
  end function


  function xlBookErrorMessage(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlBookErrorMessagePtr(handle))
  end function


  function xlSheetReadStr(handle,row,col,format) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: row
  integer(C_INT), value :: col
  type(C_PTR) :: format
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetReadStrPtr(handle,row,col,format))
  end function


  function xlSheetReadFormula(handle,row,col,format) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: row
  integer(C_INT), value :: col
  type(C_PTR) :: format
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetReadFormulaPtr(handle,row,col,format))
  end function


  function xlSheetReadComment(handle,row,col) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: row
  integer(C_INT), value :: col
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetReadCommentPtr(handle,row,col))
  end function


  function xlSheetHeader(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetHeaderPtr(handle))
  end function


  function xlSheetFooter(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetFooterPtr(handle))
  end function


  function xlSheetNamedRange(handle,index,rowFirst,rowLast,colFirst,colLast,scopeId,hidden) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  integer(C_INT) :: rowFirst
  integer(C_INT) :: rowLast
  integer(C_INT) :: colFirst
  integer(C_INT) :: colLast
  integer(C_INT) :: scopeId
  integer(C_INT) :: hidden
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetNamedRangePtr(handle,index,rowFirst,rowLast,colFirst,colLast,scopeId,hidden))
  end function


  function xlSheetTable(handle,index,rowFirst,rowLast,colFirst,colLast,headerRowCount,totalsRowCount) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  integer(C_INT) :: rowFirst
  integer(C_INT) :: rowLast
  integer(C_INT) :: colFirst
  integer(C_INT) :: colLast
  integer(C_INT) :: headerRowCount
  integer(C_INT) :: totalsRowCount
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetTablePtr(handle,index,rowFirst,rowLast,colFirst,colLast,headerRowCount,totalsRowCount))
  end function


  function xlSheetHyperlink(handle,index,rowFirst,rowLast,colFirst,colLast) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  integer(C_INT) :: rowFirst
  integer(C_INT) :: rowLast
  integer(C_INT) :: colFirst
  integer(C_INT) :: colLast
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetHyperlinkPtr(handle,index,rowFirst,rowLast,colFirst,colLast))
  end function


  function xlSheetName(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetNamePtr(handle))
  end function


  function xlSheetRowColToAddr(handle,row,col,rowRelative,colRelative) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: row
  integer(C_INT), value :: col
  integer(C_INT), value :: rowRelative
  integer(C_INT), value :: colRelative
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetRowColToAddrPtr(handle,row,col,rowRelative,colRelative))
  end function


  function xlSheetSelectionRange(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlSheetSelectionRangePtr(handle))
  end function


  function xlFontName(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFontNamePtr(handle))
  end function


  function xlFilterColumnFilter(handle,index) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFilterColumnFilterPtr(handle,index))
  end function


  function xlRichStringGetText(handle,index,font) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  type(C_PTR) :: font
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlRichStringGetTextPtr(handle,index,font))
  end function


  function xlFormControlFmlaGroup(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlFmlaGroupPtr(handle))
  end function


  function xlFormControlFmlaLink(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlFmlaLinkPtr(handle))
  end function


  function xlFormControlFmlaRange(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlFmlaRangePtr(handle))
  end function


  function xlFormControlFmlaTxbx(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlFmlaTxbxPtr(handle))
  end function


  function xlFormControlName(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlNamePtr(handle))
  end function


  function xlFormControlLinkedCell(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlLinkedCellPtr(handle))
  end function


  function xlFormControlListFillRange(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlListFillRangePtr(handle))
  end function


  function xlFormControlMacro(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlMacroPtr(handle))
  end function


  function xlFormControlAltText(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlAltTextPtr(handle))
  end function


  function xlFormControlItem(handle,index) result (f_string)
  type(C_PTR), value :: handle
  integer(C_INT), value :: index
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlItemPtr(handle,index))
  end function


  function xlFormControlMultiSel(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlFormControlMultiSelPtr(handle))
  end function


  function xlConditionalFormatCustomNumFormat(handle) result (f_string)
  type(C_PTR), value :: handle
  character(:), allocatable :: f_string
  f_string = C_to_F_string(xlConditionalFormatCustomNumFormatPtr(handle))
  end function


  end module LibXL
