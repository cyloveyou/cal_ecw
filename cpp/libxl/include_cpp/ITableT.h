///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                    LibXL C++ headers version 4.6.0                        //
//                                                                           //
//                 Copyright (c) 2008 - 2025 XLware s.r.o.                   //
//                                                                           //
//   THIS FILE AND THE SOFTWARE CONTAINED HEREIN IS PROVIDED 'AS IS' AND     //
//                COMES WITH NO WARRANTIES OF ANY KIND.                      //
//                                                                           //
//          Please define LIBXL_STATIC variable for static linking.          //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

#ifndef LIBXL_ITABLET_H
#define LIBXL_ITABLET_H

#include "setup.h"

namespace libxl
{
    template<class TCHAR> struct IAutoFilterT;

    template<class TCHAR>
    struct ITableT
    {
        virtual         const TCHAR* XLAPIENTRY name() const = 0;
        virtual                 void XLAPIENTRY setName(const TCHAR* name) = 0;

        virtual         const TCHAR* XLAPIENTRY ref() const = 0;
        virtual                 void XLAPIENTRY setRef(const TCHAR* ref) = 0;

        virtual IAutoFilterT<TCHAR>* XLAPIENTRY autoFilter() = 0;

        virtual           TableStyle XLAPIENTRY style() const = 0;
        virtual                 void XLAPIENTRY setStyle(TableStyle tableStyle) = 0;

        virtual                 bool XLAPIENTRY showRowStripes() const = 0;
        virtual                 void XLAPIENTRY setShowRowStripes(bool showRowStripes = true) = 0;

        virtual                 bool XLAPIENTRY showColumnStripes() const = 0;
        virtual                 void XLAPIENTRY setShowColumnStripes(bool showColumnStripes = true) = 0;

        virtual                 bool XLAPIENTRY showFirstColumn() const = 0;
        virtual                 void XLAPIENTRY setShowFirstColumn(bool showFirstColumn = true) = 0;

        virtual                 bool XLAPIENTRY showLastColumn() const = 0;
        virtual                 void XLAPIENTRY setShowLastColumn(bool showLastColumn = true) = 0;

        virtual                  int XLAPIENTRY columnSize() const = 0;
        virtual         const TCHAR* XLAPIENTRY columnName(int columnIndex) const = 0;
        virtual                 bool XLAPIENTRY setColumnName(int columnIndex, const TCHAR* name) = 0;

        virtual                                 ~ITableT() {}
    };
}

#endif

