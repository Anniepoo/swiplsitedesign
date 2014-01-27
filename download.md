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
