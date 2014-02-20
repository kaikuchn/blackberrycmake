# This file is generated via the lib_extractor.rb script.
# Information contained in this file is extracted from the blackberry-sdk-descriptor.xml file.

# set QNX_TARGET based on the environment variable
if(NOT DEFINED QNX_TARGET)
	set(QNX_TARGET $ENV{QNX_TARGET})
endif()
		
set(BB_LIB_PATHS lib usr/lib usr/lib/qt4/lib)

# BlackBerry Push Service -- communication -- Push notification support.
set(PUSHSERVICE_LIBRARY_NAME PushService)
set(PUSHSERVICE_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/communications/push)

# Counters -- utilities -- Tool used to collect logs and statistics from field devices
set(COUNTERS_LIBRARY_NAME counters)

# XML 2 -- data -- The Gnome XML parsing library version 2.
set(XML2_LIBRARY_NAME xml2)
set(XML2_INCLUDE_DIR ${QNX_TARGET}/usr/include/libxml)

# BlackBerry Multimedia -- multimedia -- 
set(BBMULTIMEDIA_LIBRARY_NAME bbmultimedia)

# Qt SVG -- graphics -- Classes for displaying and creating SVG graphics.
set(QTSVG_LIBRARY_NAME QtSvg)
set(QTSVG_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtSvg)

# BlackBerry Geo Search -- platform -- N/A
set(BBGEOSEARCH_LIBRARY_NAME bbgeosearch)

#  -- device -- 
set(QTLOCATIONSUBSET_LIBRARY_NAME QtLocationSubset)
set(QTLOCATIONSUBSET_INCLUDE_DIR ${QNX_TARGET}/usr/include/libQtLocationSubset)

# OpenGL ES 1.1 -- graphics -- OpenGL ES version 1.1.
set(EGL_LIBRARY_NAME EGL)

# Cascades Multimedia QML Plugin -- multimedia -- 
set(BBCASCADESMULTIMEDIAQMLPLUGIN_1_0_LIBRARY_NAME bbcascadesmultimediaqmlplugin_1_0)

# N/A -- multimedia -- N/A
set(BBBCASCADESMULTIMEDIA_LIBRARY_NAME bbbcascadesmultimedia)
set(BBBCASCADESMULTIMEDIA_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/multimedia)

# Qt Script -- utilities -- Facilities to make Qt applications scriptable.  See QtScriptTools for additional utilities.
set(QTSCRIPT_LIBRARY_NAME QtScript)
set(QTSCRIPT_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtScript)

# Charset -- utilities -- API for working with character sets.
set(CHARSET_LIBRARY_NAME charset)

# BlackBerry Data Access -- data -- APIs for JSON, SQLite, XML, and the file system.
set(BBDATA_LIBRARY_NAME bbdata)
set(BBDATA_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/data)

# Qt Declarative -- utilities -- Declarative framework for building dynamic, custom user interfaces.
set(QTDECLARATIVE_LIBRARY_NAME QtDeclarative)
set(QTDECLARATIVE_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtDeclarative)

# BlackBerry Cascades Multimedia -- multimedia -- 
set(BBCASCADESMULTIMEDIA_LIBRARY_NAME bbcascadesmultimedia)

# Advanced Linux Sound Architecture -- multimedia -- The Advanced Linux Sound Architecture library.
set(ASOUND_LIBRARY_NAME asound)

# OpenAL -- multimedia -- OpenAL audio rendering engine.
set(OPENAL_LIBRARY_NAME OpenAL)
set(OPENAL_INCLUDE_DIR ${QNX_TARGET}/usr/include/AL)

# Universal Compression Library -- utilities -- UCL portable lossless compression library.
set(UCL_LIBRARY_NAME ucl)

# GIFLIB -- graphics -- A library and utilities for processing GIFs
set(GIF_LIBRARY_NAME gif)

#  -- ui -- 
set(BBPOSITION_LIBRARY_NAME bbposition)

# OpenAL Utility Toolkit -- multimedia -- OpenAL Utility Toolkit.
set(ALUT_LIBRARY_NAME alut)
set(ALUT_INCLUDE_DIR ${QNX_TARGET}/usr/include/AL)

# SIM Security -- security -- SIM Securitylib
set(SIMSECURITY_LIBRARY_NAME simSecurity)

# BlackBerry Application Platform -- platform -- Platform APIs for payments, wallpaper, and notifications.
set(BBPLATFORM_LIBRARY_NAME bbplatform)
set(BBPLATFORM_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/platform)

