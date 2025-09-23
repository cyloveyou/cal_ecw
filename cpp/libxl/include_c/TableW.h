///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                     LibXL C headers version 4.6.0                         //
//                  for multi-byte character set (char)                      //
//                                                                           //
//                 Copyright (c) 2008 - 2025 XLware s.r.o.                   //
//                                                                           //
//   THIS FILE AND THE SOFTWARE CONTAINED HEREIN IS PROVIDED 'AS IS' AND     //
//                COMES WITH NO WARRANTIES OF ANY KIND.                      //
//                                                                           //
//          Please define LIBXL_STATIC variable for static linking.          //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

#ifndef LIBXL_TABLEW_H
#define LIBXL_TABLEW_H

#include "setup.h"
#include "handle.h"

#ifdef __cplusplus
extern "C"
{
#endif

    XLAPI   const wchar_t* XLAPIENTRY xlTableNameW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetNameW(TableHandle handle, const wchar_t* name);

    XLAPI   const wchar_t* XLAPIENTRY xlTableRefW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetRefW(TableHandle handle, const wchar_t* ref);

    XLAPI AutoFilterHandle XLAPIENTRY xlTableAutoFilterW(TableHandle handle);

    XLAPI              int XLAPIENTRY xlTableStyleW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetStyleW(TableHandle handle, int tableStyle);

    XLAPI              int XLAPIENTRY xlTableShowRowStripesW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowRowStripesW(TableHandle handle, int showRowStripes);

    XLAPI              int XLAPIENTRY xlTableShowColumnStripesW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowColumnStripesW(TableHandle handle, int showColumnStripes);

    XLAPI              int XLAPIENTRY xlTableShowFirstColumnW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowFirstColumnW(TableHandle handle, int showFirstColumn);

    XLAPI              int XLAPIENTRY xlTableShowLastColumnW(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowLastColumnW(TableHandle handle, int showLastColumn);

    XLAPI              int XLAPIENTRY xlTableColumnSizeW(TableHandle handle);
    XLAPI   const wchar_t* XLAPIENTRY xlTableColumnNameW(TableHandle handle, int columnIndex);
    XLAPI              int XLAPIENTRY xlTableSetColumnNameW(TableHandle handle, int columnIndex, const wchar_t* name);


#ifdef __cplusplus
}
#endif

#endif



