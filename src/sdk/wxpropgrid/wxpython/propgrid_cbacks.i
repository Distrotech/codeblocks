// THIS FILE HAS BEEN AUTO-GENERATED

%typemap(out) wxPGCheckBoxEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGCheckBoxEditor, 0);

}

%typemap(in) wxPGCheckBoxEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGCheckBoxEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGCheckBoxEditor");
        SWIG_fail;
    }

}

class PyCheckBoxEditor : public wxPGCheckBoxEditor
{
public:
    %pythonAppend PyCheckBoxEditor "self._SetSelf(self); self._RegisterMethods()"
    PyCheckBoxEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyCheckBoxEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxFloatProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxFloatProperty, 0);

}

%typemap(in) wxFloatProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxFloatProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxFloatProperty");
        SWIG_fail;
    }

}

class PyFloatProperty : public wxFloatProperty
{
public:
    %pythonAppend PyFloatProperty "self._SetSelf(self); self._RegisterMethods()"
    PyFloatProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
                     double value = 0.0 );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyFloatProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGEditorDialogAdapter* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGEditorDialogAdapter, 0);

}

%typemap(in) wxPGEditorDialogAdapter* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGEditorDialogAdapter")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGEditorDialogAdapter");
        SWIG_fail;
    }

}

class PyEditorDialogAdapter : public wxPGEditorDialogAdapter
{
public:
    %pythonAppend PyEditorDialogAdapter "self._SetSelf(self); self._RegisterMethods()"
    PyEditorDialogAdapter();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyEditorDialogAdapter, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
    virtual bool DoShowDialog( wxPropertyGrid* propGrid, wxPGProperty* property );
};

%typemap(out) wxEnumProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxEnumProperty, 0);

}

%typemap(in) wxEnumProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxEnumProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxEnumProperty");
        SWIG_fail;
    }

}

class PyEnumProperty : public wxEnumProperty
{
public:
    %pythonAppend PyEnumProperty "self._SetSelf(self); self._RegisterMethods()"
    PyEnumProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
        const wxArrayString& labels = wxArrayString(), const wxArrayInt& values = wxArrayInt(),
        int value = 0 );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyEnumProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxArrayStringProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxArrayStringProperty, 0);

}

%typemap(in) wxArrayStringProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxArrayStringProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxArrayStringProperty");
        SWIG_fail;
    }

}

class PyArrayStringProperty : public wxArrayStringProperty
{
public:
    %pythonAppend PyArrayStringProperty "self._SetSelf(self); self._RegisterMethods()"
    PyArrayStringProperty( const wxString& label = wxString_wxPG_LABEL,
                           const wxString& name = wxString_wxPG_LABEL,
                           const wxArrayString& value = wxArrayString() );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyArrayStringProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxBaseEnumProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxBaseEnumProperty, 0);

}

%typemap(in) wxBaseEnumProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxBaseEnumProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxBaseEnumProperty");
        SWIG_fail;
    }

}

class PyBaseEnumProperty : public wxBaseEnumProperty
{
public:
    %pythonAppend PyBaseEnumProperty "self._SetSelf(self); self._RegisterMethods()"
    PyBaseEnumProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyBaseEnumProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
    virtual const wxString* GetEntry( size_t index, int* pvalue ) const;
};

%typemap(out) wxPGComboBoxEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGComboBoxEditor, 0);

}

%typemap(in) wxPGComboBoxEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGComboBoxEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGComboBoxEditor");
        SWIG_fail;
    }

}

class PyComboBoxEditor : public wxPGComboBoxEditor
{
public:
    %pythonAppend PyComboBoxEditor "self._SetSelf(self); self._RegisterMethods()"
    PyComboBoxEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyComboBoxEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGFileDialogAdapter* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGFileDialogAdapter, 0);

}

%typemap(in) wxPGFileDialogAdapter* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGFileDialogAdapter")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGFileDialogAdapter");
        SWIG_fail;
    }

}

class PyFileDialogAdapter : public wxPGFileDialogAdapter
{
public:
    %pythonAppend PyFileDialogAdapter "self._SetSelf(self); self._RegisterMethods()"
    PyFileDialogAdapter();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyFileDialogAdapter, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxStringProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxStringProperty, 0);

}