# Qt OpenGL -- graphics -- Access to the OpenGL API for 3D rendering.
set(QTOPENGL_LIBRARY_NAME QtOpenGL)
set(QTOPENGL_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtOpenGL)

# BlackBerry Messenger Social Platform -- messaging -- BlackBerry Messenger Social Platform APIs used by BBM Connected Apps to integrate with BBM for Social Interaction.
set(BBMSP_LIBRARY_NAME bbmsp)
set(BBMSP_INCLUDE_DIR ${QNX_TARGET}/usr/include/bbmsp)

# Qt Collator -- utilities -- Localized string collation/ordering.
set(QTCOLLATOR_LIBRARY_NAME QtCollator)
set(QTCOLLATOR_INCLUDE_DIR ${QNX_TARGET}/usr/include/Qt-Labs)

# String Pattern Service -- utilities -- String pattern matching service.
set(STRPATTERN_LIBRARY_NAME strpattern)

# Math -- utilities -- A collection of mathematical functions.
set(M_LIBRARY_NAME m)

# BB Native Advertisement API -- monetization -- BB Native Advertisement API
set(BBADS_LIBRARY_NAME bbads)
set(BBADS_INCLUDE_DIR ${QNX_TARGET}/usr/include/bbads)

# XML Transforms -- data -- The Gnome XSL transformation library.
set(XSLT_LIBRARY_NAME xslt)
set(XSLT_INCLUDE_DIR ${QNX_TARGET}/usr/include/libxslt)

# PNG -- graphics -- API for working with PNG images.
set(PNG_LIBRARY_NAME png)

# Internationalization -- utilities -- I18n services
set(I18N_LIBRARY_NAME i18n)

# Clipboard -- utilities -- API for copy and paste operations on the clipboard.
set(CLIPBOARD_LIBRARY_NAME clipboard)

# ZIP/Gzip -- utilities -- API for working with ZIP/Gzip archives and ZIP/Gzip compression of data streams.
set(Z_LIBRARY_NAME z)

# QR Encoder -- utilities -- Library for generating QR-Code matrix barcodes.
set(QRENCODER_LIBRARY_NAME QREncoder)

# Gestures -- platform -- API for definition and recognition of touch gestures.
set(GESTURES_LIBRARY_NAME gestures)
set(GESTURES_INCLUDE_DIR ${QNX_TARGET}/usr/include/gestures)

# Smart Card -- security -- Smart Card API
set(SCS_LIBRARY_NAME scs)
set(SCS_INCLUDE_DIR ${QNX_TARGET}/usr/include/smartcard)

# JPEG -- graphics -- API for working with JPEG images.
set(JPEG_LIBRARY_NAME jpeg)

# WebKit -- platform -- Web Browser Engine
set(WEBKIT_LIBRARY_NAME webkit)

# BlackBerry Geofence Library -- platform -- API for Geofence Service
set(GEOMONITOR_LIBRARY_NAME geomonitor)

# OpenSSL -- security -- OpenSSL library for Secure Sockets Layer.
set(SSL_LIBRARY_NAME ssl)
set(SSL_INCLUDE_DIR ${QNX_TARGET}/usr/include/openssl)

# HarfBuzz -- graphics -- An OpenType text shaping library.
set(HARFBUZZ_LIBRARY_NAME harfbuzz)

# ZXing (Zebra Crossing) -- utilities -- Multi-format 1D/2D barcode image processing library
set(ZXING_LIBRARY_NAME zxing)

# BlackBerry Application Core -- platform -- Core application lifecycle APIs for Cascades applications (Application class, BPS and PPS utilities)
set(BB_LIBRARY_NAME bb)
set(BB_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb)

# XMP -- multimedia -- Adobe's Extensible Metadata Platform (XMP) is a labeling technology that allows you to embed data about a file, known as metadata, into the file itself.
set(XMP_LIBRARY_NAME xmp)
set(XMP_INCLUDE_DIR ${QNX_TARGET}/usr/include/xmp)

# Near Field Communication (BPS Wrapper) -- communication -- BPS wrapper for the NFC C APIs.
set(NFC_BPS_LIBRARY_NAME nfc_bps)
set(NFC_BPS_INCLUDE_DIR ${QNX_TARGET}/usr/include/nfc)

# Qt Script Tools -- utilities -- Additional tools for applications that use QtScript.
set(QTSCRIPTTOOLS_LIBRARY_NAME QtScriptTools)
set(QTSCRIPTTOOLS_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtScriptTools)

