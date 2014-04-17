// CrackMeV4Dlg.h : header file
//

#if !defined(AFX_CRACKMEV4DLG_H__36B3CF63_630E_4DCA_B8F9_0BA90AAD2436__INCLUDED_)
#define AFX_CRACKMEV4DLG_H__36B3CF63_630E_4DCA_B8F9_0BA90AAD2436__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CCrackMeV4Dlg dialog

class CCrackMeV4Dlg : public CDialog
{
// Construction
public:
	CCrackMeV4Dlg(CWnd* pParent = NULL);	// standard constructor
	CBrush m_brBk;

// Dialog Data
	//{{AFX_DATA(CCrackMeV4Dlg)
	enum { IDD = IDD_CRACKMEV4_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCrackMeV4Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CCrackMeV4Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	virtual void OnOK();
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CRACKMEV4DLG_H__36B3CF63_630E_4DCA_B8F9_0BA90AAD2436__INCLUDED_)
