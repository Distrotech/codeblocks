#ifndef RENDERE_H
#define RENDERE_H

#include <wx/dc.h>
#include <wx/string.h>
#include "singleton.h"
#include "smart_ptr.h"
#include <map>
#include <vector>

class wxFNBRenderer
{
protected:
	// A bitmap that holds the background of the
	// x button which is drawn on a tab
	wxBitmap m_tabXBgBmp, m_xBgBmp, m_leftBgBmp, m_rightBgBmp;

public:
	wxFNBRenderer();
	virtual ~wxFNBRenderer();

	/**
	 * Generic function that draws the tabs and updates values in the page container
	 * \param pageContainer window that contains the tabs drawing
	 * \param dc device context
	 */
	virtual void DrawTabs(wxWindow* pageContainer, wxDC &dc);

	/**
	 * Draw a small 'x' button on top of the tab
	 * \param pageContainer parent window on which to draw
	 * \param dc device context to use
	 * \param rect button rectangle
	 * \param tabIdx tab index
	 * \param btnStatus button status, can be one of
	 *   - wxFNB_BTN_PRESSED
	 *   - wxFNB_BTN_HOVER
	 *   - wxFNB_BTN_NONE
	 * \param tabXBgBmp [output] background bitmap of the area of the button (just before it is painted)
	 */
	virtual void DrawTabX(wxWindow* pageContainer, wxDC& dc, const wxRect& rect, const int& tabIdx, const int btnStatus);

	/**
	 * Draw tab
	 * \param pageContainer parent window on which to draw
	 * \param dc device context to use
	 * \param posx tab x coordinate
	 * \param tabIdx tab index
	 * \param tabWidth tab width
	 * \param tabHeight tab height
	 * \param btnStatus btnStatus the little 'x' button (on top of the active tab) status, can be one of
	 *   - wxFNB_BTN_PRESSED
	 *   - wxFNB_BTN_HOVER
	 *   - wxFNB_BTN_NONE
	 */
	virtual void DrawTab(wxWindow* pageContainer, wxDC &dc, const int &posx, const int &tabIdx, const int &tabWidth, const int &tabHeight, const int btnStatus) = 0;

	/**
	 * Calculate tab width , based on its index (for image, x button on tab)
	 * \param pageContainer pageContainer parent window on which to draw
	 * \param tabIdx tab index
	 * \param tabHeight the tab height (used for tan() function calculations)
	 * \return tab bouding rectangle size
	 */
	virtual int CalcTabWidth (wxWindow* pageContainer, int tabIdx, int tabHeight);

	/**
	 * Calculate tab height
	 * \param pageContainer pageContainer parent window on which to draw
	 * \return tab bouding rectangle size
	 */
	virtual int CalcTabHeight(wxWindow* pageContainer);

	/**
	 * Get a bitmap from device context, with rect size
	 * \param dc device context
	 * \param rect bitmap rectangle
	 * \param bmp [output] bitmap
	 */
	virtual void GetBitmap(wxDC& dc, const wxRect &rect, wxBitmap &bmp);

	/**
	 * Draw a bottom line for the tabs area
	 */
	void DrawTabsLine(wxWindow *pageContainer, wxDC& dc);

	/**
	 * Brighten a given colour with amount
	 * \param color starting colour
	 * \param percent percent, 0 - no change, 100 - white
	 * \return brighten colour
	 */
	static wxColor LightColour(const wxColour& color, int percent);

	/**
	 * Paint rectangle with gradient colouring
	 * \param dc device context
	 * \param rect rectangle
	 * \param startColor gradient colour 1
	 * \param endColor gradient colour 2
	 * \param vertical use vertical gradient or horizontal
	 */
	static void PaintStraightGradientBox(wxDC& dc, const wxRect& rect, const wxColour& startColor, const wxColour& endColor, bool  vertical = true);