%typemap(in) wxStringProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxStringProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxStringProperty");
        SWIG_fail;
    }

}

class PyStringProperty : public wxStringProperty
{
public:
    %pythonAppend PyStringProperty "self._SetSelf(self); self._RegisterMethods()"
    PyStringProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
                      const wxString& value = wxEmptyString );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyStringProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxEditEnumProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxEditEnumProperty, 0);

}

%typemap(in) wxEditEnumProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxEditEnumProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxEditEnumProperty");
        SWIG_fail;
    }

}

class PyEditEnumProperty : public wxEditEnumProperty
{
public:
    %pythonAppend PyEditEnumProperty "self._SetSelf(self); self._RegisterMethods()"
    PyEditEnumProperty( const wxString& label, const wxString& name, const wxChar** labels,
        const long* values, const wxString& value );
    PyEditEnumProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
        const wxArrayString& labels = wxArrayString(), const wxArrayInt& values = wxArrayInt(),
        const wxString& value = wxEmptyString );
    PyEditEnumProperty( const wxString& label, const wxString& name,
        wxPGChoices& choices, const wxString& value = wxEmptyString );
    PyEditEnumProperty( const wxString& label, const wxString& name, const wxChar** labels,
        const long* values, wxPGChoices* choicesCache, const wxString& value );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyEditEnumProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGChoiceAndButtonEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGChoiceAndButtonEditor, 0);

}

%typemap(in) wxPGChoiceAndButtonEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGChoiceAndButtonEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGChoiceAndButtonEditor");
        SWIG_fail;
    }

}

class PyChoiceAndButtonEditor : public wxPGChoiceAndButtonEditor
{
public:
    %pythonAppend PyChoiceAndButtonEditor "self._SetSelf(self); self._RegisterMethods()"
    PyChoiceAndButtonEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyChoiceAndButtonEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxCustomProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxCustomProperty, 0);

}

%typemap(in) wxCustomProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxCustomProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxCustomProperty");
        SWIG_fail;
    }

}

class PyCustomProperty : public wxCustomProperty
{
public:
    %pythonAppend PyCustomProperty "self._SetSelf(self); self._RegisterMethods()"
    PyCustomProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyCustomProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGProperty, 0);

}

%typemap(in) wxPGProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGProperty");
        SWIG_fail;
    }

}

class PyProperty : public wxPGProperty
{
public:
    %pythonAppend PyProperty "self._SetSelf(self); self._RegisterMethods()"
    PyProperty();
    PyProperty( const wxString& label, const wxString& name );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGTextCtrlEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGTextCtrlEditor, 0);

}

%typemap(in) wxPGTextCtrlEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGTextCtrlEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGTextCtrlEditor");
        SWIG_fail;
    }

}

class PyTextCtrlEditor : public wxPGTextCtrlEditor
{
public:
    %pythonAppend PyTextCtrlEditor "self._SetSelf(self); self._RegisterMethods()"
    PyTextCtrlEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyTextCtrlEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxDateProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxDateProperty, 0);

}

%typemap(in) wxDateProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxDateProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxDateProperty");
        SWIG_fail;
    }

}

class PyDateProperty : public wxDateProperty
{
public:
    %pythonAppend PyDateProperty "self._SetSelf(self); self._RegisterMethods()"
    PyDateProperty( const wxString& label = wxString_wxPG_LABEL,
                    const wxString& name = wxString_wxPG_LABEL,
                    const wxDateTime& value = wxDateTime() );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyDateProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxSystemColourProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxSystemColourProperty, 0);

}

%typemap(in) wxSystemColourProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxSystemColourProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxSystemColourProperty");
        SWIG_fail;
    }

}

class PySystemColourProperty : public wxSystemColourProperty
{
public:
    %pythonAppend PySystemColourProperty "self._SetSelf(self); self._RegisterMethods()"
    PySystemColourProperty( const wxString& label = wxString_wxPG_LABEL,
                            const wxString& name = wxString_wxPG_LABEL,
                            const wxColourPropertyValue& value = wxColourPropertyValue() );
    PySystemColourProperty( const wxString& label, const wxString& name,
        const wxChar** labels, const long* values, wxPGChoices* choicesCache,
        const wxColourPropertyValue& value );
    PySystemColourProperty( const wxString& label, const wxString& name,
        const wxChar** labels, const long* values, wxPGChoices* choicesCache,
        const wxColour& value );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PySystemColourProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxFlagsProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxFlagsProperty, 0);

}

