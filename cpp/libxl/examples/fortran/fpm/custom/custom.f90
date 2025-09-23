PROGRAM custom

USE libxl

IMPLICIT NONE

TYPE(C_PTR) :: book, sheet, f(6)
INTEGER(C_INT) :: c(6), err
INTEGER :: i

book = xlCreateXMLBook()

c(1) = xlBookAddCustomNumFormat(book, '0.0'//C_NULL_CHAR)
c(2) = xlBookAddCustomNumFormat(book, '0.00'//C_NULL_CHAR)
c(3) = xlBookAddCustomNumFormat(book, '0.000'//C_NULL_CHAR)
c(4) = xlBookAddCustomNumFormat(book, '0.0000'//C_NULL_CHAR)
c(5) = xlBookAddCustomNumFormat(book, '#,###.00 $'//C_NULL_CHAR)
c(6) = xlBookAddCustomNumFormat(book, '#,###.00 $[Black][<1000];#,###.00 $[Red][>=1000]'//C_NULL_CHAR)

DO  i = 1, 6
    f(i) = xlBookAddFormat(book, C_NULL_PTR)
    CALL xlFormatSetNumFormat(f(i), c(i))
END DO

sheet = xlBookAddSheet(book, 'Custom formats'//C_NULL_CHAR, C_NULL_PTR)

err = xlSheetSetCol(sheet, 0, 0, 20.0_C_DOUBLE, C_NULL_PTR, 0)

err = xlSheetWriteNum(sheet,  2, 0,   25.718_C_DOUBLE, f(1))
err = xlSheetWriteNum(sheet,  3, 0,   25.718_C_DOUBLE, f(2))
err = xlSheetWriteNum(sheet,  4, 0,   25.718_C_DOUBLE, f(3))
err = xlSheetWriteNum(sheet,  5, 0,   25.718_C_DOUBLE, f(4))
err = xlSheetWriteNum(sheet,  7, 0, 1800.5_C_DOUBLE,   f(5))
err = xlSheetWriteNum(sheet,  9, 0,  500.0_C_DOUBLE,   f(6))
err = xlSheetWriteNum(sheet, 10, 0, 1600.0_C_DOUBLE,   f(6))

err = xlBookSave(book, 'custom.xlsx'//C_NULL_CHAR)

CALL xlBookRelease(book)

END PROGRAM
