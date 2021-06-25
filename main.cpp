#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    QQuickView *view = new QQuickView;
    view->setSource(QUrl("qrc:/qml/Respirator.qml"));
    view->show();

    int result = app.exec();
    return result;
}
