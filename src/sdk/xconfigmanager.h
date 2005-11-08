#ifndef X_CONFIGMANAGER_H
#define X_CONFIGMANAGER_H

#include <wx/wx.h>
#include "settings.h"


class DLLIMPORT XmlConfigManager
{
    friend class CfgMgrBldr;

    TiXmlDocument *doc;
    TiXmlElement* root;
    TiXmlElement* pathNode;

    static wxString app_path;
    static wxString data_path;
    static wxString config_folder;
    static wxString home_folder;

    XmlConfigManager(TiXmlElement* r);
    TiXmlElement* AssertPath(wxString& path);
    TiXmlElement* GetUniqElement(TiXmlElement* p, const wxString& q);
    void SetNodeText(TiXmlElement *n, const TiXmlText& t);

public:

    static wxString LocateDataFile(const wxString& filename);

    static wxString GetHomeFolder();
    static wxString GetConfigFolder();
    static wxString GetPluginsFolder();
    static wxString GetDataFolder();
    static wxString GetExecutableFolder();

    wxString GetPath() const;
    void SetPath(const wxString& strPath);

    void Write(const wxString& name,  const wxString& value);
    wxString Read(const wxString& key, const wxString& defaultVal = wxEmptyString);
    bool Read(const wxString& key, wxString* str);

    void Write(const wxString& name,  int value);
    bool Read(const wxString& name,  int* value);
    int  ReadInt(const wxString& name,  int defaultVal = 0);

    void Write(const wxString& name,  double value);
    bool Read(const wxString& name,  double* value);
    double ReadDouble(const wxString& name,  double defaultVal = 0.0f);

    bool Exists(const wxString& name);
    void Set(const wxString& name);
    void UnSet(const wxString& name);

    void Write(const wxString& name,  const wxArrayString& as);
    //wxArrayString Read(const wxString& name);

    void WriteBinary(const wxString& name,  const wxString& source);
    void WriteBinary(const wxString& name,  void* ptr, size_t len);
    wxString ReadBinary(const wxString& name);


    //    bool GetFirstGroup(wxString& str, long& index);
    //    bool GetNextGroup(wxString& str, long& index);
    //    bool RenameGroup(const wxString&  oldName, const wxString&  newName);
    //    bool GetFirstEntry(wxString& str, long& index);
    //    bool GetNextEntry(wxString& str, long& index);
    //    unsigned int GetNumberOfGroups(bool bRecursive = FALSE);
    //    bool KeyExists(const wxString& name);
};




/* ------------------------------------------------------------------------------------------------------------------
*  "Builder pattern" class for XmlConfigManager
*  Do not use this class.
*  --->  use Manager::Get()->GetConfigManager("yournamespace") instead.
*
*  Manager::Get()->GetConfigManager("yournamespace") is *guaranteed* to always work, and unlike the builder class,
*  it is aware of applicaton shutdowns.
*  The builder class will be changed in the near future. You have been warned.
*/

WX_DECLARE_STRING_HASH_MAP(XmlConfigManager*, NamespaceMap);

class DLLIMPORT CfgMgrBldr
{
    NamespaceMap namespaces;
    TiXmlDocument *doc;

    CfgMgrBldr();
    ~CfgMgrBldr();
    void Close();
    XmlConfigManager* Instantiate(const wxString& name_space);
public:
    static XmlConfigManager* Get(const wxString& name_space);
    void SwitchTo(const wxString& absFN);
};


#endif

