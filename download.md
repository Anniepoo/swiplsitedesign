# About downloading SWI-Prolog

## Dimensions

  - Stability: stable, devel, daily, GIT
  - Platform:  Win32, Win64, MacOSX, Linux, Other
  - Distro:    Binary, TarBall, GIT

## Assorted info

  - Source:
    - OS: Linux: easy, MacOSX: moderate, Windows: hard (only cross-compilation)
    - Ensure to build it all
      - Describe some tests to run and what is wrong if they fail.
    - GIT:
      - Setting up first installation
      - Upgrade
  - Binary:
    - Windows:
      - file name extension to choose
      - Use of swipl-win.exe
    - MacOS:
      - Binary compilation pitfalls
      - Use of SWI-Prolog.app
      - add command line tools to $PATH
    - Ubuntu (no download)
      - Configure PPA (easy)
  - 32/64
    - Create wiki page based on manual (outdated).  These days:
      use 64-bit if possible unless some specific situations:
      - < 2Gb memory
      - < 4Gb and require a lot of program/RDF space and
        not much stack
  - Stability
    - Student --> stable
    - Research (depends)
    - production (depends)

## Deciding by goal

  - Want to run basic Prolog (student, exploring)
    - Get binary/PPA for your platform
  - Want to run some application
    - Get information from the developers
  - Depend on HTTP, Web services, RDF (ClioPatria), etc.
    - Get the devel version
  - Want to cooperatie in development OR Heavy user
    - Get the GIT source
      - Don't run Windows or setup Ubuntu cross building
      - Use Linux with standard tools (install dependencies)
      - Use MacOS with Xcode, XQuartz and Macports or Homebrew

## Proposal

Multi-dimensional radio button. The dimension labels are clickable,
providing a popup with background info. The bottom area consists of
three links and a text that changes with the selections made. Greying is
based on a JavaScript routine configured based on rules and data from
the server.  The text is downloaded by AJAX calls.

The initial selection is (Stable, Platform from browser or not filled
in, Type depending on platform (or not filled in) and Usage: Study.
[reset] clears the whole menu, making all options open.  Examples:

  - Windows browser:
    - Stable, Win64 (32 if browser is), Binary, Study.
    - Download buttons enabled.
  - Ubuntu user
    - Stable, Ubuntu, Linux packahe, Study
    - Only docs and license enabled
    - Text shows instructions for adding the PPA
  - MacOS user
    - Stable, MacOSX, Binary, Study
    - Download buttons enabled.
    - Text as below.
  - Unknown browser
    - Stable, Study selected
    - Download buttons disabled.


================================================================
			Download SWI-Prolog

  Stability   Platform	     Type	      Usage
  * Stable    * Win32	     * Binary	      * Study
  * Devel     * Win64	     * Linux package  * Run external application
  * Daily     * MacOSX	     * Source	      * Web services
  * GIT	      * Ubuntu	     * GIT	      * Databases
	      * Other Linux		      * R&D
	      * Other			      * ...

  [reset]


	Download	Documentation	License (link)

[ text below, this is if the user selected MacOSX and Binary ]

The MacOSX binary is a disk image holding a relocatable app.

  * Installation
  SWI-Prolog can be executed from the disk image, be dragged into
  your personal app folder or the system app folder.

  * MacOSX versions supported
  The command line tools run on MacOS 10.6 or later. The app
  requires MacOS 10.7 or later. The graphical development tools
  require XQuartz 2.7.15.

  * Post installation
  To be able to run the command line tools, add the following to
  your .profile: ...

  Further information about using SWI-Prolog on MacOSX (link)
