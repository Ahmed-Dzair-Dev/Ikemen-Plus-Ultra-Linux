//-------------------------------------------------------------------------- 
// 
//  Copyright (c) Microsoft Corporation.  All rights reserved. 
// 
//  File: iacom_i.c 
//      Microsoft Tablet PC API definitions 
// 
//-------------------------------------------------------------------------- 
	
 	
 	

#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 6.00.0347 */
/* Compiler settings for iacom.idl:
    Oicf, W1, Zp8, env=Win32 (32b run)
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )

#if !defined(_M_IA64) && !defined(_M_AMD64)

#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, LIBID_COMINKANALYSISLib,0x1761E494,0xA3D0,0x4f8e,0x87,0xC5,0xC0,0x95,0x66,0xB2,0x29,0x72);


MIDL_DEFINE_GUID(IID, IID_IInkAnalyzer,0x31F8B4AE,0xF970,0x3A72,0x85,0x95,0x86,0x7D,0x28,0x6E,0x3B,0x7B);


MIDL_DEFINE_GUID(IID, IID_IContextNode,0x160BC1B3,0x5997,0x3D3C,0x9E,0x5A,0xE3,0x8B,0xCB,0x21,0x20,0x47);


MIDL_DEFINE_GUID(IID, IID_IContextNodes,0x23A56238,0xA883,0x4393,0xB5,0x39,0x8C,0x1E,0x29,0x96,0xB7,0xA2);


MIDL_DEFINE_GUID(IID, IID_IAnalysisRegion,0xF76EBC66,0xABEF,0x3248,0xAE,0x9B,0xF2,0x0D,0x4B,0x91,0x49,0xFE);


MIDL_DEFINE_GUID(IID, IID_IContextLink,0x715389A8,0x84B1,0x3B52,0x98,0xFC,0xE2,0xCC,0xCD,0x27,0xD4,0xB9);


MIDL_DEFINE_GUID(IID, IID_IContextLinks,0x2914EB5A,0x8B3D,0x4381,0xA7,0x33,0x15,0x09,0xA2,0x29,0x53,0x94);


MIDL_DEFINE_GUID(IID, IID_IInkAnalysisRecognizer,0xBD5F33DF,0xBEBB,0x3D05,0x98,0xAC,0xF0,0x98,0x6D,0x3B,0xEF,0x17);


MIDL_DEFINE_GUID(IID, IID_IInkAnalysisRecognizers,0x7C3B2C8F,0x1ADD,0x309A,0x92,0x01,0x22,0xC6,0xE0,0xDD,0xA6,0x33);


MIDL_DEFINE_GUID(IID, IID_IAnalysisAlternate,0x5DB42FCE,0x8FDE,0x3E45,0x8C,0x4A,0x22,0x4C,0x89,0x03,0x4F,0x02);


MIDL_DEFINE_GUID(IID, IID_IAnalysisAlternates,0x4262DF99,0x1C25,0x3CF8,0x98,0xCB,0x45,0x28,0xDE,0x75,0x0F,0x08);


MIDL_DEFINE_GUID(IID, IID_IAnalysisWarning,0xB7BC3EF6,0xC944,0x33C5,0x89,0x17,0x19,0xBD,0x3E,0x0C,0x83,0x27);


MIDL_DEFINE_GUID(IID, IID_IAnalysisWarnings,0x304ADA62,0xDEC1,0x35BF,0x84,0xAE,0xA6,0x1B,0xB8,0x46,0xAD,0xD7);


MIDL_DEFINE_GUID(IID, IID_IAnalysisStatus,0x8E16FC8B,0xF1DC,0x38C9,0xBB,0x8F,0x7E,0xF7,0xB0,0xD6,0xC5,0xAE);


MIDL_DEFINE_GUID(IID, IID_IMatchesCriteriaCallBack,0xA11BEA2D,0x62F5,0x3DDC,0xAE,0xFD,0x5B,0xFE,0xD2,0xED,0x43,0xE9);


MIDL_DEFINE_GUID(IID, IID__IAnalysisEvents,0x67CCF9D3,0xFE75,0x338D,0xBB,0x4B,0xFD,0x0F,0xF1,0x8C,0x82,0x58);


MIDL_DEFINE_GUID(IID, IID__IAnalysisProxyEvents,0x70049599,0x2E75,0x3FEC,0xA5,0x97,0xC8,0x19,0x11,0x05,0xF4,0xFB);


MIDL_DEFINE_GUID(CLSID, CLSID_InkAnalyzer,0xB4BAB526,0x5BA1,0x3C4D,0xAF,0x21,0xCF,0xDC,0xD9,0xAA,0xF2,0xD2);


MIDL_DEFINE_GUID(CLSID, CLSID_AnalysisRegion,0x3C3E7657,0x4F0C,0x3FC4,0x8A,0x89,0xA5,0xB0,0xF7,0xEB,0x48,0x0A);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



#endif /* !defined(_M_IA64) && !defined(_M_AMD64)*/


