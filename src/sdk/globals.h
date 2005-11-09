#ifndef SDK_GLOBALS_H
#define SDK_GLOBALS_H

#include "settings.h"
#include <wx/string.h>
#include <wx/treectrl.h>
#include <wx/file.h>
#include <wx/intl.h>

enum PluginType
{
    ptNone = 1,
    ptTool,
	ptMime,
    ptCompiler,
    ptDebugger,
	ptCodeCompletion,
	ptProjectWizard,
    ptOther
};

enum ModuleType
{
	mtProjectManager = 1,
	mtEditorManager,
	mtMessageManager,
	mtClassBrowser,
	mtDocumentsManager,
	mtUnknown
};

enum FileType
{
	ftCodeBlocksProject = 0,
    ftCodeBlocksWorkspace,
	ftDevCppProject,
	ftMSVCProject,
	ftMSVSProject,
	ftMSVCWorkspace,
	ftMSVSWorkspace,
	ftSource,
	ftHeader,
	ftObject,
	ftXRCResource,
	ftResource,
	ftResourceBin,
	ftStaticLib,
	ftDynamicLib,
	ftExecutable,
	ftOther
};

#define DEFAULT_ARRAY_SEP _T(";")

// global helper funcs
/// Reads a wxString from a non-unicode file. File must be open. File is closed automatically.
extern DLLIMPORT bool cbRead(wxFile& file, wxString& st);
/// Reads a wxString from a non-unicode file. File must be open. File is closed automatically.
extern DLLIMPORT wxString cbReadFileContents(wxFile& file);
/// Writes a wxString to a non-unicode file. File must be open. File is closed automatically.
extern DLLIMPORT bool cbWrite(wxFile& file, const wxString& buff);

extern DLLIMPORT wxString GetStringFromArray(const wxArrayString& array, const wxString& separator = DEFAULT_ARRAY_SEP);
extern DLLIMPORT wxArrayString GetArrayFromString(const wxString& text, const wxString& separator = DEFAULT_ARRAY_SEP, bool trimSpaces = true);
extern DLLIMPORT void AppendArray(const wxArrayString& from, wxArrayString& to);

extern DLLIMPORT wxString UnixFilename(const wxString& filename);
extern DLLIMPORT void QuoteStringIfNeeded(wxString& str);

extern DLLIMPORT FileType FileTypeOf(const wxString& filename);

extern DLLIMPORT void SaveTreeState(wxTreeCtrl* tree, const wxTreeItemId& parent, wxArrayString& nodePaths);
extern DLLIMPORT void RestoreTreeState(wxTreeCtrl* tree, const wxTreeItemId& parent, wxArrayString& nodePaths);

extern DLLIMPORT bool CreateDirRecursively(const wxString& full_path, int perms = 0755);
extern DLLIMPORT wxString ChooseDirectory(wxWindow* parent,
                                          const wxString& message = _("Select directory"),
                                          const wxString& initialPath = _T(""),
                                          const wxString& basePath = _T(""),
                                          bool askToMakeRelative = false, // relative to basePath
                                          bool showCreateDirButton = false); // where supported

wxString wxBase64Encode(const wxString &str);
wxString wxBase64Decode(const wxString &str);

#endif // SDK_GLOBALS_H