	// Navigation buttons position
	int GetLeftButtonPos(wxWindow *pageContainer);
	int GetRightButtonPos(wxWindow *pageContainer);
	int GetXPos(wxWindow *pageContainer);
	int GetButtonsAreaLength(wxWindow *pageContainer);
	int GetDropArrowButtonPos(wxWindow *pageContainer);

	/// Draw right arrow button to the right area of the tabs
	virtual void DrawRightArrow(wxWindow *pageContainer, wxDC &dc);

	/// Draw left arrow button to the right area of the tabs
	virtual void DrawLeftArrow (wxWindow *pageContainer, wxDC &dc);

	/// Draw 'x' button to the right area of the tabs
	virtual void DrawX         (wxWindow *pageContainer, wxDC &dc);

	/**
	 * Draw drop down arrow on the right corner
	 * \param pageContainer window tabs container
	 * \param dc device context
	 */
	void DrawDropDownArrow(wxWindow* pageContainer, wxDC& dc);

protected:
	/**
	 * Generate random colour
	 * \return random colour
	 */
	wxColour RandomColor();


};

typedef SmartPtr<wxFNBRenderer> wxFNBRendererPtr;

class wxFNBRendererDefault : public wxFNBRenderer
{
public:
	wxFNBRendererDefault(){}
	virtual ~wxFNBRendererDefault(){}
	virtual void DrawTab(wxWindow* pageContainer, wxDC &dc, const int &posx, const int &tabIdx, const int &tabWidth, const int &tabHeight, const int btnStatus);
};

class wxFNBRendererVC71 : public wxFNBRenderer
{
public:
	wxFNBRendererVC71(){}
	virtual ~wxFNBRendererVC71(){}
	virtual void DrawTab(wxWindow* pageContainer, wxDC &dc, const int &posx, const int &tabIdx, const int &tabWidth, const int &tabHeight, const int btnStatus);
};

class wxFNBRendererFancy : public wxFNBRenderer
{
public:
	wxFNBRendererFancy(){}
	virtual ~wxFNBRendererFancy(){}
	virtual void DrawTab(wxWindow* pageContainer, wxDC &dc, const int &posx, const int &tabIdx, const int &tabWidth, const int &tabHeight, const int btnStatus);
};

class wxFNBRendererVC8 : public wxFNBRenderer
{
	int m_factor;
	bool m_first;

public:
	wxFNBRendererVC8() : m_factor(1), m_first(true) {}
	virtual ~wxFNBRendererVC8(){}
	virtual void DrawTab(wxWindow* pageContainer, wxDC &dc, const int &posx, const int &tabIdx, const int &tabWidth, const int &tabHeight, const int btnStatus);
	virtual void DrawTabs(wxWindow *pageContainer, wxDC &dc);
	virtual void DrawTabX(wxWindow *pageContainer, wxDC &dc, const wxRect&, const int& tabIdx, const int btnStatus);
	void NumberTabsCanFit(wxWindow *pageContainer, std::vector<wxRect> &vTabInfo, int from = -1);

private:
	void FillVC8GradientColor(wxWindow* pageContainer, wxDC &dc, const wxPoint tabPoints[], const bool bSelectedTab, const int tabIdx);
	int GetEndX(const wxPoint tabPoints[], const int &y, long style);
	int GetStartX(const wxPoint tabPoints[], const int &y, long style);

};

//-----------------------------------
// Renderer manager class
//-----------------------------------

class wxFNBRendererMgr
{
	friend class Singleton<wxFNBRendererMgr>;
	std::map<int, wxFNBRendererPtr> m_renderers;
public:
	/**
	 * Return the renderer according to the style flag, the returned pointer should not be
	 * deleted by caller, it is owned by this class
	 * \param style window style flag
	 * \return wxFNBRenderer
	 */
	wxFNBRendererPtr GetRenderer(long style);

private:
	wxFNBRendererMgr();
	virtual ~wxFNBRendererMgr();
};
typedef Singleton<wxFNBRendererMgr> wxFNBRendererMgrST;
#endif // RENDERE_H
