REQUEST HB_CODEPAGE_UTF8
REQUEST HB_LANG_PT

FUNCTION MAIN()
    hb_cdpSelect( "UTF8" )
    hb_langSelect( "PT" )
    QOut("- Gabriel Sabino - São Paulo - Pronto para aprender ADVPL!")
RETURN NIL