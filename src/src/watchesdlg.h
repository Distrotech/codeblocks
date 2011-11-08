/*
 * This file is part of the Code::Blocks IDE and licensed under the GNU General Public License, version 3
 * http://www.gnu.org/licenses/gpl-3.0.html
 */

#ifndef WATCHESDLG_H
#define WATCHESDLG_H

#include <vector>
#include <wx/panel.h>
#include <wx/popupwin.h>
#include <wx/timer.h>

#include <cbdebugger_interfaces.h>

class wxBoxSizer;
class wxPropertyGrid;
class wxPropertyGridEvent;
class wxPGProperty;
class WatchesProperty;

class WatchesDlg : public wxPanel, public cbWatchesDlg
{
    public:
        WatchesDlg();

        wxWindow* GetWindow() { return this; }

        void UpdateWatches();
        void AddWatch(cbWatch::Pointer watch);
        void RenameWatch(wxObject *prop, const wxString &newSymbol);
    private:
        void OnExpand(wxPropertyGridEvent &event);
        void OnCollapse(wxPropertyGridEvent &event);
        void OnPropertySelected(wxPropertyGridEvent &event);
        void OnPropertyChanged(wxPropertyGridEvent &event);
        void OnPropertyChanging(wxPropertyGridEvent &event);
        void OnPropertyLableEditBegin(wxPropertyGridEvent &event);
        void OnPropertyLableEditEnd(wxPropertyGridEvent &event);
        void OnPropertyRightClick(wxPropertyGridEvent &event);
        void OnIdle(wxIdleEvent &event);
        void OnKeyDown(wxKeyEvent &event);

        void OnMenuRename(wxCommandEvent &event);
        void OnMenuProperties(wxCommandEvent &event);
        void OnMenuDelete(wxCommandEvent &event);
        void OnMenuDeleteAll(wxCommandEvent &event);

        DECLARE_EVENT_TABLE()

        void DeleteProperty(WatchesProperty &prop);

        struct WatchItem
        {
            cbWatch::Pointer watch;
            wxPGProperty *property;
        };
        typedef std::vector<WatchItem> WatchItems;

        wxPropertyGrid *m_grid;
        WatchItems m_watches;
        bool m_append_empty_watch;
};


class ValueTooltip :
#ifndef __WXMAC__
    public wxPopupWindow
#else
    public wxWindow
#endif
{
    public:
        ValueTooltip(const cbWatch::Pointer &watch, wxWindow *parent);
        ~ValueTooltip();

        void Dismiss();
        void UpdateWatch();
    protected:
        virtual void OnDismiss();
    private:
        void Fit();
        void ClearWatch();
    private:

        void OnCollapse(wxPropertyGridEvent &event);
        void OnExpand(wxPropertyGridEvent &event);
        void OnTimer(wxTimerEvent &event);
    private:
        wxPropertyGrid *m_grid;
        wxBoxSizer *m_sizer;
        wxPanel *m_panel;

        wxTimer m_timer;
        int m_outsideCount;

        cbWatch::Pointer m_watch;
    private:
        DECLARE_CLASS(ValueTooltip)
        DECLARE_EVENT_TABLE()
};

#endif // WATCHESDLG_H