%typemap(in) wxFlagsProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxFlagsProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxFlagsProperty");
        SWIG_fail;
    }

}

class PyFlagsProperty : public wxFlagsProperty
{
public:
    %pythonAppend PyFlagsProperty "self._SetSelf(self); self._RegisterMethods()"
    PyFlagsProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
        const wxArrayString& labels = wxArrayString(),
        const wxArrayInt& values = wxArrayInt(), int value = 0 );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyFlagsProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGTextCtrlAndButtonEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGTextCtrlAndButtonEditor, 0);

}

%typemap(in) wxPGTextCtrlAndButtonEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGTextCtrlAndButtonEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGTextCtrlAndButtonEditor");
        SWIG_fail;
    }

}

class PyTextCtrlAndButtonEditor : public wxPGTextCtrlAndButtonEditor
{
public:
    %pythonAppend PyTextCtrlAndButtonEditor "self._SetSelf(self); self._RegisterMethods()"
    PyTextCtrlAndButtonEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyTextCtrlAndButtonEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxFontProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxFontProperty, 0);

}

%typemap(in) wxFontProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxFontProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxFontProperty");
        SWIG_fail;
    }

}

class PyFontProperty : public wxFontProperty
{
public:
    %pythonAppend PyFontProperty "self._SetSelf(self); self._RegisterMethods()"
    PyFontProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL, const wxFont& value = wxFont() );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyFontProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxDirProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxDirProperty, 0);

}

%typemap(in) wxDirProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxDirProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxDirProperty");
        SWIG_fail;
    }

}

class PyDirProperty : public wxDirProperty
{
public:
    %pythonAppend PyDirProperty "self._SetSelf(self); self._RegisterMethods()"
    PyDirProperty( const wxString& name = wxString_wxPG_LABEL, const wxString& label = wxString_wxPG_LABEL,
                   const wxString& value = wxEmptyString );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyDirProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxCursorProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxCursorProperty, 0);

}

%typemap(in) wxCursorProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxCursorProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxCursorProperty");
        SWIG_fail;
    }

}

class PyCursorProperty : public wxCursorProperty
{
public:
    %pythonAppend PyCursorProperty "self._SetSelf(self); self._RegisterMethods()"
    PyCursorProperty( const wxString& label= wxString_wxPG_LABEL,
                      const wxString& name= wxString_wxPG_LABEL,
                      int value = 0 );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyCursorProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxFileProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxFileProperty, 0);

}

%typemap(in) wxFileProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxFileProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxFileProperty");
        SWIG_fail;
    }

}

class PyFileProperty : public wxFileProperty
{
public:
    %pythonAppend PyFileProperty "self._SetSelf(self); self._RegisterMethods()"
    PyFileProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
        const wxString& value = wxEmptyString );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyFileProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxMultiChoiceProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxMultiChoiceProperty, 0);

}

%typemap(in) wxMultiChoiceProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxMultiChoiceProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxMultiChoiceProperty");
        SWIG_fail;
    }

}

class PyMultiChoiceProperty : public wxMultiChoiceProperty
{
public:
    %pythonAppend PyMultiChoiceProperty "self._SetSelf(self); self._RegisterMethods()"
    PyMultiChoiceProperty( const wxString& label,
                           const wxString& name,
                           const wxArrayString& strings,
                           const wxArrayString& value );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyMultiChoiceProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxIntProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxIntProperty, 0);

}

%typemap(in) wxIntProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxIntProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxIntProperty");
        SWIG_fail;
    }

}

class PyIntProperty : public wxIntProperty
{
public:
    %pythonAppend PyIntProperty "self._SetSelf(self); self._RegisterMethods()"
    PyIntProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
                   long value = 0 );
    PyIntProperty( const wxString& label, const wxString& name, const wxLongLong& value );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyIntProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGEditor, 0);

}

%typemap(in) wxPGEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGEditor");
        SWIG_fail;
    }

}