#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 6.00.0347 */
/* Compiler settings for iacom.idl:
    Oicf, W1, Zp8, env=Win64 (32b run,appending)
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )

#if defined(_M_IA64) || defined(_M_AMD64)

#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, LIBID_COMINKANALYSISLib,0x1761E494,0xA3D0,0x4f8e,0x87,0xC5,0xC0,0x95,0x66,0xB2,0x29,0x72);


MIDL_DEFINE_GUID(IID, IID_IInkAnalyzer,0x31F8B4AE,0xF970,0x3A72,0x85,0x95,0x86,0x7D,0x28,0x6E,0x3B,0x7B);


MIDL_DEFINE_GUID(IID, IID_IContextNode,0x160BC1B3,0x5997,0x3D3C,0x9E,0x5A,0xE3,0x8B,0xCB,0x21,0x20,0x47);


MIDL_DEFINE_GUID(IID, IID_IContextNodes,0x23A56238,0xA883,0x4393,0xB5,0x39,0x8C,0x1E,0x29,0x96,0xB7,0xA2);


MIDL_DEFINE_GUID(IID, IID_IAnalysisRegion,0xF76EBC66,0xABEF,0x3248,0xAE,0x9B,0xF2,0x0D,0x4B,0x91,0x49,0xFE);


MIDL_DEFINE_GUID(IID, IID_IContextLink,0x715389A8,0x84B1,0x3B52,0x98,0xFC,0xE2,0xCC,0xCD,0x27,0xD4,0xB9);


MIDL_DEFINE_GUID(IID, IID_IContextLinks,0x2914EB5A,0x8B3D,0x4381,0xA7,0x33,0x15,0x09,0xA2,0x29,0x53,0x94);


MIDL_DEFINE_GUID(IID, IID_IInkAnalysisRecognizer,0xBD5F33DF,0xBEBB,0x3D05,0x98,0xAC,0xF0,0x98,0x6D,0x3B,0xEF,0x17);


MIDL_DEFINE_GUID(IID, IID_IInkAnalysisRecognizers,0x7C3B2C8F,0x1ADD,0x309A,0x92,0x01,0x22,0xC6,0xE0,0xDD,0xA6,0x33);


MIDL_DEFINE_GUID(IID, IID_IAnalysisAlternate,0x5DB42FCE,0x8FDE,0x3E45,0x8C,0x4A,0x22,0x4C,0x89,0x03,0x4F,0x02);


MIDL_DEFINE_GUID(IID, IID_IAnalysisAlternates,0x4262DF99,0x1C25,0x3CF8,0x98,0xCB,0x45,0x28,0xDE,0x75,0x0F,0x08);


MIDL_DEFINE_GUID(IID, IID_IAnalysisWarning,0xB7BC3EF6,0xC944,0x33C5,0x89,0x17,0x19,0xBD,0x3E,0x0C,0x83,0x27);


MIDL_DEFINE_GUID(IID, IID_IAnalysisWarnings,0x304ADA62,0xDEC1,0x35BF,0x84,0xAE,0xA6,0x1B,0xB8,0x46,0xAD,0xD7);


MIDL_DEFINE_GUID(IID, IID_IAnalysisStatus,0x8E16FC8B,0xF1DC,0x38C9,0xBB,0x8F,0x7E,0xF7,0xB0,0xD6,0xC5,0xAE);


MIDL_DEFINE_GUID(IID, IID_IMatchesCriteriaCallBack,0xA11BEA2D,0x62F5,0x3DDC,0xAE,0xFD,0x5B,0xFE,0xD2,0xED,0x43,0xE9);


MIDL_DEFINE_GUID(IID, IID__IAnalysisEvents,0x67CCF9D3,0xFE75,0x338D,0xBB,0x4B,0xFD,0x0F,0xF1,0x8C,0x82,0x58);


MIDL_DEFINE_GUID(IID, IID__IAnalysisProxyEvents,0x70049599,0x2E75,0x3FEC,0xA5,0x97,0xC8,0x19,0x11,0x05,0xF4,0xFB);


MIDL_DEFINE_GUID(CLSID, CLSID_InkAnalyzer,0xB4BAB526,0x5BA1,0x3C4D,0xAF,0x21,0xCF,0xDC,0xD9,0xAA,0xF2,0xD2);


MIDL_DEFINE_GUID(CLSID, CLSID_AnalysisRegion,0x3C3E7657,0x4F0C,0x3FC4,0x8A,0x89,0xA5,0xB0,0xF7,0xEB,0x48,0x0A);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



#endif /* defined(_M_IA64) || defined(_M_AMD64)*/