# PIM Lib -- messaging -- Library serving as gateway to pim-core
set(BBPIM_LIBRARY_NAME bbpim)

# Qt Near Field Communication (NFC) API -- communication -- Provides Qt API for parsing and creating NDEF messages
set(QTNFCSUBSET_LIBRARY_NAME QtNfcSubset)
set(QTNFCSUBSET_INCLUDE_DIR ${QNX_TARGET}/usr/include/libQtNfcSubset)

# Google Url -- utilities -- URL parsing and canonicalization library
set(GOOGLEURL_LIBRARY_NAME googleurl)

# BlackBerry Cascades -- ui -- Rich UI Development for BlackBerry Apps.
set(BBCASCADES_LIBRARY_NAME bbcascades)

# Phone Number -- communication -- Phone Number Utility Functions
set(PHONE-NUMBER_LIBRARY_NAME phone-number)

# SB OpenSSL Engine Loader -- security -- Library to enable loading the SB OpenSSL Engine
set(LOADSBENGINE_LIBRARY_NAME loadsbengine)
set(LOADSBENGINE_INCLUDE_DIR ${QNX_TARGET}/usr/include/sbengine)

# Bzip2 -- utilities -- API for working with Bzip2 archives and Bzip2 compression of data streams.
set(BZIP2_LIBRARY_NAME bzip2)

# BlackBerry Platform Services -- platform -- Common platform services used by many applications, including interaction with the Navigator and sensors such as the GPS and the accelerometer.
set(BPS_LIBRARY_NAME bps)

# Near Field Communication -- communication -- C APIs for NFC.
set(NFCAPI_LIBRARY_NAME nfcapi)
set(NFCAPI_INCLUDE_DIR ${QNX_TARGET}/usr/include/nfc)

# IDS -- utilities -- The IDS Library contains API references for Bootstrapping and interacting with Identity Services on the BlackBerry platform
set(IDS_LIBRARY_NAME ids)

# push_service -- communication -- Push C API
set(PUSH_SERVICE_LIBRARY_NAME push_service)
set(PUSH_SERVICE_INCLUDE_DIR ${QNX_TARGET}/usr/include/push)

# Client Server Messaging (CSM) -- communication -- Client Server Messaging Library
set(CSM_LIBRARY_NAME csm)

# Iconv -- utilities -- The Iconv Unicode string conversion library.
set(ICONV_LIBRARY_NAME iconv)

# Cascades Data Manager -- data -- Tools to manage data for cascades applications
set(BBCASCADESDATAMANAGER_LIBRARY_NAME bbcascadesdatamanager)
set(BBCASCADESDATAMANAGER_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/cascades/datamanager)

# Peripheral Discovery -- communication -- Library for discovering connected peripherals and getting information about them
set(PERIPHERAL_DISCOVERY_LIBRARY_NAME peripheral_discovery)

# Qt Multimedia -- multimedia -- Low level audio and video functionality.
set(QTMULTIMEDIA_LIBRARY_NAME QtMultimedia)
set(QTMULTIMEDIA_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtMultimedia)

# WordType Layout Engine -- graphics -- Library for composing, positioning and rendering text in multiple languages.
set(WTLE_LIBRARY_NAME WTLE)

# Curl -- communication -- Client-side URL resource transfer library.
set(CURL_LIBRARY_NAME curl)

# Spell Check Client -- utilities -- Common spell checking utilities
set(SPELLCHECK_CLIENT_LIBRARY_NAME spellcheck_client)

# Library used for service discovery -- communication -- 1.0
set(DNS_SD_LIBRARY_NAME dns_sd)

# Sensors -- device -- Native sensor API
set(SENSOR_LIBRARY_NAME sensor)
set(SENSOR_INCLUDE_DIR ${QNX_TARGET}/usr/include/sensor/libsensor.h)

# World Magnetic Model -- platform -- World Magnetic Model
set(WMM_LIBRARY_NAME wmm)
set(WMM_INCLUDE_DIR ${QNX_TARGET}/usr/include/wmm)

# BlackBerry Cascades File Picker -- ui -- N/A
set(BBCASCADESPICKERS_LIBRARY_NAME bbcascadespickers)
set(BBCASCADESPICKERS_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/cascades/pickers)

# Qt Network -- communication -- Tools to make network programming (http, ftp, sockets, etc...) easier and more portable.
set(QTNETWORK_LIBRARY_NAME QtNetwork)
set(QTNETWORK_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtNetwork)

