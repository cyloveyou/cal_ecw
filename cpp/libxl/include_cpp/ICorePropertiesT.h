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

#ifndef LIBXL_ICOREPROPERTIEST_H
#define LIBXL_ICOREPROPERTIEST_H

#include "setup.h"

namespace libxl
{
    template<class TCHAR>
    struct ICorePropertiesT
    {
        virtual const TCHAR* XLAPIENTRY title() const = 0;
        virtual void XLAPIENTRY setTitle(const TCHAR* title) = 0;

        virtual const TCHAR* XLAPIENTRY subject() const = 0;
        virtual void XLAPIENTRY setSubject(const TCHAR* subject) = 0;

        virtual const TCHAR* XLAPIENTRY creator() const = 0;
        virtual void XLAPIENTRY setCreator(const TCHAR* creator) = 0;

        virtual const TCHAR* XLAPIENTRY lastModifiedBy() const = 0;
        virtual void XLAPIENTRY setLastModifiedBy(const TCHAR* lastModifiedBy) = 0;

        virtual const TCHAR* XLAPIENTRY created() const = 0;
        virtual void XLAPIENTRY setCreated(const TCHAR* created) = 0;

        virtual double XLAPIENTRY createdAsDouble() const = 0;
        virtual void XLAPIENTRY setCreatedAsDouble(double created) = 0;

        virtual const TCHAR* XLAPIENTRY modified() const = 0;
        virtual void XLAPIENTRY setModified(const TCHAR* modified) = 0;

        virtual double XLAPIENTRY modifiedAsDouble() const = 0;
        virtual void XLAPIENTRY setModifiedAsDouble(double modified) = 0;

        virtual const TCHAR* XLAPIENTRY tags() const = 0;
        virtual void XLAPIENTRY setTags(const TCHAR* tags) = 0;

        virtual const TCHAR* XLAPIENTRY categories() const = 0;
        virtual void XLAPIENTRY setCategories(const TCHAR* categories) = 0;

        virtual const TCHAR* XLAPIENTRY comments() const = 0;
        virtual void XLAPIENTRY setComments(const TCHAR* comments) = 0;

        // Removes all properties
        virtual void XLAPIENTRY removeAll() = 0;

        virtual ~ICorePropertiesT() {}
    };
}

#endif



