#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include "Networking/networking.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    Networking networking;

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/RefereeBox/main.qml"));
    viewer.showExpanded();



    return app->exec();
}
