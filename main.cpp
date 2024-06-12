#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QGuiApplication::setApplicationName("Scorpion Resume");
    //QGuiApplication::setApplicationVersion(QT_VERSION_STR);
    QGuiApplication::setWindowIcon(QIcon(":/qt/qml/SR_Qml/icons/app_icon.ico"));

    QQmlApplicationEngine engine;
    engine.loadFromModule("SR_Qml", "Main");
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