# LibTIFF -- graphics -- TIFF Library and Utilities
set(TIFF_LIBRARY_NAME tiff)

# LBS Core Services -- ui -- 
set(BBPLATFORMPLACES_LIBRARY_NAME bbplatformplaces)

# Exif -- graphics -- API for working with EXIF data in image files.
set(EXIF_LIBRARY_NAME exif)

# Screen -- graphics -- Screen rendering and compositing layer.
set(SCREEN_LIBRARY_NAME screen)

# GLView -- graphics -- OpenGL Extensions Viewer, displays information about the current OpenGL 3D accelerator.
set(GLVIEW_LIBRARY_NAME glview)

# Qt XML -- data -- Stream reader and writer for XML documents, and C++ implementations of SAX and DOM.
set(QTXML_LIBRARY_NAME QtXml)
set(QTXML_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtXml)

# BlackBerry Cascades Ad API -- monetization -- BlackBerry Cascades Ad API
set(CASCADESADVERTISEMENT_LIBRARY_NAME cascadesadvertisement)
set(CASCADESADVERTISEMENT_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/cascades/advertisement)

# Fonts -- graphics -- Monotype fonts
set(FONTS_LIBRARY_NAME fonts)

# Unified Data Source -- messaging --  API for Integration with Hub
set(UNIFIEDDATASOURCEC_LIBRARY_NAME unifieddatasourcec)
set(UNIFIEDDATASOURCEC_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/pim/unified)

# QtNfcShare -- communication -- Qt NFC Share API
set(QTNFCSHARE_LIBRARY_NAME QtNfcShare)
set(QTNFCSHARE_INCLUDE_DIR ${QNX_TARGET}/usr/include/QtNfcShare)

# Qt Test -- utilities -- Support for unit testing Qt applications and libraries.
set(QTTEST_LIBRARY_NAME QtTest)
set(QTTEST_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtTest)

# VPN Extensions Library -- communication -- Library to be used by provider apps that extend VPN functionality
set(VPN_EXT_LIBRARY_NAME vpn_ext)
set(VPN_EXT_INCLUDE_DIR ${QNX_TARGET}/usr/include/vpnext)

# ICU -- utilities -- International Components for Unicode for C/C++ (ICU4C).
set(ICUI18N_LIBRARY_NAME icui18n)

# Skia -- graphics -- 2D graphics library for drawing text, geometry and images
set(GRSKIA_LIBRARY_NAME grskia)

# TCS Map Render Engine -- graphics -- Library provided by TCS for rendering their map data.
set(RENDERENGINE3D_LIBRARY_NAME RenderEngine3d)

# OpenGL ES 2 -- graphics -- OpenGL ES version 2.
set(EGL_LIBRARY_NAME EGL)

# Bluetooth API (BTAPI) -- communication -- Bluetooth APIs for 3rd party development
set(BTAPI_LIBRARY_NAME btapi)
set(BTAPI_INCLUDE_DIR ${QNX_TARGET}/usr/include/btapi)

# PackageInfo -- utilities -- Library for accessing BAR metadata
set(PACKAGEINFO_LIBRARY_NAME packageinfo)

# BlackBerry Cascades Places API -- ui -- 
set(BBCASCADESPLACES_LIBRARY_NAME bbcascadesplaces)

# BlackBerry Device Info -- device -- Access to hardware information and control, such as battery level, physical display parameters, LED signalling, face detection, and orientation.
set(BBDEVICE_LIBRARY_NAME bbdevice)
set(BBDEVICE_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/device)

# Geo Search -- platform -- Geocoding / Reverse geocoding library
set(GEO_SEARCH_LIBRARY_NAME geo_search)

# Expat -- data -- The Expat XML parsing library.
set(EXPAT_LIBRARY_NAME expat)

# Lib Archive -- utilities -- Multi-format archive and compression library
set(ARCHIVE_LIBRARY_NAME archive)

# Qt XML Patterns -- data -- Support for XPath, XQuery, XSLT and XML Schema validation.
set(QTXMLPATTERNS_LIBRARY_NAME QtXmlPatterns)
set(QTXMLPATTERNS_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtXmlPatterns)

# Earth Geopotential Model -- platform -- Earth Geopotential Model
set(EGM_LIBRARY_NAME egm)
set(EGM_INCLUDE_DIR ${QNX_TARGET}/usr/include/egm)

# Qt Multimedia Kit -- multimedia -- 
set(QTMULTIMEDIAKIT_LIBRARY_NAME QtMultimediaKit)

