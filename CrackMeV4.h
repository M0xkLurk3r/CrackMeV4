// CrackMeV4.h : main header file for the CRACKMEV4 application
//

#if !defined(AFX_CRACKMEV4_H__35FC8DA2_5E80_443B_B209_486415930ED1__INCLUDED_)
#define AFX_CRACKMEV4_H__35FC8DA2_5E80_443B_B209_486415930ED1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CCrackMeV4App:
// See CrackMeV4.cpp for the implementation of this class
//

class CCrackMeV4App : public CWinApp
{
public:
	CCrackMeV4App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCrackMeV4App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CCrackMeV4App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CRACKMEV4_H__35FC8DA2_5E80_443B_B209_486415930ED1__INCLUDED_)
