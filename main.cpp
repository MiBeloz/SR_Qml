#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

#define SR_VERSION_MAJOR "3"
#define SR_VERSION_MINOR "0"
#define SR_VERSION_MICRO "0"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QGuiApplication::setApplicationName("Scorpion Resume");
    QGuiApplication::setApplicationVersion(SR_VERSION_MAJOR + QString(".") + SR_VERSION_MINOR + QString(".") + SR_VERSION_MICRO);
    QGuiApplication::setWindowIcon(QIcon(":/qt/qml/SR_Qml/icons/app_icon.ico"));

    QQmlApplicationEngine engine;
    engine.loadFromModule("SR_Qml", "Main");
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