class PyEditor : public wxPGEditor
{
public:
    %pythonAppend PyEditor "self._SetSelf(self); self._RegisterMethods()"
    PyEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
    virtual wxPGWindowList CreateControls( wxPropertyGrid* propgrid, wxPGProperty* property,
        const wxPoint& pos, const wxSize& size ) const;
    virtual wxString GetName() const;
    virtual bool OnEvent( wxPropertyGrid* propgrid, wxPGProperty* property,
        wxWindow* wnd_primary, wxEvent& event ) const;
    virtual void SetValueToUnspecified( wxPGProperty* property, wxWindow* ctrl ) const;
    virtual void UpdateControl( wxPGProperty* property, wxWindow* ctrl ) const;
};

%typemap(out) wxPGChoiceEditor* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGChoiceEditor, 0);

}

%typemap(in) wxPGChoiceEditor* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGChoiceEditor")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGChoiceEditor");
        SWIG_fail;
    }

}

class PyChoiceEditor : public wxPGChoiceEditor
{
public:
    %pythonAppend PyChoiceEditor "self._SetSelf(self); self._RegisterMethods()"
    PyChoiceEditor();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyChoiceEditor, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxPGLongStringDialogAdapter* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxPGLongStringDialogAdapter, 0);

}

%typemap(in) wxPGLongStringDialogAdapter* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxPGLongStringDialogAdapter")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxPGLongStringDialogAdapter");
        SWIG_fail;
    }

}

class PyLongStringDialogAdapter : public wxPGLongStringDialogAdapter
{
public:
    %pythonAppend PyLongStringDialogAdapter "self._SetSelf(self); self._RegisterMethods()"
    PyLongStringDialogAdapter();
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyLongStringDialogAdapter, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxBoolProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxBoolProperty, 0);

}

%typemap(in) wxBoolProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxBoolProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxBoolProperty");
        SWIG_fail;
    }

}

class PyBoolProperty : public wxBoolProperty
{
public:
    %pythonAppend PyBoolProperty "self._SetSelf(self); self._RegisterMethods()"
    PyBoolProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
                    bool value = false );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyBoolProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxUIntProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxUIntProperty, 0);

}

%typemap(in) wxUIntProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxUIntProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxUIntProperty");
        SWIG_fail;
    }

}

class PyUIntProperty : public wxUIntProperty
{
public:
    %pythonAppend PyUIntProperty "self._SetSelf(self); self._RegisterMethods()"
    PyUIntProperty( const wxString& label = wxString_wxPG_LABEL, const wxString& name = wxString_wxPG_LABEL,
                   unsigned long value = 0 );
    PyUIntProperty( const wxString& label, const wxString& name, const wxULongLong& value );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyUIntProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};

%typemap(out) wxLongStringProperty* {
    $result = NULL;
    if ( $1->m_scriptObject ) $result = (PyObject*)$1->m_scriptObject;
    if ( $result ) Py_INCREF($result);
    else $result = SWIG_NewPointerObj((void*)$1, SWIGTYPE_p_wxLongStringProperty, 0);

}

%typemap(in) wxLongStringProperty* {
    if ( !wxPyConvertSwigPtr($input, (void**)&$1, wxT("wxLongStringProperty")) ) {
        PyErr_SetString(PyExc_TypeError,"expected wxLongStringProperty");
        SWIG_fail;
    }

}

class PyLongStringProperty : public wxLongStringProperty
{
public:
    %pythonAppend PyLongStringProperty "self._SetSelf(self); self._RegisterMethods()"
    PyLongStringProperty( const wxString& label = wxString_wxPG_LABEL,
                          const wxString& name = wxString_wxPG_LABEL,
                          const wxString& value = wxEmptyString );
%pythoncode {
    def CallSuperMethod(self, *args, **kwargs):
        funcname = args[0]
        args2 = list(args)
        args2[0] = self
        self._super_call = True
        res = getattr(PyLongStringProperty, funcname)(*args2, **kwargs)
        del self._super_call
        return res

    def _RegisterMethods(self):
        cls = self.__class__
        if not hasattr(cls,'_pyswig_methods_registered'):
            cls._pyswig_methods_registered = True
            ls = [ab for ab in cls.__dict__.iteritems()]
            for a, b in ls:
                if not a.startswith('_'):
                    setattr(cls, '%s_t_'%a, b)
}
    void _SetSelf(PyObject *self);
};