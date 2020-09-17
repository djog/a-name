TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        *.cpp

win32{
  INCLUDEPATH += C:/sfml/include
  LIBS += -LC:/sfml/lib
  CONFIG(release, debug|release):
  {
    #Audio Related Libs
    LIBS += -lsfml-audio
    LIBS += -lopenal32              #Dependency
    #SFML-Graphics Libs
    LIBS += -lsfml-graphics
    LIBS += -lfreetype              #Dependency

    #SFML-Window Libs
    LIBS += -lsfml-window
    LIBS += -lopengl32              #Dependency
    LIBS += -lgdi32                 #Dependency

    #SFML-System Libs
    LIBS += -lsfml-system
    LIBS += -lwinmm                 #Dependency
  }

  #Debug Configuration
  CONFIG(debug, debug|release):
  {
    #Audio Related Libs
    LIBS += -lsfml-audio-d
    LIBS += -lopenal32              #Dependency

    #SFML-Graphics Libs
    LIBS += -lsfml-graphics-d
    LIBS += -lfreetype              #Dependency
    #LIBS += -ljpeg                  #Dependency


    #SFML-Window Libs
    LIBS += -lsfml-window-d
    LIBS += -lopengl32              #Dependency
    LIBS += -lgdi32                 #Dependency

    #SFML-System Libs
    LIBS += -lsfml-system-d
    LIBS += -lwinmm                 #Dependency
  }
}


