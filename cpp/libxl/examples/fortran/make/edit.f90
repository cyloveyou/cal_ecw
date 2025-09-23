PROGRAM edit

USE libxl

IMPLICIT NONE

TYPE(C_PTR) :: book, sheet, cell_format
REAL(C_DOUBLE) :: d
INTEGER(C_INT) :: err

book = xlCreateXMLBook()

IF (xlBookLoad(book, 'example.xlsx'//C_NULL_CHAR) /= 0) THEN
    sheet = xlBookGetSheet(book, 0)
    d = xlSheetReadNum(sheet, 3, 1, cell_format)
    err = xlSheetWriteNum(sheet, 3, 1, d*2, C_NULL_PTR)
    err = xlSheetWriteStr(sheet, 4, 1, 'new string'//C_NULL_CHAR, C_NULL_PTR)
    err = xlBookSave(book, 'example.xlsx'//C_NULL_CHAR)
END IF
CALL xlBookRelease(book)

END PROGRAM

