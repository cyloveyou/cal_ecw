///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//                     LibXL C headers version 4.6.0                         //
//                  for unicode character set (wchar_t)                      //
//                                                                           //
//                 Copyright (c) 2008 - 2025 XLware s.r.o.                   //
//                                                                           //
//   THIS FILE AND THE SOFTWARE CONTAINED HEREIN IS PROVIDED 'AS IS' AND     //
//                COMES WITH NO WARRANTIES OF ANY KIND.                      //
//                                                                           //
//          Please define LIBXL_STATIC variable for static linking.          //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

#ifndef LIBXL_COREPROPERTIESW_H
#define LIBXL_COREPROPERTIESW_H

#include "setup.h"
#include "handle.h"

#ifdef __cplusplus
extern "C"
{
#endif

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesTitleW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetTitleW(CorePropertiesHandle handle, const wchar_t* title);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesSubjectW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetSubjectW(CorePropertiesHandle handle, const wchar_t* subject);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesCreatorW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetCreatorW(CorePropertiesHandle handle, const wchar_t* creator);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesLastModifiedByW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetLastModifiedByW(CorePropertiesHandle handle, const wchar_t* lastModifiedBy);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesCreatedW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetCreatedW(CorePropertiesHandle handle, const wchar_t* created);

    XLAPI         double XLAPIENTRY xlCorePropertiesCreatedAsDoubleW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetCreatedAsDoubleW(CorePropertiesHandle handle, double created);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesModifiedW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetModifiedW(CorePropertiesHandle handle, const wchar_t* modified);

    XLAPI         double XLAPIENTRY xlCorePropertiesModifiedAsDoubleW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetModifiedAsDoubleW(CorePropertiesHandle handle, double modified);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesTagsW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetTagsW(CorePropertiesHandle handle, const wchar_t* tags);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesCategoriesW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetCategoriesW(CorePropertiesHandle handle, const wchar_t* categories);

    XLAPI const wchar_t* XLAPIENTRY xlCorePropertiesCommentsW(CorePropertiesHandle handle);
    XLAPI           void XLAPIENTRY xlCorePropertiesSetCommentsW(CorePropertiesHandle handle, const wchar_t* comments);

    // Removes all properties
    XLAPI           void XLAPIENTRY xlCorePropertiesRemoveAllW(CorePropertiesHandle handle);

#ifdef __cplusplus
}
#endif

#endif


