PROGRAM xformat

USE libxl

IMPLICIT NONE

TYPE(C_PTR) :: book, sheet, format1, font1
INTEGER(C_INT) :: err

book = xlCreateXMLBook()

font1 = xlBookAddFont(book, C_NULL_PTR)
CALL xlFontSetName(font1, 'Impact'//C_NULL_CHAR)
CALL xlFontSetSize(font1, 36)

format1 = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetAlignH(format1, ALIGNH_CENTER)
CALL xlFormatSetBorder(format1, BORDERSTYLE_MEDIUMDASHDOTDOT)
CALL xlFormatSetBorderColor(format1, COLOR_RED)
err = xlFormatSetFont(format1, font1)

sheet = xlBookAddSheet(book, 'Custom'//C_NULL_CHAR, C_NULL_PTR)
err = xlSheetWriteStr(sheet, 2, 1, 'Format'//C_NULL_CHAR, format1)
err = xlSheetSetCol(sheet, 1, 1, 25.0_C_DOUBLE, C_NULL_PTR, 0)
err = xlBookSave(book, 'format.xlsx'//C_NULL_CHAR)

CALL xlBookRelease(book)

END PROGRAM


