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

#ifndef LIBXL_TABLEA_H
#define LIBXL_TABLEA_H

#include "setup.h"
#include "handle.h"

#ifdef __cplusplus
extern "C"
{
#endif

    XLAPI      const char* XLAPIENTRY xlTableNameA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetNameA(TableHandle handle, const char* name);

    XLAPI      const char* XLAPIENTRY xlTableRefA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetRefA(TableHandle handle, const char* ref);

    XLAPI AutoFilterHandle XLAPIENTRY xlTableAutoFilterA(TableHandle handle);

    XLAPI              int XLAPIENTRY xlTableStyleA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetStyleA(TableHandle handle, int tableStyle);

    XLAPI              int XLAPIENTRY xlTableShowRowStripesA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowRowStripesA(TableHandle handle, int showRowStripes);

    XLAPI              int XLAPIENTRY xlTableShowColumnStripesA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowColumnStripesA(TableHandle handle, int showColumnStripes);

    XLAPI              int XLAPIENTRY xlTableShowFirstColumnA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowFirstColumnA(TableHandle handle, int showFirstColumn);

    XLAPI              int XLAPIENTRY xlTableShowLastColumnA(TableHandle handle);
    XLAPI             void XLAPIENTRY xlTableSetShowLastColumnA(TableHandle handle, int showLastColumn);

    XLAPI              int XLAPIENTRY xlTableColumnSizeA(TableHandle handle);
    XLAPI      const char* XLAPIENTRY xlTableColumnNameA(TableHandle handle, int columnIndex);
    XLAPI              int XLAPIENTRY xlTableSetColumnNameA(TableHandle handle, int columnIndex, const char* name);


#ifdef __cplusplus
}
#endif

#endif


