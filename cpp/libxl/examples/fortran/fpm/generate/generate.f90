PROGRAM generate

USE libxl

IMPLICIT NONE

TYPE(C_PTR) :: book, sheet
INTEGER(C_INT) :: err

book = xlCreateXMLBook()
sheet = xlBookAddSheet(book, 'mySheet'//C_NULL_CHAR, C_NULL_PTR)
err = xlSheetWriteStr(sheet, 2, 1, 'Hello, World !'//C_NULL_CHAR, C_NULL_PTR)
err = xlSheetWriteNum(sheet, 3, 1, 1000.0_C_DOUBLE, C_NULL_PTR)
err = xlBookSave(book, 'example.xlsx'//C_NULL_CHAR)
CALL xlBookRelease(book)

END PROGRAM
