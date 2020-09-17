TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        *.cpp

# SFML

# GNU/Linux
unix:!macx {
  LIBS += -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
}

# Windows
win32{
  INCLUDEPATH += C:/sfml/include
  LIBS += -LC:/sfml/lib

  #Audio Related Libs
  LIBS += -lsfml-audio-d
  LIBS += -lopenal32              #Dependency

  #SFML-Graphics Libs
  LIBS += -lsfml-graphics-d
  LIBS += -lfreetype              #Dependency

  #SFML-Window Libs
  LIBS += -lsfml-window-d
  LIBS += -lopengl32              #Dependency
  LIBS += -lgdi32                 #Dependency

  #SFML-System Libs
  LIBS += -lsfml-system-d
  LIBS += -lwinmm                 #Dependency
}
