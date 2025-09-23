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

#ifndef LIBXL_COREPROPERTIESA_H
#define LIBXL_COREPROPERTIESA_H

#include "setup.h"
#include "handle.h"

#ifdef __cplusplus
extern "C"
{
#endif

    XLAPI const char* XLAPIENTRY xlCorePropertiesTitleA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetTitleA(CorePropertiesHandle handle, const char* title);

    XLAPI const char* XLAPIENTRY xlCorePropertiesSubjectA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetSubjectA(CorePropertiesHandle handle, const char* subject);

    XLAPI const char* XLAPIENTRY xlCorePropertiesCreatorA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetCreatorA(CorePropertiesHandle handle, const char* creator);

    XLAPI const char* XLAPIENTRY xlCorePropertiesLastModifiedByA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetLastModifiedByA(CorePropertiesHandle handle, const char* lastModifiedBy);

    XLAPI const char* XLAPIENTRY xlCorePropertiesCreatedA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetCreatedA(CorePropertiesHandle handle, const char* created);

    XLAPI      double XLAPIENTRY xlCorePropertiesCreatedAsDoubleA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetCreatedAsDoubleA(CorePropertiesHandle handle, double created);

    XLAPI const char* XLAPIENTRY xlCorePropertiesModifiedA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetModifiedA(CorePropertiesHandle handle, const char* modified);

    XLAPI      double XLAPIENTRY xlCorePropertiesModifiedAsDoubleA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetModifiedAsDoubleA(CorePropertiesHandle handle, double modified);

    XLAPI const char* XLAPIENTRY xlCorePropertiesTagsA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetTagsA(CorePropertiesHandle handle, const char* tags);

    XLAPI const char* XLAPIENTRY xlCorePropertiesCategoriesA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetCategoriesA(CorePropertiesHandle handle, const char* categories);

    XLAPI const char* XLAPIENTRY xlCorePropertiesCommentsA(CorePropertiesHandle handle);
    XLAPI        void XLAPIENTRY xlCorePropertiesSetCommentsA(CorePropertiesHandle handle, const char* comments);

    // Removes all properties
    XLAPI        void XLAPIENTRY xlCorePropertiesRemoveAllA(CorePropertiesHandle handle);

#ifdef __cplusplus
}
#endif

#endif

