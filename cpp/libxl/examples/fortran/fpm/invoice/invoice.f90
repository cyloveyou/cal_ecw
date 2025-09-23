PROGRAM invoice

USE libxl

IMPLICIT NONE

TYPE(C_PTR) :: book, sheet
TYPE(C_PTR) :: boldFont, titleFont
TYPE(C_PTR) :: titleFormat, headerFormat, descriptionFormat, amountFormat, totalLabelFormat,  &
               totalFormat, signatureFormat
INTEGER(C_INT) :: err

book = xlCreateXMLBook()

boldFont = xlBookAddFont(book, C_NULL_PTR)
CALL xlFontSetBold(boldFont, 1)

titleFont = xlBookAddFont(book, C_NULL_PTR)
CALL xlFontSetName(titleFont, 'Arial Black'//C_NULL_CHAR)
CALL xlFontSetSize(titleFont, 16)

titleFormat = xlBookAddFormat(book, C_NULL_PTR)
err = xlFormatSetFont(titleFormat, titleFont)

headerFormat = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetAlignH(headerFormat, ALIGNH_CENTER)
CALL xlFormatSetBorder(headerFormat, BORDERSTYLE_THIN)
err = xlFormatSetFont(headerFormat, boldFont)
CALL xlFormatSetFillPattern(headerFormat, FILLPATTERN_SOLID)
CALL xlFormatSetPatternForegroundColor(headerFormat, COLOR_TAN)

descriptionFormat = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetBorderLeft(descriptionFormat, BORDERSTYLE_THIN)

amountFormat = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetNumFormat(amountFormat, NUMFORMAT_CURRENCY_NEGBRA)
CALL xlFormatSetBorderLeft(amountFormat, BORDERSTYLE_THIN)
CALL xlFormatSetBorderRight(amountFormat, BORDERSTYLE_THIN)

totalLabelFormat = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetBorderTop(totalLabelFormat, BORDERSTYLE_THIN)
CALL xlFormatSetAlignH(totalLabelFormat, ALIGNH_RIGHT)
err = xlFormatSetFont(totalLabelFormat, boldFont)

totalFormat = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetNumFormat(totalFormat, NUMFORMAT_CURRENCY_NEGBRA)
CALL xlFormatSetBorder(totalFormat, BORDERSTYLE_THIN)
err = xlFormatSetFont(totalFormat, boldFont)
CALL xlFormatSetFillPattern(totalFormat, FILLPATTERN_SOLID)
CALL xlFormatSetPatternForegroundColor(totalFormat, COLOR_YELLOW)

signatureFormat = xlBookAddFormat(book, C_NULL_PTR)
CALL xlFormatSetAlignH(signatureFormat, ALIGNH_CENTER)
CALL xlFormatSetBorderTop(signatureFormat, BORDERSTYLE_THIN)

sheet = xlBookAddSheet(book, 'Invoice'//C_NULL_CHAR, C_NULL_PTR)

err = xlSheetWriteStr(sheet, 2, 1, 'Invoice No. 3568'//C_NULL_CHAR, titleFormat)
err = xlSheetWriteStr(sheet, 4, 1, 'Name: John Smith'//C_NULL_CHAR, C_NULL_PTR)
err = xlSheetWriteStr(sheet, 5, 1, 'Address: San Ramon, CA 94583 USA'//C_NULL_CHAR, C_NULL_PTR)
err = xlSheetWriteStr(sheet, 7, 1, 'Description'//C_NULL_CHAR, headerFormat)
err = xlSheetWriteStr(sheet, 7, 2, 'Amount'//C_NULL_CHAR, headerFormat)
err = xlSheetWriteStr(sheet, 8, 1, 'Ball-Point Pens'//C_NULL_CHAR, descriptionFormat)
err = xlSheetWriteNum(sheet, 8, 2, 85.0_C_DOUBLE, amountFormat)
err = xlSheetWriteStr(sheet, 9, 1, 'T-Shirts'//C_NULL_CHAR, descriptionFormat)
err = xlSheetWriteNum(sheet, 9, 2, 150.0_C_DOUBLE, amountFormat)
err = xlSheetWriteStr(sheet, 10, 1, 'Tea cups'//C_NULL_CHAR, descriptionFormat)
err = xlSheetWriteNum(sheet, 10, 2, 45.0_C_DOUBLE, amountFormat)
err = xlSheetWriteStr(sheet, 11, 1, 'Total:'//C_NULL_CHAR, totalLabelFormat)
err = xlSheetWriteFormula(sheet, 11, 2, '=SUM(C9:C11)'//C_NULL_CHAR, totalFormat)
err = xlSheetWriteStr(sheet, 14, 2, 'Signature'//C_NULL_CHAR, signatureFormat)

err = xlSheetSetCol(sheet, 1, 1, 40.0_C_DOUBLE, C_NULL_PTR, 0)
err = xlSheetSetCol(sheet, 2, 2, 15.0_C_DOUBLE, C_NULL_PTR, 0)

err = xlBookSave(book, 'invoice.xlsx'//C_NULL_CHAR)

CALL xlBookRelease(book)

END PROGRAM