# Qt Gui -- graphics -- Extends QtCore with GUI functionality.
set(QTGUI_LIBRARY_NAME QtGui)
set(QTGUI_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtGui)

# Images -- graphics -- API for working with graphical images and image files.
set(IMG_LIBRARY_NAME img)
set(IMG_INCLUDE_DIR ${QNX_TARGET}/usr/include/img)

# iType -- platform -- 
set(ITYPE_LIBRARY_NAME iType)

# BlackBerry Social Platform BBM -- messaging -- N/A
set(BBPLATFORMBBM_LIBRARY_NAME bbplatformbbm)

# BlackBerry System -- ui -- System APIs for the clipboard, toasts, dialogs, and inter-application invocation.
set(BBSYSTEM_LIBRARY_NAME bbsystem)
set(BBSYSTEM_INCLUDE_DIR ${QNX_TARGET}/usr/include/bb/system)

# Socket -- communication -- API for TCP socket communication.
set(SOCKET_LIBRARY_NAME socket)

# Qt Sensors -- device -- 
set(QTSENSORS_LIBRARY_NAME QtSensors)

# Lzma -- utilities -- API for lzma compression.
set(LZMA_LIBRARY_NAME lzma)

# PNG 1.4 -- graphics -- API for working with PNG images
set(PNG14_LIBRARY_NAME png14)
set(PNG14_INCLUDE_DIR ${QNX_TARGET}/usr/include/libpng14)

# PNG 1.6 -- graphics -- API for working with PNG images
set(PNG16_LIBRARY_NAME png16)
set(PNG16_INCLUDE_DIR ${QNX_TARGET}/usr/include/libpng16)

# FreeType 2 -- graphics -- Open-source library for working with OpenType fonts.
set(FREETYPE2_LIBRARY_NAME freetype2)
set(FREETYPE2_INCLUDE_DIR ${QNX_TARGET}/usr/include/freetype2)

# Qt SQL -- data -- SQL database tools.
set(QTSQL_LIBRARY_NAME QtSql)
set(QTSQL_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtSql)

# Proxy Info -- communication -- Library to retrieve proxy information
set(PROXYINFO_LIBRARY_NAME proxyinfo)

# BlackBerry Identity API -- platform -- BlackBerry Identity API
set(BBID_LIBRARY_NAME Bbid)

# Slogger 2 -- utilities -- Client library for system logging via slogger2 service
set(SLOG2_LIBRARY_NAME slog2)

# Camera API -- multimedia -- Access the device's camera.
set(CAMAPI_LIBRARY_NAME camapi)

# BlackBerry Cascades Utilities -- utilities -- N/A
set(BBUTILITY_LIBRARY_NAME bbutility)

# SB OpenSSL Engine -- security -- SB OpenSSL Engine
set(SBENGINE_LIBRARY_NAME sbengine)
set(SBENGINE_INCLUDE_DIR ${QNX_TARGET}/usr/include/sbengine)

# SQLite 3 -- data -- The SQLite version 3 embedded database engine.
set(SQLITE3_LIBRARY_NAME sqlite3)

# Gettext -- utilities -- The Gettext string externalization library.
set(INTL_LIBRARY_NAME intl)

# Location Manager -- device -- Library for accessing Location Manager
set(LOCATION_MANAGER_LIBRARY_NAME location_manager)

# Scoreloop -- monetization -- Scoreloop API for leaderboards and social interactions in games.
set(SCORELOOPCORE_LIBRARY_NAME scoreloopcore)
set(SCORELOOPCORE_INCLUDE_DIR ${QNX_TARGET}/usr/include/scoreloop)

# Liquid Graphics Monitor (lgmon) -- utilities -- Tool used to measure UI lag and dropped frames in applications
set(LGMON_LIBRARY_NAME lgmon)

# BlackBerry Wi-Fi -- communication -- Provides Wi-Fi services for third party development
set(WIFI_LIBRARY_NAME wifi)
set(WIFI_INCLUDE_DIR ${QNX_TARGET}/usr/include/wifi)

# Qt Core -- platform -- Central dependency for all Qt libraries, contains core non-GUI functionality.
set(QTCORE_LIBRARY_NAME QtCore)
set(QTCORE_INCLUDE_DIR ${QNX_TARGET}/usr/include/qt4/QtCore)

# Context -- utilities -- Instrumentation Library for Context Collection
set(CONTEXT_LIBRARY_NAME context)
