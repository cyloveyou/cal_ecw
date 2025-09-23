PROGRAM extract

USE libxl

IMPLICIT NONE

TYPE(C_PTR) :: book, sheet, cell_format
character(:), allocatable :: str
REAL(C_DOUBLE) :: d

book = xlCreateXMLBook()
IF (xlBookLoad(book, 'example.xlsx'//C_NULL_CHAR) /= 0) THEN
    sheet = xlBookGetSheet(book, 0)
    str = xlSheetReadStr(sheet, 2, 1, cell_format)
    PRINT *, str
    d = xlSheetReadNum(sheet, 3, 1, cell_format)
    PRINT *, d
END IF
CALL xlBookRelease(book)

END PROGRAM